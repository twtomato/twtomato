########################################
#		Tomato GUI
#		Copyright (C) 2006-2009 Jonathan Zarate
#		http://www.polarcloud.com/tomato/
#
#		For use with Tomato Firmware only.
#		No part of this file may be used without permission.	
#--------------------------------------------------------
#		Tomato GUI 中文化(zh_TW.UTF-8)
#		版本: 1.27
#		版權: GNU General Public License v2
#		http://code.google.com/p/twtomato/
#		http://digiland.tw/
########################################

#
#	tomato.js
#
s/\['Status',/\['系統狀態',/g
s/\['Overview',/\['系統狀態',/g
s/\['Device List',/\['連線設備列表',/g
s/\['Logs',/\['日誌紀錄檔',/g
s/\['Bandwidth',/\['頻寬監控',/g
s/\['Real-Time',/\['即時流量',/g
s/\['Last 24 Hours',/\['24小時內流量',/g
s/\['Daily',/\['每日流量',/g
s/\['Weekly',/\['每週流量',/g
s/\['Monthly',/\['每月流量',/g
s/\['Tools',/\['診斷工具',/g
s/\['Ping',/\['Ping',/g
s/\['Trace',/\['路由追蹤',/g
s/\['Wireless Survey',/\['搜尋無線基地臺',/g
s/\['WOL',/\['網路喚醒',/g
s/\['Basic',/\['一般設定',/g
s/\['Network',/\['網路',/g
s/\['Identification',/\['基本資料',/g
s/\['Time',/\['時間',/g
s/\['DDNS',/\['動態 DNS',/g
s/\['Static DHCP',/\['靜態 DHCP',/g
s/\['Wireless Filter',/\['無線存取控制',/g
s/\['Advanced',/\['進階設定',/g
s/\['Conntrack \/ Netfilter',/\['連線追蹤\/過濾模組',/g
s/\['DHCP \/ DNS',/\['DHCP \/ DNS',/g
s/\['Firewall',/\['防火牆',/g
s/\['MAC Address',/\['MAC 位址',/g
s/\['Miscellaneous',/\['其他設定',/g
s/\['Routing',/\['路由表',/g
s/\['Wireless',/\['無線網路參數',/g
s/\['Port Forwarding',/\['通訊埠轉送',/g
s/\['Basic',/\['一般設定',/g
s/\['DMZ',/\['虛擬非軍事區',/g
s/\['Triggered',/\['通訊埠轉發',/g
s/\['UPnP \/ NAT-PMP',/\['UPnP \/ NAT-PMP',/g
s/\['QoS',/\['頻寬管理',/g
s/\['Basic Settings',/\['一般設定',/g
s/\['Classification',/\['分等機制',/g
s/\['View Graphs',/\['圖形分析',/g
s/\['View Details',/\['連線列表',/g
s/\['Access Restriction',/\['網路瀏覽限制',/g
s/\['Administration',/\['路由器管理設定',/g
s/\['Admin Access',/\['密碼\/遠端連線',/g
s/\['Bandwidth Monitoring',/\['頻寬監控設定',/g
s/\['Buttons \/ LED',/\['功能按鈕 \/ LED',/g
s/\['CIFS Client',/\['連接網路芳鄰',/g
s/\['Configuration',/\['出廠預設值',/g
s/\['Debugging',/\['除錯',/g
s/\['JFFS2',/\['JFFS2',/g
s/\['Logging',/\['日誌紀錄檔管理',/g
s/\['Scheduler',/\['定時重開機\/連線',/g
s/\['Scripts',/\['系統指令檔',/g
s/\['Upgrade',/\['韌體更新',/g
s/\['About',/\['關於 Tomato',/g
s/\['Reboot...',/\['重開機...',/g
s/\['Shutdown...',/\['關機...',/g
s/\['Logout',/\['登出',/g

#
#	bwm-common.js
#		var colors[]
#
s/\['Green \&amp; Blue', '#118811', '#6495ed'\], \['Blue \&amp; Orange', '#003EBA', '#FF9000'\],/\['綠色 \&amp; 藍色', '#118811', '#6495ed'\], \['藍色 \&amp; 橘色', '#003EBA', '#FF9000'\],/g
s/\['Blue \&amp; Red', '#003EDD', '#CC4040'\], \['Blue', '#22f', '#225'\], \['Gray', '#000', '#999'\],/\['藍色 \&amp; 紅色', '#003EDD', '#CC4040'\], \['藍色', '#22f', '#225'\], \['灰色', '#000', '#999'\],/g
s/\['Red \&amp; Black', '#d00', '#000'\]\];/\['紅色 \&amp; 黑色', '#d00', '#000'\]\];/g
