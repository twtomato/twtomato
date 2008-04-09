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
<title>[<% ident(); %>] 定時重開機/連線</title>
<link rel='stylesheet' type='text/css' href='tomato.css'>
<link rel='stylesheet' type='text/css' href='color.css'>
<script type='text/javascript' src='tomato.js'></script>

<!-- / / / -->

<script type='text/javascript' src='debug.js'></script>

<script type='text/javascript'>

//	<% nvram("sch_rboot,sch_rcon"); %>

var dowNames = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
var dowLow = ['sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat'];

tm = [];
for (i = 0; i < 1440; i += 15) {
	tm.push([i, timeString(i)]);
}

/* REMOVE-BEGIN

sch_* = en,time,days

REMOVE-END */

function makeSched(key)
{
	var s, v, w;
	
	s = nvram['sch_' + key] || '';
	if ((v = s.match(/^(0|1),(\d+),(\d+)$/)) == null) {
		v = ['', 0, 0, 0];
	}
	w = v[3] * 1;
	if (w <= 0) w = 0xFF;
	
	key = key + '_';
	createFieldTable('', [
		{ title: '開啟', name: key + 'enabled', type: 'checkbox', value: v[1] == '1' },
		{ title: '時間', multi: [
			{ name: key + 'time', type: 'select', options: tm, value: v[2] } ] },
		{ title: '週幾', multi: [
			{ name: key + 'sun', type: 'checkbox', suffix: ' 星期日 &nbsp; ', value: w & 1 },
			{ name: key + 'mon', type: 'checkbox', suffix: ' 星期一 &nbsp; ', value: w & 2 },
			{ name: key + 'tue', type: 'checkbox', suffix: ' 星期二 &nbsp; ', value: w & 4 },
			{ name: key + 'wed', type: 'checkbox', suffix: ' 星期三 &nbsp; ', value: w & 8 },
			{ name: key + 'thu', type: 'checkbox', suffix: ' 星期四 &nbsp; ', value: w & 16 },
			{ name: key + 'fri', type: 'checkbox', suffix: ' 星期五 &nbsp; ', value: w & 32 },
			{ name: key + 'sat', type: 'checkbox', suffix: ' 星期六 &nbsp; ', value: w & 64 },
			{ name: key + 'everyday', type: 'checkbox', suffix: ' 每日 &nbsp; ', value: (w & 0x7F) == 0x7F } ] }
	]);
}

function verifySched(focused, key)
{
	var e, f, i, n;
	
	key = '_' + key + '_';

	e = E(key + 'everyday');

	if (E(key + 'enabled').checked) {
		e.disabled = 0;
		E(key + 'time').disabled = 0;
		if (focused == e) {
			for (i = 0; i < 7; ++i) {
				f = E(key + dowLow[i]);
				f.disabled = 0;
				f.checked = e.checked;
			}
		}
		else {
			n = 0;
			for (i = 0; i < 7; ++i) {
				f = E(key + dowLow[i]);
				f.disabled = 0;
				if (f.checked) ++n;
			}
			e.checked = (n == 7);
		}
	}
	else {
		e.disabled = 1;
		E(key + 'time').disabled = 1;
		for (i = 0; i < 7; ++i) {
			E(key + dowLow[i]).disabled = 1;
		}
	}
	
	return 1;
}

function verifyFields(focused, quiet)
{
	return verifySched(focused, 'rboot') && verifySched(focused, 'rcon');
}

function saveSched(fom, key)
{
	var s, i, n, k;
	
	k = '_' + key + '_';

	s = E(k + 'enabled').checked ? '1' : '0';
	s += ',' + E(k + 'time').value;
	
	n = 0;
	for (i = 0; i < 7; ++i) {
		if (E(k + dowLow[i]).checked) n |= (1 << i);
	}
	if (n == 0) {
		n = 0x7F;
		e = E(k + 'everyday');
		e.checked = 1;
		verifySched(e, key);
	}
	
	fom['sch_' + key].value = s + ',' + n;
}

function save()
{
	var fom;
	
	if (!verifyFields(null, false)) return;
	
	fom = E('_fom');
	saveSched(fom, 'rboot');
	saveSched(fom, 'rcon');
	
	form.submit(fom, 1);
}

function init()
{
	verifyFields(null, 1);
}
</script>
</head>
<body onload='init()'>
<form name='_fom' id='_fom' method='post' action='tomato.cgi'>
<table id='container' cellspacing=0>
<tr><td colspan=2 id='header'>
	<div class='title'>Tomato</div>
	<div class='version'>(繁體/正體)中文版 <% version() %></div>
</td></tr>
<tr id='body'><td id='navi'><script type='text/javascript'>navi()</script></td>
<td id='content'>
<div id='ident'><% ident(); %></div>

<!-- / / / -->

<input type='hidden' name='_nextpage' value='admin-sched.asp'>
<input type='hidden' name='_service' value='sched-restart'>
<input type='hidden' name='sch_rboot' value=''>
<input type='hidden' name='sch_rcon' value=''>

<div class='section-title'>定時重新啟動</div>
<div class='section'>
<script type='text/javascript'>
makeSched('rboot');
</script>
</div>

<div class='section-title'>定時重新連線</div>
<div class='section'>
<script type='text/javascript'>
makeSched('rcon');
</script>
</div>

<!-- / / / -->

</td></tr>
<tr><td id='footer' colspan=2>
	<span id='footer-msg'></span>
	<input type='button' value='儲存' id='save-button' onclick='save()'>
	<input type='button' value='取消' id='cancel-button' onclick='javascript:reloadPage();'>
</td></tr>
</table>
<br><br>
</form>
</body>
</html>
