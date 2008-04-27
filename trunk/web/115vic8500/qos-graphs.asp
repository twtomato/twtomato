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
<title>[<% ident(); %>] 頻寬管理 QoS:圖形分析</title>
<link rel='stylesheet' type='text/css' href='tomato.css'>
<link rel='stylesheet' type='text/css' href='color.css'>
<script type='text/javascript' src='tomato.js'></script>

<!-- / / / -->
<script type='text/javascript' src='debug.js'></script>

<style type='text/css'>
.color {
	width: 25px;
	height: 25px;
}
.title {
	width: 65px;
}
.count {
	width: 55px;
	text-align: right;
}
.pct {
	width:55px;
	text-align: right;
}
.total {
	border-top: 1px dashed #bbb;
	font-weight: bold;
}
</style>

<script type='text/javascript'>
// <% nvram("web_svg,qos_enable"); %>

//<% qrate(); %>

var svgReady = 0;
var abc = ['未分等', '最高等', '高等', '中等', '低等', '最低等', 'Ａ等', 'Ｂ等', 'Ｃ等', 'Ｄ等', 'Ｅ等'];
var colors = [
	'c6e2ff',
	'b0c4de',
	'9ACD32',
	'3cb371',
	'6495ed',
	'8FBC8F',
	'a0522d',
	'deb887',
	'F08080',
	'ffa500',
	'ffd700'
];

function mClick(n)
{
	location.href = 'qos-detailed.asp?class=' + n;
}

function showData()
{
	var i, n, p;
	var ct, rt;
	
	ct = rt = 0;
	for (i = 0; i < 11; ++i) {
		if (!nfmarks[i]) nfmarks[i] = 0;
		ct += nfmarks[i];
		if (!qrates[i]) qrates[i] = 0;
		rt += qrates[i];
	}
	
	for (i = 0; i < 11; ++i) {
		n = nfmarks[i];
		E('ccnt' + i).innerHTML = n;
		if (ct > 0) p = (n / ct) * 100;
			else p = 0;
		E('cpct' + i).innerHTML = p.toFixed(2) + '%';
	}
	E('ccnt-total').innerHTML = ct;

/* REMOVE-BEGIN
	qrates is in bits/s
	1 kbit/s = 1000 bits/s
REMOVE-END */	
	for (i = 1; i < 11; ++i) {
		n = qrates[i];
		E('bcnt' + i).innerHTML = (n / 1000).toFixed(2) + ' <small>kbit/s</small>';
		if (rt > 0) p = (n / rt) * 100;
			else p = 0;
		E('bpct' + i).innerHTML = p.toFixed(2) + '%';
	}
	E('bcnt-total').innerHTML = (rt / 1000).toFixed(2) + ' <small>kbit/s</small>';
}

var ref = new TomatoRefresh('update.cgi', 'exec=qrate', 2, 'qos_graphs');

ref.refresh = function(text)
{
	nfmarks = [];
	qrates = [];
	try {
		eval(text);
	}
	catch (ex) {
		nfmarks = [];
		qrates = [];
	}

	showData();	
	if (svgReady == 1) {
		updateCD(nfmarks);
		updateBD(qrates);
	}
}

function checkSVG()
{
	var i, e, d, w;

	try {
		for (i = 1; i >= 0; --i) {
			e = E('svg' + i);
			d = e.getSVGDocument();
			if (d.defaultView) w = d.defaultView;
				else w = e.getWindow();
			if (!w.ready) break;
			if (i == 0) updateCD = w.updateSVG;
				else updateBD = w.updateSVG;
		}
	}
	catch (ex) {
	}
	
	if (i < 0) {
		svgReady = 1;
		updateCD(nfmarks);
		updateBD(qrates);
	}
	else if (--svgReady > -5) {
		setTimeout(checkSVG, 500);
	}
}

function init()
{
	showData();
	checkSVG();
	ref.initPage(2000, 3);
}
</script>
</head>
<body onload='init()'>
<form id='_fom' action='javascript:{}'>
<table id='container' cellspacing=0>
<tr><td colspan=2 id='header'>
	<div class='title'>Tomato</div>
	<div class='version'>(繁體/正體)中文版 <% version(); %></div>
</td></tr>
<tr id='body'><td id='navi'><script type='text/javascript'>navi()</script></td>
<td id='content'>
<div id='ident'><% ident(); %></div>

<!-- / / / -->

<div class="section-title">連接分佈圖表</div>
<div class="section">
<table border=0 width="100%"><tr><td>
	<table style="width:250px">
<script type='text/javascript'>
for (i = 0; i < 11; ++i) {
	W('<tr style="cursor:pointer" onclick="mClick(' + i + ')">' +
		'<td class="color" style="width:12px;background:#' + colors[i] + '" onclick="mClick(' + i + ')">&nbsp;</td>' +
		'<td class="title" style="width:60px"><a href="qos-detailed.asp?class=' + i + '">' + abc[i] + '</a></td>' +
		'<td id="ccnt' + i + '" class="count" style="width:90px"></td>' + 
		'<td id="cpct' + i + '" class="pct"></td></tr>');
}
</script>
	<tr><td>&nbsp;</td><td class="total">合計</a></td><td id="ccnt-total" class="total count"></td><td class="total pct">100%</td></tr>
	</table>
</td><td style="margin-right:150px">
<script type='text/javascript'>
if (nvram.web_svg != '0') {
	W('<embed src="qos-graph.svg?n=0&v=<% version(); %>" style="width:310px;height:310px;margin:0;padding:0" id="svg0" type="image/svg+xml" pluginspage="http://www.adobe.com/svg/viewer/install/"></embed>');
}
</script>
</td></tr>
</table>
</div>

<div class="section-title">頻寬分佈圖表 (上傳)</div>
<div class="section">
<table border=0 width="100%"><tr><td>
	<table style="width:250px">
<script type='text/javascript'>
for (i = 1; i < 11; ++i) {
	W('<tr style="cursor:pointer" onclick="mClick(' + i + ')">' +
		'<td class="color" style="width:12px;background:#' + colors[i] + '" onclick="mClick(' + i + ')">&nbsp;</td>' +
		'<td class="title" style="width:60px"><a href="qos-detailed.asp?class=' + i + '">' + abc[i] + '</a></td>' +
		'<td id="bcnt' + i + '" class="count" style="width:90px"></td>' + 
		'<td id="bpct' + i + '" class="pct"></td></tr>');
}
</script>
	<tr><td>&nbsp;</td><td class="total">合計</a></td><td id="bcnt-total" class="total count"></td><td class="total pct">100%</td></tr>
	</table>
</td><td style="margin-right:150px">
<script type='text/javascript'>
if (nvram.web_svg != '0') {
	W('<embed src="qos-graph.svg?n=1&v=<% version(); %>" style="width:310px;height:310px;margin:0;padding:0" id="svg1" type="image/svg+xml" pluginspage="http://www.adobe.com/svg/viewer/install/"></embed>');
}
</script>
</td></tr>
</table>
</div>

<script type='text/javascript'>
if (nvram.qos_enable != '1') {
	W('<div class="note-disabled"><b>頻寬管理QoS 未開啟.</b> &nbsp; <a href="qos-settings.asp">開啟 &raquo;</a></div>');
}
</script>

<!-- / / / -->

</td></tr>
<tr><td id='footer' colspan=2>
	<script type='text/javascript'>genStdRefresh(1,0,'ref.toggle()');</script>
</td></tr>
</table>
</form>
</body>
</html>
