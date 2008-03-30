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
<title>[<% ident(); %>] 系统状态：系统状态</title>
<link rel='stylesheet' type='text/css' href='tomato.css'>
<link rel='stylesheet' type='text/css' href='color.css'>
<script type='text/javascript' src='tomato.js'></script>

<!-- / / / -->

<style type='text/css'>
.controls {
	width: 90px;
	margin-top: 5px;
	margin-bottom: 10px;
}
</style>

<script type='text/javascript' src='debug.js'></script>

<script type='text/javascript'>
ghz = ['2.412','2.417','2.422','2.427','2.432','2.437','2.442','2.447','2.452','2.457','2.462','2.467','2.472','2.484'];
wmo = {'ap':'Access Point','sta':'Wireless Client','wet':'Wireless Ethernet Bridge','wds':'WDS'};
auth = {'disabled':'-','wep':'WEP','wpa_personal':'WPA Personal (PSK)','wpa_enterprise':'WPA Enterprise','wpa2_personal':'WPA2 Personal (PSK)','wpa2_enterprise':'WPA2 Enterprise','wpaX_personal':'WPA / WPA2 Personal','wpaX_enterprise':'WPA / WPA2 Enterprise','radius':'Radius'};
enc = {'tkip':'TKIP','aes':'AES','tkip+aes':'TKIP / AES'};
bgmo = {'disabled':'-','mixed':'Mixed B+G','b-only':'B Only','g-only':'G Only'};
</script>

<script type='text/javascript' src='status-data.jsx?_http_id=<% nv(http_id); %>'></script>

<script type='text/javascript'>
show_dhcpc = ((nvram.wan_proto == 'dhcp') || (nvram.wan_proto == 'l2tp'));
show_codi = ((nvram.wan_proto == 'pppoe') || (nvram.wan_proto == 'l2tp') || (nvram.wan_proto == 'pptp'));
show_radio = (nvram.wl_radio == '1');


function dhcpc(what)
{
	form.submitHidden('dhcpc.cgi', { exec: what, _redirect: 'status-overview.asp' });
}

function serv(service, sleep)
{
	form.submitHidden('service.cgi', { _service: service, _redirect: 'status-overview.asp', _sleep: sleep });
}

function wan_connect()
{
	serv('wan-restart', 5);
}

function wan_disconnect()
{
	serv('wan-stop', 2);
}

function wlenable(n)
{
	form.submitHidden('wlradio.cgi', { enable: '' + n, _nextpage: 'status-overview.asp', _nextwait: n ? 10 : 3 });
}

var ref = new TomatoRefresh('status-data.jsx', '', 0, 'status_overview_refresh');

ref.refresh = function(text)
{
	stats = {};
	try {
		eval(text);
	}
	catch (ex) {
		stats = {};
	}
	show();
}


function c(id, htm)
{
	E(id).cells[1].innerHTML = htm;
}

function show()
{
	c('cpu', stats.cpuload);
	c('uptime', stats.uptime);
	c('time', stats.time);
	c('freqcpu', stats.freqcpu);
	c('wanip', stats.wanip);
	c('wannetmask', stats.wannetmask);
	c('wangateway', stats.wangateway);
	c('dns', stats.dns);
	c('memory', stats.memory);

	c('wanstatus', stats.wanstatus);
	c('wanuptime', stats.wanuptime);
	if (show_dhcpc) c('wanlease', stats.wanlease);
	if (show_codi) {
		E('b_connect').disabled = stats.wanup;
		E('b_disconnect').disabled = !stats.wanup;
	}

	c('radio', wlradio ? '开启' : '<b>关闭</b>');
	if (show_radio) {
		E('b_wl_enable').disabled = wlradio;
		E('b_wl_disable').disabled = !wlradio;
	}
	c('channel', stats.channel);

	if (isClient) {
		c('rssi', wlcrssi);
		c('noise', wlnoise);
		c('qual', stats.qual);
	}
}

function earlyInit()
{
	elem.display('b_dhcpc', show_dhcpc);
	elem.display('b_connect', 'b_disconnect', show_codi);
	elem.display('wan-title', 'wan-section', nvram.wan_proto != 'disabled');
	elem.display('b_wl_enable', 'b_wl_disable', show_radio);
	show();
}

function init()
{
	ref.initPage(3000, 3);
}
</script>

</head>
<body onload='init()'>
<form>
<table id='container' cellspacing=0>
<tr><td colspan=2 id='header'>
	<div class='title'>蕃茄(Tomato)</div>
	<div class='version'>简体中文版 <% version(); %></div>
</td></tr>
<tr id='body'><td id='navi'><script type='text/javascript'>navi()</script></td>
<td id='content'>
<div id='ident'><% ident(); %></div>

<!-- / / / -->

<div class='section-title'>系统</div>
<div class='section'>
<script type='text/javascript'>
createFieldTable('', [
	{ title: '名称', text: nvram.router_name },
	{ title: '机型', text: nvram.t_model_name },
	null,
	{ title: '时间', rid: 'time', text: stats.time },
	{ title: '开机时间', rid: 'uptime', text: stats.uptime },
	{ title: 'CPU 负载 <small>(1 / 5 / 15 mins)</small>', rid: 'cpu', text: stats.cpuload },
	{ title: '总和/剩余 记忆体', rid: 'memory', text: stats.memory },
	{ title: 'CPU 频率', rid: 'freqcpu', text: stats.freqcpu }
]);
</script>
</div>

<div class='section-title' id='wan-title'>WAN</div>
<div class='section' id='wan-section'>
<script type='text/javascript'>
createFieldTable('', [
	{ title: 'MAC 地址', text: nvram.wan_hwaddr },
	{ title: 'WAN 连接类型', text: { 'dhcp':'DHCP', 'static':'固定 IP', 'pppoe':'PPPoE', 'pptp':'PPTP', 'l2tp':'L2TP' }[nvram.wan_proto] || '-' },
	{ title: 'IP 地址', rid: 'wanip', text: stats.wanip },
	{ title: '子网掩码', rid: 'wannetmask', text: stats.wannetmask },
	{ title: '网关', rid: 'wangateway', text: stats.wangateway },
	{ title: 'DNS 服服器', rid: 'dns', text: stats.dns },
	{ title: 'MTU设置', text: nvram.wan_run_mtu },
	null,
	{ title: '连线状态', rid: 'wanstatus', text: stats.wanstatus },
	{ title: '已连线时间', rid: 'wanuptime', text: stats.wanuptime },
	{ title: '剩余租用时间', rid: 'wanlease', text: stats.wanlease, ignore: !show_dhcpc }
]);
</script>
<span id='b_dhcpc' style='display:none'>
	<input type='button' class='controls' onclick='dhcpc("renew")' value='重新获取'>
	<input type='button' class='controls' onclick='dhcpc("release")' value='释放'> &nbsp;
</span>
<input type='button' class='controls' onclick='wan_connect()' value='联机' id='b_connect' style='display:none'>
<input type='button' class='controls' onclick='wan_disconnect()' value='断线' id='b_disconnect' style='display:none'>
</div>


<div class='section-title'>LAN设置</div>
<div class='section'>
<script type='text/javascript'>
if (nvram.lan_proto == 'dhcp') {
	nvram.lan_ipaddr.match(/([\d\.]+)\.\d+$/);
	s = '<a href="status-devices.asp">' + RegExp.$1 + '.' + nvram.dhcp_start + ' - ' + ((nvram.dhcp_start * 1) + (nvram.dhcp_num * 1) - 1) + '</a>';
}
else {
	s = 'Disabled';
}
createFieldTable('', [
	{ title: '路由器 MAC 地址', text: nvram.et0macaddr },
	{ title: '路由器 IP 地址', text: nvram.lan_ipaddr },
	{ title: '子网掩码', text: nvram.lan_netmask },
	{ title: '网关', text: nvram.lan_gateway, ignore: nvram.wan_proto != 'disabled' },
	{ title: 'DNS 服服器', rid: 'dns', text: stats.dns, ignore: nvram.wan_proto != 'disabled' },
	{ title: 'DHCP 服服器', text: s }
]);
</script>
</div>

<div class='section-title' id='wl-title'>无线网络设置</div>
<div class='section' id='wl-section'>
<script type='text/javascript'>
sec = auth[nvram.security_mode2];
if (sec.indexOf('WPA') != -1) sec += ' + ' + enc[nvram.wl_crypto];

wmode = wmo[nvram.wl_mode];
if ((nvram.wl_mode == 'ap') && (nvram.wds_enable * 1)) wmode += ' + WDS';

createFieldTable('', [
	{ title: 'MAC 地址', text: nvram.wl0_hwaddr },
	{ title: '无线模式', text: wmode },
	{ title: '无线模式', text: bgmo[nvram.wl_net_mode] },
	{ title: '无线电波', rid: 'radio', text: (wlradio == 0) ? '<b>关闭</b>' : '开启' },
	{ title: 'SSID', text: nvram.wl_ssid },
	{ title: '安全设置', text: sec },
	{ title: '信道选择', rid: 'channel', text: stats.channel },
	{ title: 'RSSI', rid: 'rssi', text: wlcrssi, ignore: !isClient },
	{ title: '噪声', rid: 'noise', text: wlnoise, ignore: !isClient },
	{ title: '信号质量', rid: 'qual', text: stats.qual, ignore: !isClient }
]);
</script>
<input type='button' class='controls' onclick='wlenable(1)' id='b_wl_enable' value='开启' style='display:none'>
<input type='button' class='controls' onclick='wlenable(0)' id='b_wl_disable' value='关闭' style='display:none'>
</div>

<!-- / / / -->

</td></tr>
<tr><td id='footer' colspan=2>
	<script type='text/javascript'>genStdRefresh(1,0,'ref.toggle()');</script>
</td></tr>
</table>
</form>
<script type='text/javascript'>earlyInit()</script>
</body>
</html>
