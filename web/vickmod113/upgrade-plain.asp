<!--
	Tomato GUI
	Copyright (C) 2006-2007 Jonathan Zarate
	http://www.polarcloud.com/tomato/

	For use with Tomato Firmware only.
	No part of this file may be used without permission.
-->
<html><head><title>韌體更新</title></head>
<body>
<h1>韌體更新</h1>

<br>
<b>請注意</b><br>
<br>
There is no upload status information in this page and there will be no change
in the display after the Upgrade button is pushed.<br>
<br>
! Do not push the upgrade button more than once.<br>
! Do not interrupt the browser.<br>
! Do not interrupt the router.<br>
<br>
It may take up to 3 minutes to upload and complete the upgrade process.<br>
<br>
<br>

<form name="firmware_upgrade" method="post" action="upgrade.cgi" encType="multipart/form-data">
<input type="hidden" name="submit_button" value="Upgrade">
Firmware: <input type="file" name="file"> <input type="submit" value="Upgrade">
</form>
</body></html>
