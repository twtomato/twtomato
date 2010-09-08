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
#		Tomato Toastman Mod GUI 中文化(zh_TW.UTF-8)
#		版本: 1.28.7616
#		版權: GNU General Public License v2
#		http://code.google.com/p/twtomato/
#		http://digiland.tw/
################################################

#
#	status-overview.asp
#
s/title: 'CPU Frequency (MHz)'/title: 'CPU 頻率 (MHz)'/g
s/title: 'Previous WAN IP'/title: '上次的 WAN IP'/g
s/title: 'ISP Concentrator ID'/title: 'ISP 集訊器 ID'/g

#
#	advanced-misc.asp
#
s/title: 'CPU Frequency \*'/title: 'CPU 頻率 *'/g

#
#	qos-settings.asp
#
s/\['Service','Game\/VOIP','Media','Remote','WWW', 'Mail', 'Messenger','Download','P2P\/Bulk','Crawl']/['服務','遊戲\/網路電話','媒體','遠端','WWW', '郵件', '即時通訊','下載','P2P\/Bulk','Crawl']/g

#
#	new-qoslimit.asp
#
s/New: QoS Limit/頻寬限速：QoS 限速/g
s/\['TC Tag', 'IP Address', 'DLRate', 'DLCeil', 'ULRate', 'ULCeil', 'Priority', 'TCP Limit', 'UDP Limit']/['TC Tag', 'IP 位址', 'DLRate', 'DLCeil', 'ULRate', 'ULCeil', '優先權', 'TCP Limit', 'UDP Limit']/g
s/>QoS Limit</>QoS 限速(QoS Limit)</g
s/title: 'Enable QoS Limit'/title: '啟用 QoS 限速'/g
s/title: 'Download Bandwidth'/title: '下載頻寬'/g
s/title: 'Upload Bandwidth'/title: '上傳頻寬'/g

#
#	new-arpbind.asp
#
s/New: ARP Binding/頻寬限速：ARP 綁定/g
s/\['MAC Address', 'IP Address']/['MAC 位址', 'IP 位址']/g
s/>ARP Binding</>ARP 綁定(ARP Binding)</g
s/title: 'Enable ARP Binding'/title: '啟用 ARP 綁定'/g
s/title: 'Limit unlisted machines'/title: '限速未列表的機器'/g

#
#	about.asp
#
s/<b>Tomato Firmware v</<b>土司超人(Toastman)衍生版本: v</g
s/<b>Based on/<b>基於/g