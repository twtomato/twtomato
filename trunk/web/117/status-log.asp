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
<title>[<% ident(); %>] 系統狀態：日誌紀錄檔</title>
<link rel='stylesheet' type='text/css' href='tomato.css'>
<link rel='stylesheet' type='text/css' href='color.css'>
<script type='text/javascript' src='tomato.js'></script>

<!-- / / / -->

<script type='text/javascript' src='debug.js'></script>

<script type='text/javascript'>

//	<% nvram("log_file"); %>

function find()
{
	var s = E('find-text').value;
	if (s.length) document.location = 'logs/view.cgi?find=' + escapeCGI(s) + '&_http_id=' + nvram.http_id;
}

function init()
{
	var e = E('find-text');
	if (e) e.onkeypress = function(ev) {
		if (checkEvent(ev).keyCode == 13) find();
	}	
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

<div id='logging'>
	<div class='section-title'>日誌紀錄檔</div>
	<div class='section'>
		<a href="logs/view.cgi?which=25&_http_id=<% nv(http_id) %>">查看最後  25 行</a><br>
		<a href="logs/view.cgi?which=50&_http_id=<% nv(http_id) %>">查看最後  50 行</a><br>
		<a href="logs/view.cgi?which=100&_http_id=<% nv(http_id) %>">查看最後 100 行</a><br>
		<a href="logs/view.cgi?which=all&_http_id=<% nv(http_id) %>">全部顯示</a><br><br>
		<a href="logs/syslog.txt?_http_id=<% nv(http_id) %>">下載日誌紀錄檔</a><br><br>
		<input type="text" maxsize=32 size=33 id="find-text"> <input type="button" value="搜尋" onclick="find()"><br>
		<br><br>
		&raquo; <a href="admin-log.asp">日誌紀錄管理</a><br><br>
	</div>
</div>

<script type='text/javascript'>
if (nvram.log_file != '1') {
	W('<div class="note-disabled">內部日誌紀錄關閉.</b><br><br><a href="admin-log.asp">開啟 &raquo;</a></div>');
	E('logging').style.display = 'none';
}
</script>

<!-- / / / -->

</td></tr>
<tr><td id='footer' colspan=2>&nbsp;</td></tr>
</table>
</form>
</body>
</html>
