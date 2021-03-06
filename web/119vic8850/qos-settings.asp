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
<title>[<% ident(); %>] 頻寬管理 QoS:一般設定</title>
<link rel='stylesheet' type='text/css' href='tomato.css'>
<link rel='stylesheet' type='text/css' href='color.css'>
<script type='text/javascript' src='tomato.js'></script>

<!-- / / / -->
<script type='text/javascript' src='debug.js'></script>

<script type='text/javascript'>

//	<% nvram("qos_enable,qos_ack,qos_syn,qos_fin,qos_rst,qos_icmp,qos_default,qos_obw,qos_ibw,qos_orates,qos_irates,qos_reset"); %>

classNames = ['最高等', '高等', '中等', '低等', '最低等', 'Ａ等', 'Ｂ等', 'Ｃ等', 'Ｄ等', 'Ｅ等'];

pctList = [[0, 'None']];
for (i = 1; i <= 100; ++i) pctList.push([i, i + '%']);

function oscale(rate, ceil)
{
	if (rate <= 0) return '';
	var b = E('_qos_obw').value;
	var s = comma(MAX(Math.floor((b * rate) / 100), 1));
	if (ceil > 0) s += ' - ' + MAX(Math.round((b * ceil) / 100), 1);
	return s + ' <small>kbit/s</small>';
}

function iscale(ceil)
{
	if (ceil < 1) return '';
	return comma(MAX(Math.floor((E('_qos_ibw').value * ceil) / 100), 1)) + ' <small>kbit/s</small>';
}

function verifyFields(focused, quiet)
{
	var i, e, b, f;

	if (!v_range('_qos_obw', quiet, 10, 999999)) return 0;
	for (i = 0; i < 10; ++i) {
		elem.setInnerHTML('_okbps_' + i, oscale(E('_f_orate_' + i).value, E('_f_oceil_' + i).value));
	}

	if (!v_range('_qos_ibw', quiet, 10, 999999)) return 0;
	for (i = 0; i < 10; ++i) {
		elem.setInnerHTML('_ikbps_' + i, iscale(E('_f_iceil_' + i).value));
	}

	f = E('_fom').elements;
	b = !E('_f_qos_enable').checked;
	for (i = 0; i < f.length; ++i) {
		if ((f[i].name.substr(0, 1) != '_') && (f[i].type != 'button') && (f[i].name.indexOf('enable') == -1)) f[i].disabled = b;
	}
	
	return 1;
}

function save()
{
	var fom = E('_fom');
	var i, a, c;

	fom.qos_enable.value = E('_f_qos_enable').checked ? 1 : 0;
	fom.qos_ack.value = E('_f_qos_ack').checked ? 1 : 0;
	fom.qos_syn.value = E('_f_qos_syn').checked ? 1 : 0;
	fom.qos_fin.value = E('_f_qos_fin').checked ? 1 : 0;
	fom.qos_rst.value = E('_f_qos_rst').checked ? 1 : 0;
	fom.qos_icmp.value = E('_f_qos_icmp').checked ? 1 : 0;
	fom.qos_reset.value = E('_f_qos_reset').checked ? 1 : 0;

	a = [];
	for (i = 0; i < 10; ++i) {
		a.push(E('_f_orate_' + i).value + '-' + E('_f_oceil_' + i).value);
	}
	fom.qos_orates.value = a.join(',');
	
	a = [];
	for (i = 0; i < 10; ++i) {
		a.push(E('_f_iceil_' + i).value);
	}
	fom.qos_irates.value = a.join(',');

	form.submit(fom, 1);
}
</script>

</head>
<body>
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

<input type='hidden' name='_nextpage' value='qos-settings.asp'>
<input type='hidden' name='_service' value='qos-restart'>

<input type='hidden' name='qos_enable'>
<input type='hidden' name='qos_ack'>
<input type='hidden' name='qos_syn'>
<input type='hidden' name='qos_fin'>
<input type='hidden' name='qos_rst'>
<input type='hidden' name='qos_icmp'>
<input type='hidden' name='qos_orates'>
<input type='hidden' name='qos_irates'>
<input type='hidden' name='qos_reset'>

<div class='section-title'>QoS 一般設定</div>
<div class='section'>
<script type='text/javascript'>
classList = [];
for (i = 0; i < 10; ++i) {
	classList.push([i, classNames[i]]);
}
createFieldTable('', [
	{ title: '開啟頻寬管理 QoS', name: 'f_qos_enable', type: 'checkbox', value: nvram.qos_enable == '1' },
	{ title: '給予 點選旗標封包 優先權', multi: [
		{ suffix: ' ACK &nbsp;', name: 'f_qos_ack', type: 'checkbox', value: nvram.qos_ack == '1' },
		{ suffix: ' SYN &nbsp;', name: 'f_qos_syn', type: 'checkbox', value: nvram.qos_syn == '1' },
		{ suffix: ' FIN &nbsp;', name: 'f_qos_fin', type: 'checkbox', value: nvram.qos_fin == '1' },
		{ suffix: ' RST &nbsp;', name: 'f_qos_rst', type: 'checkbox', value: nvram.qos_rst == '1' }
	] },
	{ title: '給予 ICMP 優先權', name: 'f_qos_icmp', type: 'checkbox', value: nvram.qos_icmp == '1' },
	{ title: '設定值改變時 自動更新 分等機制', name: 'f_qos_reset', type: 'checkbox', value: nvram.qos_reset == '1' },
	{ title: '優先權預設為 (等級)', name: 'qos_default', type: 'select', options: classList, value: nvram.qos_default }
]);
</script>
</div>

<div class='section-title'>上傳速率 / 限制</div>
<div class='section'>
<script type='text/javascript'>
cc = nvram.qos_orates.split(/[,-]/);
f = [];
f.push({ title: '最大上傳速率', name: 'qos_obw', type: 'text', maxlen: 6, size: 8, suffix: ' <small>kbit/s</small>', value: nvram.qos_obw });
f.push(null);
j = 0;
for (i = 0; i < 10; ++i) {
	x = cc[j++] || 1;
	y = cc[j++] || 1;
	f.push({ title: classNames[i], multi: [
			{ name: 'f_orate_' + i, type: 'select', options: pctList, value: x, suffix: ' ' },
			{ name:	'f_oceil_' + i, type: 'select', options: pctList, value: y },
			{ type: 'custom', custom: ' &nbsp; <span id="_okbps_' + i + '"></span>' } ]
	});
}
createFieldTable('', f);
</script>
</div>


<div class='section-title'>下載限制</div>
<div class='section'>
<script type='text/javascript'>
rates = nvram.qos_irates.split(',');
f = [];
f.push({ title: '最大下載速率', name: 'qos_ibw', type: 'text', maxlen: 6, size: 8, suffix: ' <small>kbit/s</small>', value: nvram.qos_ibw });
f.push(null);
for (i = 0; i < 10; ++i) {
	f.push({ title: classNames[i], multi: [
			{ name:	'f_iceil_' + i, type: 'select', options: pctList, value: rates[i] },
			{ custom: ' &nbsp; <span id="_ikbps_' + i + '"></span>' } ]
	});
}
createFieldTable('', f);
</script>
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
<script type='text/javascript'>verifyFields(null, 1);</script>
</body>
</html>
