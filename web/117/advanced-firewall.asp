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
<title>[<% ident(); %>] 進階設定：防火牆</title>
<link rel='stylesheet' type='text/css' href='tomato.css'>
<link rel='stylesheet' type='text/css' href='color.css'>
<script type='text/javascript' src='tomato.js'></script>

<!-- / / / -->

<script type='text/javascript' src='debug.js'></script>

<script type='text/javascript'>

//	<% nvram("block_wan,multicast_pass,nf_loopback"); %>


function verifyFields(focused, quiet)
{
	return 1;
}

function save()
{
	var fom;

	if (!verifyFields(null, 0)) return;

	fom = E('_fom');
	fom.block_wan.value = E('_f_icmp').checked ? 0 : 1;
	fom.multicast_pass.value = E('_f_multicast').checked ? 1 : 0;
	form.submit(fom, 1);
}
</script>

</head>
<body>
<form id='_fom' method='post' action='tomato.cgi'>
<table id='container' cellspacing=0>
<tr><td colspan=2 id='header'>
	<div class='title'>蕃茄(Tomato)</div>
	<div class='version'>繁體中文版 <% version(); %></div>
</td></tr>
<tr id='body'><td id='navi'><script type='text/javascript'>navi()</script></td>
<td id='content'>
<div id='ident'><% ident(); %></div>

<!-- / / / -->

<input type='hidden' name='_nextpage' value='advanced-firewall.asp'>
<input type='hidden' name='_service' value='firewall-restart'>

<input type='hidden' name='block_wan'>
<input type='hidden' name='multicast_pass'>

<div class='section-title'>防火牆</div>
<div class='section'>
<script type='text/javascript'>
createFieldTable('', [
	{ title: '回應 ICMP 的 PING', name: 'f_icmp', type: 'checkbox', value: nvram.block_wan == '0' },
	{ title: '允許群體廣播', name: 'f_multicast', type: 'checkbox', value: nvram.multicast_pass == '1' },
	{ title: 'NAT Loopback', name: 'nf_loopback', type: 'select', options: [[0,'全部'],[1,'只有被轉送的封包'],[2,'關閉']], value: fixInt(nvram.nf_loopback, 0, 2, 1) }
]);


</script>
</div>
<!--//
http://www.linksysinfo.org/forums/showthread.php?t=55702&page=3
This new version of Tomato adds a third option for NAT Loopback: "Forwarded Only." 
Setting this configures iptables to loop back only traffic destined for ports that you have forwarded (i.e. made open to the Internet) 
in the manner I described in the above reply. 
I do not see any real reason to set NAT Loopback to anything other than "Forwarded Only." 
Unless you have made a server Internet-accessible (forwarded a port), 
there seems to be little reason to try to access it from your LAN using its NAT'ed public IP (or domain name). 
The one exception I could see is if you have a server in the DMZ that you want to be able to acess from your LAN using its public IP (or domain name). 
I am not sure the "Forwarded Only" setting currently accounts for such a scenario such that NAT Loopback would work for the DMZ server. 
This could be changed I guess, but it is of little concern because rarely should a server be in the DMZ anyway.
//-->
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
