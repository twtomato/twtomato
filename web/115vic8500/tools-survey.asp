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
<title>[<% ident(); %>] 無線網路勘查</title>
<link rel='stylesheet' type='text/css' href='tomato.css'>
<link rel='stylesheet' type='text/css' href='color.css'>
<script type='text/javascript' src='tomato.js'></script>

<!-- / / / -->
<style type='text/css'>
#survey-grid .brate {
	color: blue;
}
#survey-grid .grate {
	color: green;
}
#survey-grid .co4,
#survey-grid .co5 {
	text-align: right;
}
#survey-grid .co6,
#survey-grid .co7 {
	text-align: center;
}
#survey-msg {
	border: 1px dashed #f0f0f0;
	background: #fefefe;
	padding: 5px;
	width: 300px;
	position: absolute;
}
#survey-controls {
	text-align: right;
}
#expire-time {
	width: 120px;
}
</style>

<script type='text/javascript' src='debug.js'></script>

<script type='text/javascript'>
//	<% nvram(''); %>	// http_id

var wlscandata = [];
var entries = [];
var dayOfWeek = ['週日','週一','週二','週三','週四','週五','週六'];

Date.prototype.toWHMS = function() {
	return dayOfWeek[this.getDay()] + ' ' + this.getHours() + ':' + this.getMinutes().pad(2)+ ':' + this.getSeconds().pad(2);
}

var sg = new TomatoGrid();

sg.sortCompare = function(a, b) {
	var col = this.sortColumn;
	var da = a.getRowData();
	var db = b.getRowData();
	var r;

	switch (col) {
	case 0:
		r = -cmpDate(da.lastSeen, db.lastSeen);
		break;
	case 3:
		r = cmpInt(da.rssi, db.rssi);
		break;
	case 4:
		r = cmpInt(da.noise, db.noise);
		break;
	case 5:
		r = cmpInt(da.qual, db.qual);
		break;
	case 6:
		r = cmpInt(da.channel, db.channel);
		break;
	default:
		r = cmpText(a.cells[col].innerHTML, b.cells[col].innerHTML);
	}
	if (r == 0) r = cmpText(da.bssid, db.bssid);

	return this.sortAscending ? r : -r;
}

sg.rateSorter = function(a, b)
{
	if (a < b) return -1;
	if (a > b) return 1;
	return 0;
}

sg.populate = function()
{
	var caps = ['infra', 'adhoc', 'poll', 'pollreq', 'wep', 'shortpre', 'pbcc', 'agility', 'X', 'Y', 'shortslot'];
	var added = 0;
	var removed = 0;
	var i, j, k, t, e, s;

	if ((wlscandata.length == 1) && (!wlscandata[0][0])) {
		setMsg("error: " + wlscandata[0][1]);
		return;
	}
	
	for (i = 0; i < wlscandata.length; ++i) {
		s = wlscandata[i];
		e = null;

		for (j = 0; j < entries.length; ++j) {
			if (entries[j].bssid == s[0]) {
				e = entries[j];
				break;
			}
		}
		if (!e) {
			++added;
			e = {};
			e.firstSeen = new Date();
			entries.push(e);
		}
		e.lastSeen = new Date();
		e.bssid = s[0];
		e.ssid = s[1];
		e.channel = s[2];
		e.rssi = s[4];
		e.noise = s[5];
		e.saw = 1;

		t = '';
		k = 0;
		for (j = 0; j < caps.length; ++j) {
			if ((s[3] & (1 << j)) && (caps[j])) {
				k += caps[j].length;
				if (k > 12) {
					t += '<br>';
					k = caps[j].length;
				}
				else t += ' ';
				t += caps[j];
			}
		}
		e.cap = t;

		t = '';
		var rb = [];
		var rg = [];
		for (j = 0; j < s[6].length; ++j) {
			var x = s[6][j];
			var r = (x & 0x7F) / 2;
			if (x & 0x80) rb.push(r);
				else rg.push(r);
		}
		rb.sort(this.rateSorter);
		rg.sort(this.rateSorter);

		t = '';
		if (rb.length) t = '<span class="brate">' + rb.join(',') + '</span>';
		if (rg.length) {
			if (rb.length) t += '<br>';
			t +='<span class="grate">' + rg.join(',') + '</span>';
		}
		e.rates = t;
	}

	t = E('expire-time').value;
	if (t > 0) {
		var cut = (new Date()).getTime() - (t * 1000);
		for (i = 0; i < entries.length; ) {
			if (entries[i].lastSeen.getTime() < cut) {
				entries.splice(i, 1);
				++removed;
			}
			else ++i;
		}
	}

	for (i = 0; i < entries.length; ++i) {
		var seen, m, mac;
		
		e = entries[i];

		if (!e.saw) {
			e.rssi = MAX(e.rssi - 5, -101);
			e.noise = MAX(e.noise - 2, -101);
			if ((e.rssi == -101) || (e.noise == -101))
				e.noise = e.rssi = -999;
		}
		e.saw = 0;

		e.qual = MAX(e.rssi - e.noise, 0);
		
		seen = e.lastSeen.toWHMS();
		if (useAjax()) {
			m = Math.floor(((new Date()).getTime() - e.firstSeen.getTime()) / 60000);
			if (m <= 10) seen += '<br> <b><small>新 (' + -m + 'm)</small></b>';
		}

		mac = e.bssid;
		if (mac.match(/^(..):(..):(..)/))
			mac = '<a href="http://standards.ieee.org/cgi-bin/ouisearch?' + RegExp.$1 + '-' + RegExp.$2 + '-' + RegExp.$3 + '" target="_new" title="OUI search">' + mac + '</a>';

		sg.insert(-1, e, [
			'<small>' + seen + '</small>',
			'' + e.ssid,
			mac,
			(e.rssi == -999) ? '' : (e.rssi + ' <small>dBm</small>'),
			(e.noise == -999) ? '' : (e.noise + ' <small>dBm</small>'),
			'<small>' + e.qual + '</small> <img src="bar' + MIN(MAX(Math.floor(e.qual / 10), 1), 6) + '.gif">',
			'' + e.channel,
			'' + e.cap,
			'' + e.rates], false);
	}

	s = '';
	if (useAjax()) s = added + ' 個新增, ' + removed + ' 個移除, ';
	s += entries.length + ' 個AP可用.';

	s += '<br><br><small>更新於: ' + (new Date()).toWHMS() + '</small>';
	setMsg(s);

	wlscandata = [];
}

sg.setup = function() {
	this.init('survey-grid', 'sort');
	this.headerSet(['發現時間', '無線名稱 SSID', '無線 MAC 位址', 'RSSI &nbsp; &nbsp; ', '雜訊 &nbsp; &nbsp; ', '品質', 'Ch', 'Capabilities', '速率']);
	this.populate();
	this.sort(0);
}


function setMsg(msg)
{
	E('survey-msg').innerHTML = msg;
}


var ref = new TomatoRefresh('update.cgi', 'exec=wlscan', 0, 'tools_survey_refresh');

ref.refresh = function(text)
{
	try {
		eval(text);
	}
	catch (ex) {
		return;
	}
	sg.removeAllData();
	sg.populate();
	sg.resort();
}

function earlyInit()
{
	if (!useAjax()) E('expire-time').style.visibility = 'hidden';
	sg.setup();
}

function init()
{
	sg.recolor();
	ref.initPage();
}
</script>
</head>
<body onload='init()'>
<form action='javascript:{}'>
<table id='container' cellspacing=0>
<tr><td colspan=2 id='header'>
	<div class='title'>Tomato</div>
	<div class='version'>(繁體/正體)中文版 <% version(); %></div>
</td></tr>
<tr id='body'><td id='navi'><script type='text/javascript'>navi()</script></td>
<td id='content'>
<div id='ident'><% ident(); %></div>

<!-- / / / -->

<div class='section-title'>無線網路勘查</div>
<div class='section'>
	<table id='survey-grid' class='tomato-grid' cellspacing=0></table>
	<div id='survey-msg'></div>
	<div id='survey-controls'>
		<img src="spin.gif" id="refresh-spinner">
		<script type='text/javascript'>
		genStdTimeList('expire-time', '自動停止', 0);
		genStdTimeList('refresh-time', '自動更新', 0);
		</script>
		<input type="button" value="重新整理" onclick="ref.toggle()" id="refresh-button">
	</div>

	<br><br><br><br>
	<script type='text/javascript'>
	if ('<% wlclient(); %>' == '0') {
		document.write('<small>請注意：使用此工具,無線用戶端連接到此路由器可能會中斷.</small>');
	}
	</script>
</div>

<!-- / / / -->

</td></tr>
<tr><td id='footer' colspan=2>&nbsp;</td></tr>
</table>
</form>
<script type='text/javascript'>earlyInit();</script>
</body>
</html>

