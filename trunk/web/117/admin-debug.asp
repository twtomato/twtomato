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
<title>[<% ident(); %>] 路由器管理設定：除錯</title>
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
	<div class='title'>Tomato</div>
	<div class='version'>(繁體/正體)中文版 <% version(); %></div>
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

<div class='section-title'>除錯</div>
<div class='section'>
<script type='text/javascript'>
a = [];
for (i = 1; i <= 8; ++i) a.push([i, i]);
createFieldTable('', [
	{ title: '避免寫入NVRAM', name: 'f_debug_nocommit', type: 'checkbox', value: nvram.debug_nocommit != '0' },
	{ title: '不清除某些暫存檔', name: 'f_debug_keepfiles', type: 'checkbox', value: nvram.debug_keepfiles != '0' },
	{ title: 'Enable cprintf output to console', name: 'f_debug_cprintf', type: 'checkbox', value: nvram.debug_cprintf != '0' },
	{ title: 'Enable cprintf output to /tmp/cprintf', name: 'f_debug_cprintf_file', type: 'checkbox', value: nvram.debug_cprintf_file != '0' },
	{ title: '將 DDNS 輸出至 /tmp/mdu-*', name: 'f_debug_ddns', type: 'checkbox', value: nvram.debug_ddns != '0' },
	{ title: '快取記憶體算成可用的記憶體', name: 'f_cafree', type: 'checkbox', value: nvram.t_cafree == '1' },
	{ title: '不顯示本地連線', name: 'f_hidelr', type: 'checkbox', value: nvram.t_hidelr == '1' },
	{ title: 'Console log level', name: 'console_loglevel', type: 'select', options: a, value: fixInt(nvram.console_loglevel, 1, 8, 1) }
]);
</script>
<br><br>

&raquo; <a href='clearcookies.asp?_http_id=<% nv(http_id); %>'>清除 Cookies</a><br>
&raquo; <a href='javascript:nvramCommit()'>寫入NVRAM</a><br>
&raquo; <a href='javascript:reboot()'>重開機</a><br>
&raquo; <a href='javascript:shutdown()'>關機</a><br>
<br><br>

&raquo; <a href='/cfe/cfe.bin?_http_id=<% nv(http_id); %>'>下載 CFE</a><br>
&raquo; <a href='/ipt/iptables.txt?_http_id=<% nv(http_id); %>'>下載 Iptables 傾印檔</a><br>
&raquo; <a href='/logs/syslog.txt?_http_id=<% nv(http_id); %>'>下載日誌記錄檔</a><br>
&raquo; <a href='/nvram/nvram.txt?_http_id=<% nv(http_id); %>'>下載 NVRAM 傾印檔</a><br>
<br>

<div style='width:80%'>
<b>請注意</b>: NVRAM 傾印所得到的檔案,包含私人資料.如 帳號 密碼 等, 若要交予他人, 請檢視和編輯清除重要資訊後, 再進行傳送.<br>



</div>

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
</body>
</html>
