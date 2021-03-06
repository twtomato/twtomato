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
<title>[<% ident(); %>]IP 限速: 設定 IP 限速</title>
<link rel='stylesheet' type='text/css' href='tomato.css'>
<link rel='stylesheet' type='text/css' href='color.css'>
<script type='text/javascript' src='tomato.js'></script>

<!-- / / / -->
<style type='text/css'>
#qosg-grid {
	width: 100%;
}
#qosg-grid .co1 {
	width: 6%;
}
#qosg-grid .co2 {
	width: 32%;
}
#qosg-grid .co3,
#qosg-grid .co4,
#qosg-grid .co5,
#qosg-grid .co6 {
	width: 8%;
}
#qosg-grid .co7,
#qosg-grid .co8,
#qosg-grid .co9 {
	width: 10%;
}
</style>

<script type='text/javascript' src='debug.js'></script>

<script type='text/javascript'>
// <% nvram("new_qoslimit_enable,new_qoslimit_ibw,new_qoslimit_obw,new_qoslimit_rules"); %>

var class_prio = [['0','Highest'],['1','High'],['2','Normal'],['3','Low'],['4','Lowest']];
var class_tcp = [['0','nolimit']];
var class_udp = [['0','nolimit']];
for (var i = 1; i <= 100; ++i) {
	class_tcp.push([i*10, i*10+'']);
	class_udp.push([i, i + '/s']);
}
var qosg = new TomatoGrid();

qosg.setup = function() {
	this.init('qosg-grid', '', 20, [
		{ type: 'text', maxlen: 2 },
		{ type: 'text', maxlen: 31 },
		{ type: 'text', maxlen: 6 },
		{ type: 'text', maxlen: 6 },
		{ type: 'text', maxlen: 6 },
		{ type: 'text', maxlen: 6 },
		{ type: 'select', options: class_prio },
		{ type: 'select', options: class_tcp },
		{ type: 'select', options: class_udp }]);
	this.headerSet(['TC Tag', 'IP Address', 'DLRate', 'DLCeil', 'ULRate', 'ULCeil', 'Priority', 'TCP Limit', 'UDP Limit']);
	var qoslimitrules = nvram.new_qoslimit_rules.split('>');
	for (var i = 0; i < qoslimitrules.length; ++i) {
		var t = qoslimitrules[i].split('<');
		if (t.length == 9) this.insertData(-1, t);
	}
	this.showNewEditor();
	this.resetNewEditor();
}

qosg.dataToView = function(data) {
	return [data[0],data[1],data[2]+'kbps',data[3]+'kbps',data[4]+'kbps',data[5]+'kbps',class_prio[data[6]*1][1],class_tcp[data[7]*1/10][1],class_udp[data[8]*1][1]];
}

qosg.resetNewEditor = function() {
	var f = fields.getAll(this.newEditor);
	var data = this.getAllData();
	var tag = '9';

	for (var i = 0; i < data.length; ++i) {	
		if (parseInt(data[i][0], 10) > parseInt(tag, 10))
			tag = data[i][0];
	}
	
	tag = parseInt(tag, 10)+1;

	f[0].value = tag+'';
	f[1].value = '';
	f[2].value = '';
	f[3].value = '';
	f[4].value = '';
	f[5].value = '';
	f[6].selectedIndex = '2';
	f[7].selectedIndex = '0';
	f[8].selectedIndex = '0';
	ferror.clearAll(fields.getAll(this.newEditor));
}

qosg.exist = function(f, v)
{
	var data = this.getAllData();
	for (var i = 0; i < data.length; ++i) {
		if (data[i][f] == v) return true;
	}
	return false;
}

qosg.existID = function(id)
{
	return this.exist(0, id);
}

qosg.existIP = function(ip)
{
	if (ip == "0.0.0.0") return true;
	return this.exist(1, ip);
}

qosg.checkRate = function(rate)
{
	var s = parseInt(rate, 10);
	if( isNaN(s) || s <= 0 || a >= 100000 ) return true;
	return false;
}

qosg.checkRateCeil = function(rate, ceil)
{
	var r = parseInt(rate, 10);
	var c = parseInt(ceil, 10);
	if( r > c ) return true;
	return false;
}

qosg.verifyFields = function(row, quiet)
{
	var ok = 1;
	var f = fields.getAll(row);
	var s;

	if (v_range(f[0], quiet, 10, 99)) {
		if(this.existID(f[0].value)) {
			ferror.set(f[0], 'TC Tag 封包標籤 必須介於,10 至 99', quiet);
			ok = 0;
		}
	}

	if (v_ip(f[1], quiet)) {
		if(this.existIP(f[1].value)) {
			ferror.set(f[1], 'IP 重覆', quiet);
			ok = 0;
		}
	}

	if( this.checkRate(f[2].value)) {
		ferror.set(f[2], '下載保證頻寬DLRate 必須 介於 1 至 99999', quiet);
		ok = 0;
	}

	if( this.checkRate(f[3].value)) {
		ferror.set(f[3], '下載最大頻寬DLCeil 必須 介於 1 至 99999', quiet);
		ok = 0;
	}

	if( this.checkRateCeil(f[2].value, f[3].value)) {
		ferror.set(f[3], '下載最大頻寬DLCeil 必須 大於 下載保證頻寬DLRate', quiet);
		ok = 0;
	}

	if( this.checkRate(f[4].value)) {
		ferror.set(f[4], '上傳保證頻寬ULRate 必須 介於 1 至 99999', quiet);
		ok = 0;
	}

	if( this.checkRate(f[5].value)) {
		ferror.set(f[5], '上傳最大頻寬ULCeil 必須 介於 1 至 99999', quiet);
		ok = 0;
	}

	if( this.checkRateCeil(f[4].value, f[5].value)) {
		ferror.set(f[5], '上傳最大頻寬ULCeil 必須 大於 上傳保證頻寬ULRate', quiet);
		ok = 0;
	}

	return ok;
}

function verifyFields(focused, quiet)
{
	return 1;
}

function save()
{
	if (qosg.isEditing()) return;

	var data = qosg.getAllData();
	var qoslimitrules = '';
	var i;

	if (data.length != 0) qoslimitrules += data[0].join('<');	
	for (i = 1; i < data.length; ++i) {
		qoslimitrules += '>' + data[i].join('<');
	}

	var fom = E('_fom');
	fom.new_qoslimit_enable.value = E('_f_new_qoslimit_enable').checked ? 1 : 0;
	fom.new_qoslimit_rules.value = qoslimitrules;
	form.submit(fom, 1);
}

function init()
{
	qosg.recolor();
}
</script>
</head>
<body onload='init()'>
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

<input type='hidden' name='_nextpage' value='new-qoslimit.asp'>
<input type='hidden' name='_nextwait' value='10'>
<input type='hidden' name='_service' value='qoslimit-restart'>

<input type='hidden' name='new_qoslimit_enable'>
<input type='hidden' name='new_qoslimit_rules'>

<div class='section-title'>啟用 IP 限速 請關閉 頻寬管理QOS </div>
<div class='section'>
<script type='text/javascript'>
createFieldTable('', [
	{ title: '啟用 IP 限速', name: 'f_new_qoslimit_enable', type: 'checkbox', value: nvram.new_qoslimit_enable != '0' },
	{ title: '下載頻寬', name: 'new_qoslimit_ibw', type: 'text', maxlen: 6, size: 8, suffix: ' <small>kbit/s</small>', value: nvram.new_qoslimit_ibw },
	{ title: '上傳頻寬', name: 'new_qoslimit_obw', type: 'text', maxlen: 6, size: 8, suffix: ' <small>kbit/s</small>', value: nvram.new_qoslimit_obw }
]);
</script>
<br>
<table class='tomato-grid' id='qosg-grid'></table>
</div>

<div>
<ul>
<li><b>啟用 IP 限速 時請關閉 頻寬管理QoS</b>
<li><b>'TC Tag' 封包標籤,</b>
<li><b>'IP Address' IP 位址</b>
<li><b>'DLRate' 下載保證頻寬, 'DLCeil' 下載最大頻寬 'ULRate'上傳保證頻寬, 'ULCeil' 上傳最大頻寬,</b>
<li><b>'Priority' 優先權,</b>
<li><b>'TCP Limit' TCP 連線限制. 'UDP Limit' UDP 連線限制.</b>
</ul>
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
<script type='text/javascript'>qosg.setup();</script>
</body>
</html>