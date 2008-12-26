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
<title>[<% ident(); %>] 診斷工具：路由追蹤</title>
<link rel='stylesheet' type='text/css' href='tomato.css'>
<link rel='stylesheet' type='text/css' href='color.css'>
<script type='text/javascript' src='tomato.js'></script>

<!-- / / / -->
<style type='text/css'>
#ttr-grid .co1, #ttr-grid .co3 {
	text-align: right;
}
#ttr-grid .co1 {
	width: 30px;
}
#ttr-grid .co2 {
	width: 410px;
}
#ttr-grid .co4, #ttr-grid .co5, #ttr-grid .co6 {
	text-align: right;
	width: 70px;
}
#ttr-grid .header .co1 {
	text-align: left;
}
</style>

<script type='text/javascript' src='debug.js'></script>

<script type='text/javascript'>
//	<% nvram(''); %>	// http_id

var tracedata = '';

var tg = new TomatoGrid();
tg.setup = function() {
	this.init('ttr-grid');
	this.headerSet(['躍點', '位址', '最小 (ms)', '最大 (ms)', '平均 (ms)', '＋/－ (ms)']);
}
tg.populate = function() {
	var seq = 1;
	var buf = tracedata.split('\n');
	var i, j, k;
	var s, f;
	var addr, emsg, min, max, avg;
	var time;
	var last = -1;

	this.removeAllData();
	for (i = 0; i < buf.length; ++i) {
		if (!buf[i].match(/^\s*(\d+)\s+(.+)$/)) continue;
		if (RegExp.$1 != seq) continue;

		s = RegExp.$2;

		if (s.match(/^([\w\.-]+)\s+\(([\d\.]+)\)/)) {
			addr = RegExp.$1;
			if (addr != RegExp.$2) addr += ' (' + RegExp.$2 + ')';
		}
		else addr = '*';

		min = max = avg = '';
		change = '';
		if (time = s.match(/(\d+\.\d+) ms/g)) {		// odd: captures 'ms'
			min = 0xFFFF;
			avg = max = 0;
			k = 0;
			for (j = 0; j < time.length; ++j) {
				f = parseFloat(time[j]);
				if (isNaN(f)) continue;
				if (f < min) min = f;
				if (f > max) max = f;
				avg += f;
				++k
			}
			if (k) {
				avg /= k;
				if (last >= 0) {
					change = avg - last;
					change = change.toFixed(2);
				}
				last = avg;
				min = min.toFixed(2);
				max = max.toFixed(2);
				avg = avg.toFixed(2);
			}
			else {
				min = max = avg = '';
				last = -1;
			}
		}
		else last = -1;

		if (s.match(/ (![<>\w+-]+)/)) emsg = RegExp.$1;
			else emsg = null;

		this.insertData(-1, [seq, addr, min, max, avg, change])
		++seq;
	}

	E('debug').value = tracedata;
	tracedata = '';
	spin(0);
}

function verifyFields(focused, quiet)
{
	var s;
	var e;

	e = E('_f_addr');
	s = e.value.trim();
	if (!s.match(/^[\w\.-]+$/)) {
		ferror.set(e, '不正確的位址', quiet);
		return 0;
	}
	ferror.clear(e);

	return v_range('_f_hops', quiet, 2, 40) && v_range('_f_wait', quiet, 2, 10);
}

var tracer = null;

function spin(x)
{
	E('traceb').disabled = x;
	E('_f_addr').disabled = x;
	E('_f_hops').disabled = x;
	E('_f_wait').disabled = x;
	E('wait').style.visibility = x ? 'visible' : 'hidden';
	if (!x) tracer = null;
}

function trace()
{
	// Opera 8 sometimes sends 2 clicks
	if (tracer) return;

	if (!verifyFields(null, 0)) return;
	spin(1);
	E('trace-error').style.visibility = 'hidden';

	tracer = new XmlHttp();
	tracer.onCompleted = function(text, xml) {
		eval(text);
		tg.populate();
	}
	tracer.onError = function(x) {
		spin(0);
		E('trace-error').innerHTML = 'ERROR: ' + E('_f_addr').value + ' - ' + x;
		E('trace-error').style.visibility = 'visible';
	}

	var addr = E('_f_addr').value;
	var hops = E('_f_hops').value;
	var wait = E('_f_wait').value;
	tracer.post('trace.cgi', 'addr=' + addr + '&hops=' + hops + '&wait=' + wait);

	cookie.set('traceaddr', addr);
	cookie.set('tracehops', hops);
	cookie.set('tracewait', wait);
}

function init()
{
	var s;

	if ((s = cookie.get('traceaddr')) != null) E('_f_addr').value = s;
	if ((s = cookie.get('tracehops')) != null) E('_f_hops').value = s;
	if ((s = cookie.get('tracewait')) != null) E('_f_wait').value = s;

	E('_f_addr').onkeypress = function(ev) { if (checkEvent(ev).keyCode == 13) trace(); }
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

<div class='section-title'>路由追蹤</div>
<div class='section'>
<script type='text/javascript'>
createFieldTable('', [
	{ title: '位址', name: 'f_addr', type: 'text', maxlen: 64, size: 32, value: '', suffix: ' <input type="button" value="開始追蹤" onclick="trace()" id="traceb">' },
	{ title: '最大躍點數Hops', name: 'f_hops', type: 'text', maxlen: 2, size: 4, value: '20' },
	{ title: '最大等待時間', name: 'f_wait', type: 'text', maxlen: 2, size: 4, value: '3', suffix: ' <small>(每跳秒數)</small>' }
]);
</script>
</div>

<div style='visibility:hidden' id='trace-error'></div>

<div style='visibility:hidden;text-align:right' id='wait'>請稍候... <img src='spin.gif' style='vertical-align:top'></div>

<table id='ttr-grid' class='tomato-grid' cellspacing=1></table>

<div style='height:10px;' onclick='javascript:E("debug").style.display=""'></div>
<textarea id='debug' style='width:99%;height:300px;display:none'></textarea>

<!-- / / / -->

</td></tr>
<tr><td id='footer' colspan=2>&nbsp;</td></tr>
</table>
</form>
<script type='text/javascript'>tg.setup();</script>
</body>
</html>
