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
<title>[<% ident(); %>] 路由器管理設定：密碼/遠端連線</title>
<link rel='stylesheet' type='text/css' href='tomato.css'>
<link rel='stylesheet' type='text/css' href='color.css' id='guicss'>
<script type='text/javascript' src='tomato.js'></script>

<!-- / / / -->

<style type='text/css'>
textarea {
	width: 99%;
	height: 10em;
}
</style>

<script type='text/javascript' src='debug.js'></script>

<script type='text/javascript'>
	
//	<% nvram("http_enable,https_enable,http_lanport,https_lanport,remote_management,remote_mgt_https,web_wl_filter,web_favicon,web_css,sshd_eas,sshd_pass,sshd_remote,telnetd_eas,http_wanport,sshd_authkeys,sshd_port,sshd_rport,telnetd_port,rmgt_sip,https_crt_cn,https_crt_save"); %>

changed = 0;
tdup = parseInt('<% psup("telnetd"); %>');
sdup = parseInt('<% psup("dropbear"); %>');

function toggle(service, isup)
{
	if (changed) {
		if (!confirm("未儲存的設定將會遺失. 是否繼續?")) return;
	}
	E('_' + service + '_button').disabled = true;
	form.submitHidden('service.cgi', {
		_redirect: 'admin-access.asp',
		_sleep: ((service == 'sshd') && (!isup)) ? '7' : '3',
		_service: service + (isup ? '-stop' : '-start')
	});
}

function verifyFields(focused, quiet)
{
	var ok = 1;
	var a, b, c;

	try {
		a = E('_web_css').value;
		if (a != nvram.web_css) {
			E('guicss').href = a + '.css';
			nvram.web_css = a;
		}
	}
	catch (ex) {
	}

	a = E('_f_http_local');
	b = E('_f_http_remote').value;
	if ((a.value != 3) && (b != 0) && (a.value != b)) {
		ferror.set(a, '開啟時遠端登入, 區域端登入模式 http/https 必須開啟.', quiet);
		ok = 0;
	}
	else {
		ferror.clear(a);
	}
	
	elem.display(PR('_http_lanport'), (a.value == 1) || (a.value == 3));

	c = (a.value == 2) || (a.value == 3);
	elem.display(PR('_https_lanport'), 'row_sslcert', PR('_https_crt_cn'), PR('_f_https_crt_save'), PR('_f_https_crt_gen'), c);

	if (c) {
		a = E('_https_crt_cn');
		a.value = a.value.replace(/(,+|\s+)/g, ' ').trim();
		if (a.value != nvram.https_crt_cn) E('_f_https_crt_gen').checked = 1;
	}

	if ((!v_port('_http_lanport', quiet)) || (!v_port('_https_lanport', quiet))) ok = 0;

	b = b != 0;
	a = E('_http_wanport');
	elem.display(PR(a), b);
	if ((b) && (!v_port(a, quiet))) ok = 0;

	if (!v_port('_telnetd_port', quiet)) ok = 0;

	a = E('_f_sshd_remote').checked;
	b = E('_sshd_rport');
	elem.display(PR(b), a);
	if ((a) && (!v_port(b, quiet))) ok = 0;

	a = E('_sshd_authkeys');
	if (!v_length(a, quiet, 0, 4096)) {
		ok = 0;
	}
	else if (a.value != '') {
        if (a.value.search(/^\s*ssh-(dss|rsa)/) == -1) {
			ferror.set(a, '不正確的 SSH 金鑰 .', quiet);
			ok = 0;
		}
	}
	
	a = E('_rmgt_sip');
	if ((a.value.length) && (!v_iptip(a))) return 0;

	a = E('_set_password_1');
	b = E('_set_password_2');
	a.value = a.value.trim();
	b.value = b.value.trim();
	if (a.value != b.value) {
		ferror.set(b, '兩次輸入的密碼不相同.', quiet);
		ok = 0;
	}
	else if (a.value == '') {
		ferror.set(a, '請輸入密碼.', quiet);
		ok = 0;
	}
	else {
		ferror.clear(a);
		ferror.clear(b);
	}

	changed |= ok;
	return ok;
}

function save()
{
	var a, b, fom;

	if (!verifyFields(null, false)) return;

	fom = E('_fom');
	a = E('_f_http_local').value * 1;
	if (a == 0) {
		if (!confirm('請注意: 手動關閉 WebGUI 介面, 若關閉只能使用 telnet 和 ssh 登入 或從硬體 Reset 機器, 您確定要這樣做嗎?')) return;
		fom._nextpage.value = 'about:blank';
	}
	fom.http_enable.value = (a & 1) ? 1 : 0;
	fom.https_enable.value = (a & 2) ? 1 : 0;
	
	fom.https_crt_gen.value = a ? 1 : 0;
	fom.https_crt_save.value = E('_f_https_crt_save').checked ? 1 : 0;

	a = E('_f_http_remote').value;
	fom.remote_management.value = (a != 0) ? 1 : 0;
	fom.remote_mgt_https.value = (a == 2) ? 1 : 0;
	
	fom.web_wl_filter.value = E('_f_http_wireless').checked ? 0 : 1;
	fom.web_favicon.value = E('_f_favicon').checked ? 1 : 0;

	fom.telnetd_eas.value = E('_f_telnetd_eas').checked ? 1 : 0;

	fom.sshd_eas.value = E('_f_sshd_eas').checked ? 1 : 0;
	fom.sshd_pass.value = E('_f_sshd_pass').checked ? 1 : 0;
	fom.sshd_remote.value = E('_f_sshd_remote').checked ? 1 : 0;

	form.submit(fom, 0);
}

function init()
{
	changed = 0;
}
</script>
</head>
<body onload="init()">
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

<input type='hidden' name='_nextpage' value='admin-access.asp'>
<input type='hidden' name='_nextwait' value='10'>
<input type='hidden' name='_service' value='admin-restart'>

<input type='hidden' name='http_enable'>
<input type='hidden' name='https_enable'>
<input type='hidden' name='https_crt_save'>
<input type='hidden' name='https_crt_gen'>
<input type='hidden' name='remote_management'>
<input type='hidden' name='remote_mgt_https'>
<input type='hidden' name='web_wl_filter'>
<input type='hidden' name='web_favicon'>
<input type='hidden' name='telnetd_eas'>
<input type='hidden' name='sshd_eas'>
<input type='hidden' name='sshd_pass'>
<input type='hidden' name='sshd_remote'>


<div class='section-title'>路由器管理設定</div>
<div class='section'>
<script type='text/javascript'>
createFieldTable('', [
	{ title: '區域端登入模式', name: 'f_http_local', type: 'select', options: [[0,'關閉'],[1,'HTTP'],[2,'HTTPS'],[3,'HTTP &amp; HTTPS']],
		value: ((nvram.https_enable != 0) ? 2 : 0) | ((nvram.http_enable != 0) ? 1 : 0) },
	{ title: 'HTTP 通訊埠', indent: 2, name: 'http_lanport', type: 'text', maxlen: 5, size: 7, value: fixPort(nvram.http_lanport, 80) },
	{ title: 'HTTPS 通訊埠', indent: 2, name: 'https_lanport', type: 'text', maxlen: 5, size: 7, value: fixPort(nvram.https_lanport, 443) },
	{ title: 'SSL 憑證', rid: 'row_sslcert' },
	{ title: '一般名稱 (CN)', indent: 2, name: 'https_crt_cn', type: 'text', maxlen: 64, size: 64, value: nvram.https_crt_cn,
		suffix: '&nbsp;<small>(非必填; 以空隔區分)</small>' },
	{ title: '重新產生', indent: 2, name: 'f_https_crt_gen', type: 'checkbox', value: 0 },
	{ title: '儲存至 NVRAM', indent: 2, name: 'f_https_crt_save', type: 'checkbox', value: nvram.https_crt_save == 1 },
	{ title: '遠端登入', name: 'f_http_remote', type: 'select', options: [[0,'關閉'],[1,'HTTP'],[2,'HTTPS']],
		value:  (nvram.remote_management == 1) ? ((nvram.remote_mgt_https == 1) ? 2 : 1) : 0 },
	{ title: '通訊埠', indent: 2, name: 'http_wanport', type: 'text', maxlen: 5, size: 7, value:  fixPort(nvram.http_wanport, 8080) },
	{ title: '允許無線網路-登入管理', name: 'f_http_wireless', type: 'checkbox', value:  nvram.web_wl_filter == 0 },
	null,
	{ title: '風格', name: 'web_css', type: 'select',
		options: [['red','蕃茄紅'],['black','黑色'],['blue','藍色'],['bluegreen','藍色 &amp; 綠色 (較淺)'],['bluegreen2','藍色 &amp; 綠色 (較深)'],['cyan','青綠色'],['olive','橄欖色'],['pumpkin','南瓜色'],['ext/custom','自定 (ext/custom.css)']], value: nvram.web_css },
	{ title: '顯示 Browser Icon', name: 'f_favicon', type: 'checkbox', value:  nvram.web_favicon == 1 }
]);
</script>
</div>

<div class='section-title'>SSH 守護程式</div>
<div class='section'>
<script type='text/javascript'>
createFieldTable('', [
	{ title: '開機時啟用', name: 'f_sshd_eas', type: 'checkbox', value: nvram.sshd_eas == 1 },
	{ title: '遠端登入', name: 'f_sshd_remote', type: 'checkbox', value: nvram.sshd_remote == 1 },
	{ title: '遠端登入的通訊埠', indent: 2, name: 'sshd_rport', type: 'text', maxlen: 5, size: 7, value: nvram.sshd_rport },
	{ title: '通訊埠', name: 'sshd_port', type: 'text', maxlen: 5, size: 7, value: nvram.sshd_port },
	{ title: '登入密碼', name: 'f_sshd_pass', type: 'checkbox', value: nvram.sshd_pass == 1 },
	{ title: '授權金鑰', name: 'sshd_authkeys', type: 'textarea', value: nvram.sshd_authkeys }
]);
W('<input type="button" value="' + (sdup ? '停止' : '啟用') + ' Now" onclick="toggle(\'sshd\', sdup)" id="_sshd_button">');
</script>
</div>

<div class='section-title'>遠端 Web/SSH 登入限制</div>
<div class='section'>
<script type='text/javascript'>
createFieldTable('', [
	{ title: '遠端登入的IP', name: 'rmgt_sip', type: 'text', maxlen: 32, size: 32, value: nvram.rmgt_sip,
		suffix: '&nbsp;<small>("空白" 不限制,可單一IP或範圍;例: "1.1.1.1", "1.1.1.0/24" 或 "1.1.1.1 - 2.2.2.2")</small>' }
]);
</script>
</div>

<div class='section-title'>Telnet 守護程式</div>
<div class='section'>
<script type='text/javascript'>
createFieldTable('', [
	{ title: '開機時啟用', name: 'f_telnetd_eas', type: 'checkbox', value: nvram.telnetd_eas == 1 },
	{ title: '通訊埠', name: 'telnetd_port', type: 'text', maxlen: 5, size: 7, value: nvram.telnetd_port }
]);
W('<input type="button" value="' + (tdup ? '停止' : '啟用') + ' Now" onclick="toggle(\'telnetd\', tdup)" id="_telnetd_button">');
</script>
</div>

<div class='section-title'>變更密碼</div>
<div class='section'>
<script type='text/javascript'>
createFieldTable('', [
	{ title: '密碼', name: 'set_password_1', type: 'password', value: '**********' },
	{ title: '(確認密碼)', indent: 2, name: 'set_password_2', type: 'password', value: '**********' }
]);
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
</form>
<script type='text/javascript'>verifyFields(null, 1);</script>
</body>
</html>
