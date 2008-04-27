<!DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.0//EN'>
<!--
	Tomato GUI
	Copyright (C) 2006-2007 Jonathan Zarate
	http://www.polarcloud.com/tomato/

	For use with Tomato Firmware only.
	No part of this file may be used without permission.

	MMC admin module by Augusto Bott
-->
<html>
<head>
<meta http-equiv='content-type' content='text/html;charset=utf-8'>
<meta name='robots' content='noindex,nofollow'>
<title>[<% ident(); %>] Admin: SD/MMC</title>
<link rel='stylesheet' type='text/css' href='tomato.css'>
<link rel='stylesheet' type='text/css' href='color.css'>
<script type='text/javascript' src='tomato.js'></script>

<!-- / / / -->

<script type='text/javascript' src='debug.js'></script>

<script type='text/javascript'>

//	<% nvram("mmc_on,mmc_fs_partition,mmc_fs_type,mmc_exec_mount,mmc_exec_umount"); %>
var mmc_once_enabled=nvram.mmc_on;

function verifyFields(focused, quiet)
{
	var b = !E('_f_mmc_on').checked;
	E('_f_mmc_fs_partition').disabled = b;
	E('_f_mmc_fs_type').disabled = b;
	E('_f_mmc_exec_mount').disabled = b;
	E('_f_mmc_exec_umount').disabled = b;
	return 1;
}

function save()
{
	if (!verifyFields(null, 0)) return;

	var fom = E('_fom');
	var on = E('_f_mmc_on').checked ? 1 : 0;
	fom.mmc_on.value = on;

	fom.mmc_fs_partition.value = E('_f_mmc_fs_partition').value;
	fom.mmc_fs_type.value = E('_f_mmc_fs_type').value;
	fom.mmc_exec_mount.value = E('_f_mmc_exec_mount').value;
	fom.mmc_exec_umount.value = E('_f_mmc_exec_umount').value;

	if ((!on) && (mmc_once_enabled=='1')) E('fmsg').style.visibility = 'visible';

	fom._commit.value = 1;
	fom._nextwait.value = on ? 15 : 5;
	form.submit(fom, 1);
}

function submit_complete()
{
	reloadPage();
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

<input type='hidden' name='_nextpage' value='admin-mmc.asp'>
<input type='hidden' name='_nextwait' value='10'>
<input type='hidden' name='_service' value='mmc-restart'>
<input type='hidden' name='_commit' value='1'>

<input type='hidden' name='mmc_on'>
<input type='hidden' name='mmc_fs_partition'>
<input type='hidden' name='mmc_fs_type'>
<input type='hidden' name='mmc_exec_mount'>
<input type='hidden' name='mmc_exec_umount'>

<div class='section-title'>SD/MMC</div>
<div class='section'>
<script type='text/javascript'>
<% statfs("/mmc", "mmc"); %>

mmcon = (nvram.mmc_on == 1);
createFieldTable('', [
	{ title: '開啟', name: 'f_mmc_on', type: 'checkbox', value: mmcon },
	{ title: 'Filesystem', name: 'f_mmc_fs_type', type: 'select', options: [['ext2','ext2'],['ext3','ext3'],['vfat','vfat']], value: nvram.mmc_fs_type },
	{ title: 'Partition', name: 'f_mmc_fs_partition', type: 'select', options: [[1,1],[2,2],[3,3],[4,4]], value: nvram.mmc_fs_type },
	null,
	{ title: 'Execute after mount', name: 'f_mmc_exec_mount', type: 'text', maxlen: 64, size: 34, value: nvram.mmc_exec_mount },
	{ title: 'Execute before umount', name: 'f_mmc_exec_umount', type: 'text', maxlen: 64, size: 34, value: nvram.mmc_exec_umount },
	null,
	{ title: '總容量/可用空間', text: ((mmcon) && (mmc.size)) ? (scaleSize(mmc.size) + ' / ' + scaleSize(mmc.free)) : '(未掛載)' },
	null,
	{ title: '',text: '<span style="background:#b55;color:#fff;padding:1px 8px;visibility:hidden" id="fmsg">Rebooting your router before re-enabling any MMC cards may be a good idea...</span>' }
]);

</script>
</div>

<script type='text/javascript'>show_notice1('<% notice("mmc"); %>');</script>

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
