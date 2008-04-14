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
<title>[<% ident(); %>] 一般設定：時間設定</title>
<link rel='stylesheet' type='text/css' href='tomato.css'>
<link rel='stylesheet' type='text/css' href='color.css'>
<script type='text/javascript' src='tomato.js'></script>

<!-- / / / -->

<script type='text/javascript' src='debug.js'></script>

<script type='text/javascript'>

//	<% nvram("tm_sel,tm_dst,tm_tz,ntp_updates,ntp_server,ntp_tdod,ntp_kiss"); %>


var ntpList = [
	['custom', '自定'],
	['', '預設'],
	['africa', '非洲'],
	['asia', '亞洲'],
	['europe', '歐洲'],
	['oceania', '大洋洲'],
	['north-america', '北美洲'],
	['south-america', '南美洲'],
	['us', '美國']
];

/* REMOVE-BEGIN
var ntpList = [
	['custom', 'Custom'],
	['', 'pool.ntp.org'],
	['africa', 'africa.pool.ntp.org'],
	['asia', 'asia.pool.ntp.org'],
	['europe', 'europe.pool.ntp.org'],
	['oceania', 'oceania.pool.ntp.org'],
	['north-america', 'north-america.pool.ntp.org'],
	['south-america', 'south-america.pool.ntp.org'],
	['us', 'us.pool.ntp.org']
];
REMOVE-END */

function ntpString(name)
{
	if (name == '') name = 'pool.ntp.org';
		else name = name + '.pool.ntp.org';
	return '0.' + name + ' 1.' + name + ' 2.' + name;
}

function verifyFields(focused, quiet)
{
	var ok = 1;

	var s = E('_tm_sel').value;
	var f_dst = E('_f_tm_dst');
	var f_tz = E('_f_tm_tz');
	if (s == 'custom') {
		f_dst.disabled = true;
		f_tz.disabled = false;
		PR(f_dst).style.display = 'none';
		PR(f_tz).style.display = '';
	}
	else {
		f_tz.disabled = true;
		PR(f_tz).style.display = 'none';
		PR(f_dst).style.display = '';
		if (s.match(/^([A-Z]+[\d:-]+)[A-Z]+/)) {
			if (!f_dst.checked) s = RegExp.$1;
			f_dst.disabled = false;
		}
		else {
			f_dst.disabled = true;
		}
		f_tz.value = s;
	}
	
	var a = 1;
	var b = 1;
	switch (E('_ntp_updates').value * 1) {
	case -1:
		b = 0;
	case 0:
		a = 0;
		break;
	}
	elem.display(PR('_f_ntp_tdod'), a);
	
	elem.display(PR('_f_ntp_server'), b);
	a = (E('_f_ntp_server').value == 'custom');
	elem.display(PR('_f_ntp_1'), PR('_f_ntp_2'), PR('_f_ntp_3'), a && b);
	
	elem.display(PR('ntp-preset'), !a && b);

	if (a) {
		if ((E('_f_ntp_1').value == '') && (E('_f_ntp_2').value == '') && ((E('_f_ntp_3').value == ''))) {
			ferror.set('_f_ntp_1', '至少需要一台 NTP 伺服器', quiet);
			return 0;
		}
	}
	else {
		E('ntp-preset').innerHTML = ntpString(E('_f_ntp_server').value).replace(/\s+/, ', ');
	}

	ferror.clear('_f_ntp_1');
	return 1;
}

function save(clearKiss)
{
	if (!verifyFields(null, 0)) return;

	var fom, a, i;

	fom = E('_fom');
	fom.tm_dst.value = fom.f_tm_dst.checked ? 1 : 0;
	fom.tm_tz.value = fom.f_tm_tz.value;
	
	if (E('_f_ntp_server').value != 'custom') {
		fom.ntp_server.value = ntpString(E('_f_ntp_server').value);
	}
	else {
		a = [fom.f_ntp_1.value, fom.f_ntp_2.value, fom.f_ntp_3.value];
		for (i = 0; i < a.length; ) {
			if (a[i] == '') a.splice(i, 1);
				else ++i;
		}
		fom.ntp_server.value = a.join(' ');
	}
	
	fom.ntp_tdod.value = fom.f_ntp_tdod.checked ? 1 : 0;
	fom.ntp_kiss.disabled = !clearKiss;
	form.submit(fom);
}

function earlyInit()
{
	if (nvram.ntp_kiss != '') {
		E('ntpkiss-ip').innerHTML = nvram.ntp_kiss;
		E('ntpkiss').style.display = '';
	}
	verifyFields(null, 1);
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

<input type='hidden' name='_nextpage' value='basic-time.asp'>
<input type='hidden' name='_nextwait' value='5'>
<input type='hidden' name='_service' value='ntpc-restart'>
<input type='hidden' name='_sleep' value='3'>

<input type='hidden' name='tm_dst'>
<input type='hidden' name='tm_tz'>
<input type='hidden' name='ntp_server'>
<input type='hidden' name='ntp_tdod'>
<input type='hidden' name='ntp_kiss' value='' disabled>


<div class='section-title'>系統時間</div>
<div class='section'>
<script type='text/javascript'>

ntp = nvram.ntp_server.split(/\s+/);

ntpSel = 'custom';
for (i = ntpList.length - 1; i > 0; --i) {
	if (ntpString(ntpList[i][0]) == nvram.ntp_server) ntpSel = ntpList[i][0];
}

/* REMOVE-BEGIN

http://tldp.org/HOWTO/TimePrecision-HOWTO/tz.html
http://www.gnu.org/software/libc/manual/html_node/TZ-Variable.html

Canada
http://www3.sympatico.ca/c.walton/canada_dst.html
http://home-4.tiscali.nl/~t876506/Multizones.html#ca
http://www3.sympatico.ca/c.walton/canada_dst.html

Brazil
http://www.timeanddate.com/worldclock/clockchange.html?n=233
http://www.timeanddate.com/worldclock/city.html?n=479

Finland
http://www.timeanddate.com/worldclock/city.html?n=101

New Zeland
http://www.dia.govt.nz/diawebsite.nsf/wpg_URL/Services-Daylight-Saving-Index

REMOVE-END */

createFieldTable('', [
	{ title: '現在時間', text: '<span id="clock"><% time(); %></span>' },
	null,
	{ title: '時區', name: 'tm_sel', type: 'select', options: [
		['custom','自訂時區'],
		['UTC12','UTC-12:00 太平洋/夸賈林島'],
		['UTC11','UTC-11:00 中途島, 美屬薩摩亞'],
		['UTC10','UTC-10:00 夏威夷'],
		['NAST9NADT,M3.2.0/2,M11.1.0/2','UTC-09:00 阿拉斯加'],
		['PST8PDT,M3.2.0/2,M11.1.0/2','UTC-08:00 美國太平洋標準時間'],
		['UTC7','UTC-07:00 亞利桑那'],
		['MST7MDT,M3.2.0/2,M11.1.0/2','UTC-07:00 美國西部山脈時間'],
		['UTC6','UTC-06:00 墨西哥'],
		['CST6CDT,M3.2.0/2,M11.1.0/2','UTC-06:00 美國中部標準時間'],
		['UTC5','UTC-05:00 哥倫比亞,巴拿馬'],
		['EST5EDT,M3.2.0/2,M11.1.0/2','UTC-05:00 美國東部標準時間'],
		['VET4:30','UTC-04:30 委內瑞拉'],
		['BOT4','UTC-04:00 玻利維亞'],
		['AST4ADT,M3.2.0/2,M11.1.0/2','UTC-04:00 大西洋時間'],
		['BRWST4BRWDT,M10.3.0/0,M2.5.0/0','UTC-04:00 巴西西部'],
		['NST3:30NDT,M3.2.0/0:01,M11.1.0/0:01','UTC-03:30 加拿大紐芬蘭'],
		['WGST3WGDT,M3.5.6/22,M10.5.6/23','UTC-03:00 格陵蘭'],
		['BRST3BRDT,M10.3.0/0,M2.5.0/0','UTC-03:00 巴西東部'],
		['UTC3','UTC-03:00 蓋亞那'],
		['UTC2','UTC-02:00 大西洋中部'],
		['STD1DST,M3.5.0/2,M10.5.0/2','UTC-01:00 大西洋/亞速爾群島'],
		['UTC0','UTC+00:00 甘比亞, 賴比瑞亞, 摩洛哥'],
		['GMT0BST,M3.5.0/2,M10.5.0/2','UTC+00:00 英國'],
		['UTC-1','UTC+01:00 突尼西亞'],
		['STD-1DST,M3.5.0/2,M10.5.0/2','UTC+01:00 法國,德國,義大利,瑞典'],
		['UTC-2','UTC+02:00 南非'],
		['STD-2DST,M3.5.0/2,M10.5.0/2','UTC+02:00 希臘,烏克蘭,羅馬尼亞,土耳其'],
		['UTC-3','UTC+03:00 伊拉克,約旦,科威特'],
		['EET-2EEST-3,M3.5.0/3,M10.5.0/4','UTC+03:00 芬蘭'],
		['UTC-4','UTC+04:00 亞美尼亞'],
		['UTC-5','UTC+05:00 巴基斯坦, 俄羅斯'],
		['UTC-5:30','UTC+05:30 孟買,加爾各答,千奈,新德里'],
		['UTC-6','UTC+06:00 孟加拉,俄國'],
		['UTC-7','UTC+07:00 泰國, 俄羅斯'],
		['UTC-8','UTC+08:00 台灣, 中國, 香港, 澳洲西部, 新加坡, 俄羅斯'],
		['UTC-9','UTC+09:00 日本, 韓國'],
		['ACST-9:30ACDT,M10.1.0/2,M4.1.0/3', 'UTC+09:30 南澳洲'],
		['UTC-10','UTC+10:00 關島, 俄羅斯'],
		['STD-10DST,M10.5.0/2,M3.5.0/2','UTC+10:00 澳洲'],
		['UTC-11','UTC+11:00 所羅門群島'],
		['UTC-12','UTC+12:00 斐濟'],
		['NZST-12NZDT,M9.5.0/2,M4.1.0/3','UTC+12:00 紐西蘭']
	], value: nvram.tm_sel },
	{ title: '日光節約時間', indent: 2, name: 'f_tm_dst', type: 'checkbox', value: nvram.tm_dst != '0' },
	{ title: '自訂 時區 字串', indent: 2, name: 'f_tm_tz', type: 'text', maxlen: 32, size: 34, value: nvram.tm_tz || '' },
	null,
	{ title: '時間同步', name: 'ntp_updates', type: 'select', options: [[-1,'不同步'],[0,'啟動時更新'],[1,'每小時'],[2,'每兩小時'],[4,'每四小時'],[6,'每六小時'],[8,'每八小時'],[12,'半天一次'],[24,'每天一次']],
		value: nvram.ntp_updates },
	{ title: '需要時同步', indent: 2, name: 'f_ntp_tdod', type: 'checkbox', value: nvram.ntp_tdod != '0' },
	{ title: 'NTP 伺服器', name: 'f_ntp_server', type: 'select', options: ntpList, value: ntpSel },
	{ title: '&nbsp;', text: '<small><span id="ntp-preset">xx</span></small>', hidden: 1 },
	{ title: '', name: 'f_ntp_1', type: 'text', maxlen: 48, size: 50, value: ntp[0] || 'pool.ntp.org', hidden: 1 },
	{ title: '', name: 'f_ntp_2', type: 'text', maxlen: 48, size: 50, value: ntp[1] || '', hidden: 1 },
	{ title: '', name: 'f_ntp_3', type: 'text', maxlen: 48, size: 50, value: ntp[2] || '', hidden: 1 }
]);
</script>
</div>
<br><br>

<div id='ntpkiss' style='display:none'>
下列的 NTP 伺服器已被伺服端自動封鎖:
<b id='ntpkiss-ip'></b>
<div>
	<input type='button' value='清除' onclick='save(1)'>
</div>
</div>

<!-- / / / -->

</td></tr>
<tr><td id='footer' colspan=2>
	<span id='footer-msg'></span>
	<input type='button' value='儲存' id='save-button' onclick='save(0)'>
	<input type='button' value='取消' id='cancel-button' onclick='reloadPage();'>
</td></tr>
</table>
</form>
<script type='text/javascript'>earlyInit()</script>
</body>
</html>
