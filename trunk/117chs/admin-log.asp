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
<title>[<% ident(); %>] 系统管理：日志管理</title>
<link rel='stylesheet' type='text/css' href='tomato.css'>
<link rel='stylesheet' type='text/css' href='color.css'>
<script type='text/javascript' src='tomato.js'></script>

<!-- / / / -->

<script type='text/javascript' src='debug.js'></script>

<script type='text/javascript'>

//	<% nvram("log_remote,log_remoteip,log_remoteport,log_file,log_limit,log_in,log_out,log_mark,log_events"); %>

function verifyFields(focused, quiet)
{
	var a, b;
	
	a = E('_f_log_file').checked;
	b = E('_f_log_remote').checked;

	a = !(a || b);
	E('_log_in').disabled = a;
	E('_log_out').disabled = a;
	E('_log_limit').disabled = a;	
	E('_log_mark').disabled = a;
	E('_f_log_acre').disabled = a;	
	E('_f_log_crond').disabled = a;
	E('_f_log_ntp').disabled = a;	

	elem.display(PR('_log_remoteip'), b);
	E('_log_remoteip').disabled = !b;
	E('_log_remoteport').disabled = !b;
	
	if (a) return 1;
	
	if (!v_range('_log_limit', quiet, 0, 2400)) return 0;
	if (!v_range('_log_mark', quiet, 0, 1440)) return 0;
	if (b) {
		if ((!v_ip('_log_remoteip', quiet)) || (!v_port('_log_remoteport', quiet))) return 0;
	}
	return 1;
}

function save()
{
	var a, fom;

	if (!verifyFields(null, false)) return;

	fom = E('_fom');
	fom.log_remote.value = E('_f_log_remote').checked ? 1 : 0;
	fom.log_file.value = E('_f_log_file').checked ? 1 : 0;
	
	a = [];
	if (E('_f_log_acre').checked) a.push('acre');
	if (E('_f_log_crond').checked) a.push('crond');
	if (E('_f_log_ntp').checked) a.push('ntp');
	fom.log_events.value = a.join(',');
	
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

<input type='hidden' name='_nextpage' value='admin-log.asp'>
<input type='hidden' name='_service' value='logging-restart'>

<input type='hidden' name='log_remote'>
<input type='hidden' name='log_file'>
<input type='hidden' name='log_events'>

<script type='text/javascript'>
</script>

<div class='section-title'>系统日志</div>
<div class='section'>
<script type='text/javascript'>
createFieldTable('', [
	{ title: '记录到本地系统', name: 'f_log_file', type: 'checkbox', value: nvram.log_file == 1 },
	{ title: '记录到远端系统', name: 'f_log_remote', type: 'checkbox', value: nvram.log_remote == 1 },
	{ title: 'IP 地址/连接端口', indent: 2, multi: [
		{ name: 'log_remoteip', type: 'text', maxlen: 15, size: 17, value: nvram.log_remoteip, suffix: ':' },
		{ name: 'log_remoteport', type: 'text', maxlen: 5, size: 7, value: nvram.log_remoteport } ]},
	{ title: '记录时间间隔', name: 'log_mark', type: 'text', maxlen: 4, size: 5, value: nvram.log_mark, suffix: ' <small>(分钟 / 0 表示不记录)</small>' },
	{ title: '事件记录' },
		{ title: '记录访问限制(禁止/激活)事件', indent: 2, name: 'f_log_acre', type: 'checkbox', value: (nvram.log_events.indexOf('acre') != -1) },
		{ title: '记录Cron事件', indent: 2, name: 'f_log_crond', type: 'checkbox', value: (nvram.log_events.indexOf('crond') != -1) },
		{ title: '记录NTP事件', indent: 2, name: 'f_log_ntp', type: 'checkbox', value: (nvram.log_events.indexOf('ntp') != -1) },
	{ title: '连接日志' },
		{ title: '记录下行连接', indent: 2, name: 'log_in', type: 'select', options: [[0,'从不记录 (推荐)'],[1,'被防火墙阻止的'],[2,'被防火墙允许的'],[3,'两者都有']], value: nvram.log_in },
		{ title: '记录上行连接', indent: 2, name: 'log_out', type: 'select', options: [[0,'从不记录 (推荐)'],[1,'被防火墙阻止的'],[2,'被防火墙允许的'],[3,'两者都有']], value: nvram.log_out },
		{ title: '日志记录限制', indent: 2, name: 'log_limit', type: 'text', maxlen: 4, size: 5, value: nvram.log_limit, suffix: ' <small>(每分钟消息数 / 0 表示不限制)</small>' }
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

