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
<title>[<% ident(); %>] 系统管理：调试</title>
<link rel='stylesheet' type='text/css' href='tomato.css'>
<link rel='stylesheet' type='text/css' href='color.css'>
<script type='text/javascript' src='tomato.js'></script>

<!-- / / / -->

<script type='text/javascript' src='debug.js'></script>

<script type='text/javascript'>

//	<% nvram("debug_nocommit,debug_cprintf,debug_cprintf_file,debug_keepfiles,console_loglevel,t_cafree,t_hidelr,debug_ddns"); %>

function nvramCommit()
{
	fields.disableAll('_fom', 1);	
	form.submitHidden('nvcommit.cgi', { '_nextpage': myName() });
}

function verifyFields(focused, quiet)
{
	return 1;
}

function save()
{
	var fom = E('_fom');
	fom.debug_nocommit.value = fom.f_debug_nocommit.checked ? 1 : 0;
	fom.debug_cprintf.value = fom.f_debug_cprintf.checked ? 1 : 0;
	fom.debug_cprintf_file.value = fom.f_debug_cprintf_file.checked ? 1 : 0;
	fom.debug_keepfiles.value = fom.f_debug_keepfiles.checked ? 1 : 0;
	fom.t_cafree.value = fom.f_cafree.checked ? 1 : 0;
	fom.t_hidelr.value = fom.f_hidelr.checked ? 1 : 0;
	fom.debug_ddns.value = fom.f_debug_ddns.checked ? 1 : 0;
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

<input type='hidden' name='_nextpage' value='admin-misc.asp'>

<input type='hidden' name='debug_nocommit'>
<input type='hidden' name='debug_cprintf'>
<input type='hidden' name='debug_cprintf_file'>
<input type='hidden' name='debug_keepfiles'>
<input type='hidden' name='debug_ddns'>
<input type='hidden' name='t_cafree'>
<input type='hidden' name='t_hidelr'>

<div class='section-title'>调试</div>
<div class='section'>
<script type='text/javascript'>
a = [];
for (i = 1; i <= 8; ++i) a.push([i, i]);
createFieldTable('', [
	{ title: '避免写入NVRAM', name: 'f_debug_nocommit', type: 'checkbox', value: nvram.debug_nocommit != '0' },
	{ title: '不删除临时文件', name: 'f_debug_keepfiles', type: 'checkbox', value: nvram.debug_keepfiles != '0' },
	{ title: '启用 cprintf 输出到终端', name: 'f_debug_cprintf', type: 'checkbox', value: nvram.debug_cprintf != '0' },
	{ title: '启用 cprintf 输出到 /tmp/cprintf', name: 'f_debug_cprintf_file', type: 'checkbox', value: nvram.debug_cprintf_file != '0' },
	{ title: '将 DDNS 输出至 /tmp/mdu-*', name: 'f_debug_ddns', type: 'checkbox', value: nvram.debug_ddns != '0' },
	{ title: '将缓存计入可用内存', name: 'f_cafree', type: 'checkbox', value: nvram.t_cafree == '1' },
	{ title: '不显示LAN到路由的连接', name: 'f_hidelr', type: 'checkbox', value: nvram.t_hidelr == '1' },
	{ title: '终端日志级别', name: 'console_loglevel', type: 'select', options: a, value: fixInt(nvram.console_loglevel, 1, 8, 1) }
]);
</script>
<br><br>

&raquo; <a href='clearcookies.asp?_http_id=<% nv(http_id); %>'>清除 Cookies</a><br>
&raquo; <a href='javascript:nvramCommit()'>写入NVRAM</a><br>
&raquo; <a href='javascript:reboot()'>重启路由器</a><br>
&raquo; <a href='javascript:shutdown()'>关闭路由器</a><br>
<br><br>

&raquo; <a href='/cfe/cfe.bin?_http_id=<% nv(http_id); %>'>下载 CFE</a><br>
&raquo; <a href='/ipt/iptables.txt?_http_id=<% nv(http_id); %>'>下载 Iptables</a><br>
&raquo; <a href='/logs/syslog.txt?_http_id=<% nv(http_id); %>'>下载日志</a><br>
&raquo; <a href='/nvram/nvram.txt?_http_id=<% nv(http_id); %>'>下载 NVRAM</a><br>
<br>

<div style='width:80%'>
<b>请注意</b>: NVRAM Dump文件可能包含了如下路由信息:无线加密密钥,用户/密码,ISP和DDNS等. 请在共享给其他人前检查并编辑该文件.<br>



</div>

</div>

<!-- / / / -->

</td></tr>
<tr><td id='footer' colspan=2>
	<span id='footer-msg'></span>
	<input type='button' value='保存设置' id='save-button' onclick='save()'>
	<input type='button' value='取消设置' id='cancel-button' onclick='reloadPage();'>
</td></tr>
</table>
</form>
</body>
</html>
