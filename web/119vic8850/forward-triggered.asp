﻿<!DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.0//EN'>
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
<title>[<% ident(); %>] 通訊埠轉送: 觸發式轉送</title>
<link rel='stylesheet' type='text/css' href='tomato.css'>
<link rel='stylesheet' type='text/css' href='color.css'>
<script type='text/javascript' src='tomato.js'></script>

<!-- / / / -->
<style type='text/css'>
#tg-grid .co1 {
	width: 5%;
	text-align: center;
}
#tg-grid .co2 {
	width: 10%;
}
#tg-grid .co3 {
	width: 20%;
}
#tg-grid .co4 {
	width: 20%;
}
#tg-grid .co5 {
	width: 45%;
}
</style>

<script type='text/javascript' src='debug.js'></script>

<script type='text/javascript'>

//	<% nvram("trigforward"); %>

var tg = new TomatoGrid();

tg.sortCompare = function(a, b) {
	var col = this.sortColumn;
	var da = a.getRowData();
	var db = b.getRowData();
	var r;

	switch (col) {
	case 2:	// t prt
	case 3:	// f prt
		r = cmpInt(da[col], db[col]);
		break;
	default:
		r = cmpText(da[col], db[col]);
		break;
	}
	
	return this.sortAscending ? r : -r;
}

tg.dataToView = function(data) {
	return [data[0] ? 'On' : '', ['TCP', 'UDP', 'Both'][data[1] - 1], data[2], data[3], data[4]];
}

tg.fieldValuesToData = function(row) {
	var f = fields.getAll(row);
	return [f[0].checked ? 1 : 0, f[1].value, f[2].value, f[3].value, f[4].value];
}

tg.verifyFields = function(row, quiet) {
	var f = fields.getAll(row);
	ferror.clearAll(f);
	if (!v_portrange(f[2], quiet)) return 0;
	if (!v_portrange(f[3], quiet)) return 0;
	f[4].value = f[4].value.replace(/>/g, '_');
	return 1;
}

tg.resetNewEditor = function() {
	var f = fields.getAll(this.newEditor);
	f[0].checked = 1;
	f[1].selectedIndex = 0;
	f[2].value = '';
	f[3].value = '';
	f[4].value = '';
	ferror.clearAll(f);
}

tg.setup = function() {
	this.init('tg-grid', 'sort', 50, [
		{ type: 'checkbox' },
		{ type: 'select', options: [[1, 'TCP'],[2, 'UDP'],[3,'Both']] },
		{ type: 'text', maxlen: 16 },
		{ type: 'text', maxlen: 16 },
		{ type: 'text', maxlen: 32 }]);
	this.headerSet(['開啟', '協定', '觸發通訊埠', '轉送到通訊埠', '敘述']);
	var nv = nvram.trigforward.split('>');
	for (var i = 0; i < nv.length; ++i) {
		var r;
		if (r = nv[i].match(/^(\d)<(\d)<(.+?)<(.+?)<(.*)$/)) {
			r[1] *= 1;
			r[2] *= 1;
			r[3] = r[3].replace(/:/g, '-');
			r[4] = r[4].replace(/:/g, '-');
			tg.insertData(-1, r.slice(1, 6));
		}
	}
	tg.sort(4);
	tg.showNewEditor();
}


function save()
{
	if (tg.isEditing()) return;

	var data = tg.getAllData();
	var s = '';
	for (var i = 0; i < data.length; ++i) {
		data[i][2] = data[i][2].replace(/-/g, ':');
		data[i][3] = data[i][3].replace(/-/g, ':');
		s += data[i].join('<') + '>';
	}
	var fom = E('_fom');
	fom.trigforward.value = s;
	form.submit(fom, 1);
}

function init()
{
	tg.recolor();
	tg.resetNewEditor();
}
</script>
</head>
<body onload='init()'>
<form id='_fom' method='post' action='tomato.cgi'>
<table id='container' cellspacing=0>
<tr><td colspan=2 id='header'>
	<div class='title'>Tomato</div>
	<div class='version'>(繁體/正體)中文版 <% version(); %></div>
</td></tr>
<tr id='body'><td id='navi'><script type='text/javascript'>navi()</script></td>
<td id='content'>
<div id='ident'><% ident(); %></div>

<!-- / / / -->

<input type='hidden' name='_nextpage' value='forward.asp'>
<input type='hidden' name='_service' value='firewall-restart'>

<input type='hidden' name='trigforward'>

<div class='section-title'>觸發式通訊埠轉送</div>
<div class='section'>
	<table class='tomato-grid' cellspacing=1 id='tg-grid'></table>
	<script type='text/javascript'>tg.setup();</script>
</div>

<div>
<ul>
<li>使用 "-" 指定通訊埠範圍 (200-300).
<li>一旦偵測到.
<li>觸發程式通訊埠，送往指定內傳通訊埠號的上傳封包便會轉向您的電腦.
<li>例: 巴哈姆特的 BBS 會使用 Port 113 做驗證.<br>
在本例中, 連往 BBS 所用的 Port 為 23, 接收驗證的 Port 為 113, 所使用的通訊協定皆為 TCP.<br>
所以我們要加入一條規則, 在 [協定] 中選則 [TCP]<br>
[觸發通訊埠] 填入 [23]<br>
[轉送到通訊埠] 填入 [113]<br>
最後記得要按 [新增] 與 [儲存] 鈕<br>
<li>開啟的通訊埠若未使用,幾分鐘之後會自動關閉.
</ul>
</div>

<!-- / / / -->

</td></tr>
<tr><td id='footer' colspan=2>
	<span id='footer-msg'></span>
	<input type='button' value='儲存' id='save-button' onclick='save()'>
	<input type='button' value='取消' id='cancel-button' onclick='reloadPage();'>
</td></tr>
</table>
</form>
</body>
</html>
