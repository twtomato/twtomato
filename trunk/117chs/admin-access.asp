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
<title>[<% ident(); %>] 系统管理：Web访问设置</title>
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
		if (!confirm("未保存的设置将会丢失. 继续执行?")) return;
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
		ferror.set(a, '关闭 HTTP 和 HTTPS 将只能从远程管理此机器.', quiet);
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
			ferror.set(a, '不正确的 SSH 密钥 .', quiet);
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
		ferror.set(b, '两次输入的密码不同.', quiet);
		ok = 0;
	}
	else if (a.value == '') {
		ferror.set(a, '请输入密码.', quiet);
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
		if (!confirm('请注意：手动关闭 WebGUI 接口，若关闭、只能使用 Telnet 和 SSH 登入或从硬件 Reset 机器，您确定要这样做吗?')) return;
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
	<div class='title'>蕃茄(Tomato)</div>
	<div class='version'>简体中文版 <% version(); %></div>
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


<div class='section-title'>Web访问设置</div>
<div class='section'>
<script type='text/javascript'>
createFieldTable('', [
	{ title: '本地访问模式', name: 'f_http_local', type: 'select', options: [[0,'關閉'],[1,'HTTP'],[2,'HTTPS'],[3,'HTTP &amp; HTTPS']],
		value: ((nvram.https_enable != 0) ? 2 : 0) | ((nvram.http_enable != 0) ? 1 : 0) },
	{ title: 'HTTP 访问端口', indent: 2, name: 'http_lanport', type: 'text', maxlen: 5, size: 7, value: fixPort(nvram.http_lanport, 80) },
	{ title: 'HTTPS 访问端口', indent: 2, name: 'https_lanport', type: 'text', maxlen: 5, size: 7, value: fixPort(nvram.https_lanport, 443) },
	{ title: 'SSL 证书', rid: 'row_sslcert' },
	{ title: '通用名称(CN)', indent: 2, name: 'https_crt_cn', type: 'text', maxlen: 64, size: 64, value: nvram.https_crt_cn,
		suffix: '&nbsp;<small>(非必填; 以空格区分)</small>' },
	{ title: '重新生成', indent: 2, name: 'f_https_crt_gen', type: 'checkbox', value: 0 },
	{ title: '保存至 NVRAM', indent: 2, name: 'f_https_crt_save', type: 'checkbox', value: nvram.https_crt_save == 1 },
	{ title: '远程访问', name: 'f_http_remote', type: 'select', options: [[0,'關閉'],[1,'HTTP'],[2,'HTTPS']],
		value:  (nvram.remote_management == 1) ? ((nvram.remote_mgt_https == 1) ? 2 : 1) : 0 },
	{ title: '远程访问端口', indent: 2, name: 'http_wanport', type: 'text', maxlen: 5, size: 7, value:  fixPort(nvram.http_wanport, 8080) },
	{ title: '允许无线访问-管理', name: 'f_http_wireless', type: 'checkbox', value:  nvram.web_wl_filter == 0 },
	null,
	{ title: '风格', name: 'web_css', type: 'select',
		options: [['red','番茄红'],['black','黑色'],['blue','蓝色'],['bluegreen','蓝色 &amp; 绿色 (较浅)'],['bluegreen2','蓝色 &amp; 绿色 (较深)'],['cyan','青绿色'],['olive','橄榄色'],['pumpkin','南瓜色'],['ext/custom','自定义 (例如/custom.css)']], value: nvram.web_css },
	{ title: '显示浏览器图标', name: 'f_favicon', type: 'checkbox', value:  nvram.web_favicon == 1 }
]);
</script>
</div>

<div class='section-title'>SSH 访问设置</div>
<div class='section'>
<script type='text/javascript'>
createFieldTable('', [
	{ title: '开机时启动', name: 'f_sshd_eas', type: 'checkbox', value: nvram.sshd_eas == 1 },
	{ title: '远程访问', name: 'f_sshd_remote', type: 'checkbox', value: nvram.sshd_remote == 1 },
	{ title: '远程访问端口', indent: 2, name: 'sshd_rport', type: 'text', maxlen: 5, size: 7, value: nvram.sshd_rport },
	{ title: '访问端口', name: 'sshd_port', type: 'text', maxlen: 5, size: 7, value: nvram.sshd_port },
	{ title: '使用密码登录', name: 'f_sshd_pass', type: 'checkbox', value: nvram.sshd_pass == 1 },
	{ title: '使用认证密钥', name: 'sshd_authkeys', type: 'textarea', value: nvram.sshd_authkeys }
]);
W('<input type="button" value="' + (sdup ? '停止' : '启动') + ' Now" onclick="toggle(\'sshd\', sdup)" id="_sshd_button">');
</script>
</div>

<div class='section-title'>远程 Web/SSH 访问限制</div>
<div class='section'>
<script type='text/javascript'>
createFieldTable('', [
	{ title: '允许登入的 IP 地址', name: 'rmgt_sip', type: 'text', maxlen: 32, size: 32, value: nvram.rmgt_sip,
		suffix: '&nbsp;<small>("空白" 不限制,可单一IP或范围;例: "1.1.1.1", "1.1.1.0/24" 或 "1.1.1.1 - 2.2.2.2")</small>' }
]);
</script>
</div>

<div class='section-title'>Telnet 访问设置</div>
<div class='section'>
<script type='text/javascript'>
createFieldTable('', [
	{ title: '开机时启动', name: 'f_telnetd_eas', type: 'checkbox', value: nvram.telnetd_eas == 1 },
	{ title: '访问端口', name: 'telnetd_port', type: 'text', maxlen: 5, size: 7, value: nvram.telnetd_port }
]);
W('<input type="button" value="' + (tdup ? '停止' : '启动') + ' Now" onclick="toggle(\'telnetd\', tdup)" id="_telnetd_button">');
</script>
</div>

<div class='section-title'>密码设置</div>
<div class='section'>
<script type='text/javascript'>
createFieldTable('', [
	{ title: '请输入密码', name: 'set_password_1', type: 'password', value: '**********' },
	{ title: '(再次输入密码)', indent: 2, name: 'set_password_2', type: 'password', value: '**********' }
]);
</script>
</div>

<!-- / / / -->

</td></tr>
<tr><td id='footer' colspan=2>
	<span id='footer-msg'></span>
	<input type='button' value='保存设置' id='save-button' onclick='save()'>
	<input type='button' value='取消设置' id='cancel-button' onclick='javascript:reloadPage();'>
</td></tr>
</table>
</form>
<script type='text/javascript'>verifyFields(null, 1);</script>
</body>
</html>
