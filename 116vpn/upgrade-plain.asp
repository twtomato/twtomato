<!--
	Tomato GUI
	Copyright (C) 2006-2007 Jonathan Zarate
	http://www.polarcloud.com/tomato/

	For use with Tomato Firmware only.
	No part of this file may be used without permission.
-->
<html><head><title>韌體升級</title></head>
<body>
<h1>韌體升級</h1>

<br>
<b>WARNING</b><br>
<br>
There is no upload status information in this page and there will be no change
in the display after the Upgrade button is pushed.<br>
<br>
! 請勿重覆按 [ 升級 ] 按鈕.<br>
! 請勿中斷瀏覽器.<br>
! 請勿中斷路由器.<br>
<br>
It may take up to 3 minutes to upload and complete the upgrade process.<br>
<br>
<br>

<form name="firmware_upgrade" method="post" action="upgrade.cgi" encType="multipart/form-data">
<input type="hidden" name="submit_button" value="Upgrade">
Firmware: <input type="file" name="file"> <input type="submit" value="Upgrade">
</form>
</body></html>
