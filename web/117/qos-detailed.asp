<!DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.0//EN'>
<!--
	Tomato GUI
	Copyright (C) 2006-2008 Jonathan Zarate
	http://www.polarcloud.com/tomato/

	For use with Tomato Firmware only.
	No part of this file may be used without permission.
-->
<html>
<head>
<meta http-equiv='content-type' content='text/html;charset=utf-8'>
<meta name='robots' content='noindex,nofollow'>
<title>[<% ident(); %>] QoS: 連線詳細內容</title>
<link rel='stylesheet' type='text/css' href='tomato.css'>
<link rel='stylesheet' type='text/css' href='color.css'>
<script type='text/javascript' src='tomato.js'></script>

<!-- / / / -->
<script type='text/javascript' src='debug.js'></script>
<script type='text/javascript' src='protocols.js'></script>

<script type='text/javascript'>
//	<% nvram(''); %>	// http_id

var abc = ['未分類', '最高', '高', '中', '低', '最低', 'Ａ類','Ｂ類','Ｃ類','Ｄ類','Ｅ類'];
var colors = ['F08080','E6E6FA','0066CC','8FBC8F','FAFAD2','ADD8E6','9ACD32','E0FFFF','90EE90','FF9933','FFF0F5'];

if ((viewClass = '<% cgi_get("class"); %>') == '') {
	viewClass = -1;
}
else if ((isNaN(viewClass *= 1)) || (viewClass < 0) || (viewClass > 10)) {
	viewClass = 0;
}

var queue = [];
var xob = null;
var cache = [];
var lock = 0;

function resolve()
{
	if ((queue.length == 0) || (xob)) return;

	xob = new XmlHttp();
	xob.onCompleted = function(text, xml) {
		eval(text);
		for (var i = 0; i < resolve_data.length; ++i) {
			var r = resolve_data[i];
			if (r[1] == '') r[1] = r[0];
			cache[r[0]] = r[1];
			if (lock == 0) grid.setName(r[0], r[1]);
		}
		if (queue.length == 0) {
			if ((lock == 0) && (resolveCB) && (grid.sortColumn == 3)) grid.resort();
		}
		else setTimeout(resolve, 500);				
		xob = null;
	}
	xob.onError = function(ex) {
		xob = null;
	}

	xob.post('resolve.cgi', 'ip=' + queue.splice(0, 20).join(','));
}

var resolveCB = 0;

function resolveChanged()
{
	var b;
	
	b = E('resolve').checked ? 1 : 0;
	if (b != resolveCB) {
		resolveCB = b;
		cookie.set('qos-resolve', b);
		if (b) grid.resolveAll();
	}
}

var grid = new TomatoGrid();

grid.sortCompare = function(a, b) {
	var obj = TGO(a);
	var col = obj.sortColumn;
	var da = a.getRowData();
	var db = b.getRowData();
	var r;

	switch (col) {
	case 2:
	case 4:
		r = cmpInt(da[col], db[col]);
		break;
	case 1:
	case 3:
		var a = fixIP(da[col]);
		var b = fixIP(db[col]);
		if ((a != null) && (b != null)) {
			r = aton(a) - aton(b);
			break;
		}
		// fall
	default:
		r = cmpText(da[col], db[col]);
		break;
	}
	return obj.sortAscending ? r : -r;
}

grid.onClick = function(cell) {
	var row = PR(cell);
	var ip = row.getRowData()[3];
	if (this.lastClicked != row) {
		this.lastClicked = row;
		if (ip.indexOf('<') == -1) {
			queue.push(ip);
			row.style.cursor = 'wait';
			resolve();
		}
	}
	else {
		this.resolveAll();
	}
}

grid.resolveAll = function()
{
	var i, ip, row, q;

	q = [];
	for (i = 1; i < this.tb.rows.length; ++i) {
		row = this.tb.rows[i];
		ip = row.getRowData()[3];
		if (ip.indexOf('<') == -1) {
			if (!q[ip]) {
				q[ip] = 1;
				queue.push(ip);
			}
			row.style.cursor = 'wait';
		}
	}
	q = null;
	resolve();
}

grid.setName = function(ip, name) {
	var i, row, data;

	for (i = this.tb.rows.length - 1; i > 0; --i) {
		row = this.tb.rows[i];
		data = row.getRowData();
		if (data[3] == ip) {
			data[3] = name + ' <small>(' + ip + ')</small>';
			row.setRowData(data);
			row.cells[3].innerHTML = data[3];
			row.style.cursor = 'default';
		}
	}
}

grid.setup = function() {
	this.init('grid', 'sort');
	this.headerSet(['協定', '來源', '來源埠', '目的地', '目的埠', '類型']);
}

var ref = new TomatoRefresh('update.cgi', '', 0, 'qos_detailed');

ref.refresh = function(text)
{
	var i, b, d;

	++lock;
	
	try {
		ctdump = [];
		eval(text);
	}
	catch (ex) {
		ctdump = [];
	}	

	grid.lastClicked = null;
	grid.removeAllData();

	var c = [];
	var q = [];
	var cursor;
	var ip;
	
	for (i = 0; i < ctdump.length; ++i) {
		b = ctdump[i];
		ip = b[3];
		if (cache[ip] != null) {
			c[ip] = cache[ip];
			b[3] = cache[ip] + ' <small>(' + ip + ')</small>';		
			cursor = 'default';
		}
		else {
			if (resolveCB) {
				if (!q[ip]) {
					q[ip] = 1;
					queue.push(ip);
				}
				cursor = 'wait';
			}
			else cursor = null;			
		}
		d = [protocols[b[0]] || b[0], b[2], b[4], b[3], b[5], abc[b[6]] || ('' + b[6])];
		var row = grid.insert(-1, d, d, false);
		if (cursor) row.style.cursor = cursor;
	}
	cache = c;
	c = null;
	q = null;

	grid.resort();
	setTimeout(function() { E('loading').style.visibility = 'hidden'; }, 100);
	
	--lock;

	if (resolveCB) resolve();
}

function init()
{
	var c;
	
	if (((c = cookie.get('qos-resolve')) != null) && (c == '1')) {
		E('resolve').checked = resolveCB = 1;
	}
	
	if (viewClass != -1) E('stitle').innerHTML = '分等連線內容 : ' + abc[viewClass];
	grid.setup();
	ref.postData = 'exec=ctdump&arg0=' + viewClass;
	ref.initPage(-250);
}
</script>
</head>
<body onload='init()'>
<form id='_fom' action='javascript:{}'>
<table id='container' cellspacing=0>
<tr><td colspan=2 id='header'>
	<div class='title'>蕃茄(Tomato)</div>
	<div class='version'>(繁體/正體)中文版 <% version(); %></div>
</td></tr>
<tr id='body'><td id='navi'><script type='text/javascript'>navi()</script></td>
<td id='content'>
<div id='ident'><% ident(); %></div>

<!-- / / / -->

<div class='section-title' id='stitle' onclick='document.location="qos-graphs.asp"' style='cursor:pointer'>詳細內容</div>
<div class='section'>
<table id='grid' class='tomato-grid' style="float:left" cellspacing=1></table>
<input type='checkbox' id='resolve' onclick='resolveChanged()' onchange='resolveChanged()'> 自動解析IP
<div id='loading'><br><b>載入中...</b></div>
</div>

<!-- / / / -->

</td></tr>
<tr><td id='footer' colspan=2>
	<script type='text/javascript'>genStdRefresh(1,10,'ref.toggle()');</script>
</td></tr>
</table>
</form>
</body>
</html>
