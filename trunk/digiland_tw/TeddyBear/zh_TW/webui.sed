################################################
#		Tomato GUI
#		Copyright (C) 2006-2009 Jonathan Zarate
#		http://www.polarcloud.com/tomato/
#
#		For use with Tomato Firmware only.
#		No part of this file may be used without permission.	
#-------------------------------------------------------------------
#		Tomato Teddy Bear Mod GUI
#		Copyright (C) 2008-2010 Fedor Kozhevnikov and Ray Van Tassle
#		http://sourceforge.net/projects/tomatousb/
#
#		VPN integration and GUI
#		Copyright (C) 2010 Keith Moyer, tomatovpn@keithmoyer.com
#		http://tomatovpn.keithmoyer.com/
#-------------------------------------------------------------------
#		Tomato Teddy Bear Mod GUI 中文化(zh_TW.UTF-8)
#		版本: 1.27.8745
#		版權: GNU General Public License v2
#		http://code.google.com/p/twtomato/
#		http://digiland.tw/
################################################

#
#	status-overview.asp
#
s/title: 'Wireless Network Mode',/title: '無線網路模式',/g
s/title: 'Channel Width',/title: '頻道寬度',/g
s/title: 'Rate',/title: 'Rate',/g

#
#	status-devices.asp
#
s/\['Interface', 'MAC Address', 'IP Address', 'Name', 'RSSI &nbsp; &nbsp; ', 'Quality', 'TX\/RX Rate&nbsp;', 'Lease &nbsp; &nbsp; ']/['介面', 'MAC 位址', 'IP 位址', '名稱', 'RSSI \&nbsp; \&nbsp; ', '品質', 'Tx\/Rx Rate\&nbsp;', '剩餘租約 \&nbsp; \&nbsp; ']/g

#
#	status-log.asp
#

#
#	bwm-realtime.asp
#

#
#	bwm-24.asp
#

#
#	bwm-daily.asp
#

#
#	bwm-weekly.asp
#

#
#	bwm-monthly.asp
#

#
#	tools-ping.asp
#

#
#	tools-trace.asp
#

#
#	tools-shell.asp
#
s/>Execute System Commands</>執行系統指令</g
s/value='Execute'/value='執行'/g
