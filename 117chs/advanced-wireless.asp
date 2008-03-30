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
<title>[<% ident(); %>] 高级设置: 无线设置</title>
<link rel='stylesheet' type='text/css' href='tomato.css'>
<link rel='stylesheet' type='text/css' href='color.css'>
<script type='text/javascript' src='tomato.js'></script>

<!-- / / / -->

<script type='text/javascript' src='debug.js'></script>

<script type='text/javascript'>

//	<% nvram("security_mode,wl_afterburner,wl_antdiv,wl_ap_isolate,wl_auth,wl_bcn,wl_dtim,wl_frag,wl_frameburst,wl_gmode_protection,wl_plcphdr,wl_rate,wl_rateset,wl_rts,wl_txant,wl_wme,wl_wme_no_ack,wl_txpwr,wl_mrate,t_features,wl_distance,wl_maxassoc,wlx_hpamp,wlx_hperx"); %>

hp = features('hpamp');

function verifyFields(focused, quiet)
{
	if (!v_range('_f_distance', quiet, 0, 99999)) return 0;
	if (!v_range('_wl_maxassoc', quiet, 0, 255)) return 0;
	if (!v_range('_wl_bcn', quiet, 1, 65535)) return 0;
	if (!v_range('_wl_dtim', quiet, 1, 255)) return 0;
	if (!v_range('_wl_frag', quiet, 256, 2346)) return 0;
	if (!v_range('_wl_rts', quiet, 0, 2347)) return 0;
	if (!v_range(E('_wl_txpwr'), quiet, 1, 251)) return 0;

	E('_wl_wme_no_ack').disabled = E('_wl_wme').selectedIndex != 1;
	return 1;
}

function save()
{
	var fom;
	var n;

	if (!verifyFields(null, false)) return;
	
	fom = E('_fom');
	n = fom._f_distance.value * 1;
	fom.wl_distance.value = n ? n : '';
	
	if (hp) {
		if ((fom.wlx_hpamp.value != nvram.wlx_hpamp) || (fom.wlx_hperx.value != nvram.wlx_hperx)) {
			fom._service.disabled = 1;
			fom._reboot.value = 1;
			form.submit(fom, 0);
			return;
		}
	}
	else {
		fom.wlx_hpamp.disabled = 1;
		fom.wlx_hperx.disabled = 1;
	}
	
	form.submit(fom, 1);
}
</script>

</head>
<body>
<form id='_fom' method='post' action='tomato.cgi'>
<table id='container' cellspacing=0>
<tr><td colspan=2 id='header'>
	<div class='title'>蕃茄(Tomato)</div>
	<div class='version'>简体中文版 <% version(); %></div>
</td></tr>
<tr id='body'><td id='navi'><script type='text/javascript'>navi()</script></td>
<td id='content'>
<div id='ident'><% ident(); %></div>

<!-- / / / -->

<input type='hidden' name='_nextpage' value='advanced-wireless.asp'>
<input type='hidden' name='_nextwait' value='10'>
<input type='hidden' name='_service' value='*'>
<input type='hidden' name='_reboot' value='0'>

<input type='hidden' name='wl_distance'>

<div class='section-title'>设置</div>
<div class='section'>
<script type='text/javascript'>
at = ((nvram.security_mode != "wep") && (nvram.security_mode != "radius") && (nvram.security_mode != "disabled"));
createFieldTable('', [
	{ title: 'Afterburner', name: 'wl_afterburner', type: 'select', options: [['auto','自动'],['on','启用'],['off','关闭 *']],
		value: nvram.wl_afterburner },
	{ title: 'AP隔离技术', name: 'wl_ap_isolate', type: 'select', options: [['0','关闭 *'],['1','启用']],
		value: nvram.wl_ap_isolate },
	{ title: '认证类型', name: 'wl_auth', type: 'select',
		options: [['0','自动 *'],['1','共享密钥']], attrib: at ? 'disabled' : '',
		value: at ? 0 : nvram.wl_auth },
	{ title: '基本速率', name: 'wl_rateset', type: 'select', options: [['default','默认 *'],['12','1-2 Mbps'],['all','All']],
		value: nvram.wl_rateset },
	{ title: '信标间隔', name: 'wl_bcn', type: 'text', maxlen: 5, size: 7,
		suffix: ' <small>(范围: 1 - 65535; 默认: 100)</small>', value: nvram.wl_bcn },
	{ title: 'CTS 保护模式', name: 'wl_gmode_protection', type: 'select', options: [['off','关闭 *'],['auto','自动']],
		value: nvram.wl_gmode_protection },
	{ title: '距离/ACK响应调整', name: 'f_distance', type: 'text', maxlen: 5, size: 7,
		suffix: ' <small>meters</small>&nbsp;&nbsp;<small>(范围: 0 - 99999; 0 = 使用默认)</small>',
			value: (nvram.wl_distance == '') ? '0' : nvram.wl_distance },
	{ title: 'DTIM 間隔', name: 'wl_dtim', type: 'text', maxlen: 3, size: 5,
		suffix: ' <small>(范围: 1 - 255; 默认: 1)</small>', value: nvram.wl_dtim },
	{ title: '分片阈值', name: 'wl_frag', type: 'text', maxlen: 4, size: 6,
		suffix: ' <small>(范围: 256 - 2346; 默认: 2346)</small>', value: nvram.wl_frag },
	{ title: '帧突发技术', name: 'wl_frameburst', type: 'select', options: [['off','关闭 *'],['on','启用']],
		value: nvram.wl_frameburst },
	{ title: '高功率', hidden: !hp },
		{ title: '功率放大器', indent: 2, name: 'wlx_hpamp', type: 'select', options: [['0','关闭'],['1','启用 *']],
			value: nvram.wlx_hpamp != '0', hidden: !hp },
		{ title: '增强接收敏感度', indent: 2, name: 'wlx_hperx', type: 'select', options: [['0','关闭'],['1','启用 *']],
			value: nvram.wlx_hperx != '0', hidden: !hp },
	{ title: '最大无线客户端数量', name: 'wl_maxassoc', type: 'text', maxlen: 3, size: 5,
		suffix: ' <small>(范围: 1 - 255; 默认: 128)</small>', value: nvram.wl_maxassoc },
	{ title: '组播速率', name: 'wl_mrate', type: 'select',
		options: [['0','自动 *'],['1000000','1 Mbps'],['2000000','2 Mbps'],['5500000','5.5 Mbps'],['6000000','6 Mbps'],['9000000','9 Mbps'],['11000000','11 Mbps'],['12000000','12 Mbps'],['18000000','18 Mbps'],['24000000','24 Mbps'],['36000000','36 Mbps'],['48000000','48 Mbps'],['54000000','54 Mbps']],
		value: nvram.wl_mrate },
	{ title: '前导信号', name: 'wl_plcphdr', type: 'select', options: [['long','长 *'],['short','短']],
		value: nvram.wl_plcphdr },
	{ title: 'RTS Threshold', name: 'wl_rts', type: 'text', maxlen: 4, size: 6,
		suffix: ' <small>(范围: 0 - 2347; 默认: 2347)</small>', value: nvram.wl_rts },
	{ title: '接收天线', name: 'wl_antdiv', type: 'select', options: [['3','自动 *'],['1','A'],['0','B']],
		value: nvram.wl_antdiv },
	{ title: '发射天线', name: 'wl_txant', type: 'select', options: [['3','自动 *'],['1','A'],['0','B']],
		value: nvram.wl_txant },
	{ title: '发射功率', name: 'wl_txpwr', type: 'text', maxlen: 3, size: 5,
		suffix: hp ?
			' <small>mW (放大前功率)</small>&nbsp;&nbsp;<small>(范围: 1 - 251; 默认: 10)</small>' :
			' <small>mW</small>&nbsp;&nbsp;<small>(范围: 1 - 251; 默认: 42)</small>',
			value: nvram.wl_txpwr },
	{ title: '传输速率', name: 'wl_rate', type: 'select',
		options: [['0','自动 *'],['1000000','1 Mbps'],['2000000','2 Mbps'],['5500000','5.5 Mbps'],['6000000','6 Mbps'],['9000000','9 Mbps'],['11000000','11 Mbps'],['12000000','12 Mbps'],['18000000','18 Mbps'],['24000000','24 Mbps'],['36000000','36 Mbps'],['48000000','48 Mbps'],['54000000','54 Mbps']],
		value: nvram.wl_rate },
	{ title: '无线多媒体', name: 'wl_wme', type: 'select', options: [['off','关闭 *'],['on','启用']], value: nvram.wl_wme },
	{ title: 'No ACK', name: 'wl_wme_no_ack', indent: 2, type: 'select', options: [['off','关闭 *'],['on','启用']],
		value: nvram.wl_wme_no_ack }
]);
</script>
</div>
<small> 选项后有 <b style='font-size: 1.5em'>*</b> 符号为默认值.</small>

<!-- / / / -->

</td></tr>
<tr><td id='footer' colspan=2>
	<span id='footer-msg'></span>
	<input type='button' value='保存设置' id='save-button' onclick='save()'>
	<input type='button' value='取消设置' id='cancel-button' onclick='reloadPage();'>
</td></tr>
</table>
</form>
<script type='text/javascript'>verifyFields(null, 1);</script>
</body>
</html>
