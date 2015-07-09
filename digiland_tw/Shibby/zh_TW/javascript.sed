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
#	tomato.js
#
s/\['IP\/MAC BW Limiter',/['IP\/MAC 頻寬限速',/g
s/\['IP\/MAC BW Limit',/['QoS 限速',/g
s/\['ARP Binding',/['ARP 綁定',/g
s/\['Bandwidth Limiter',/['頻寬管理',/g
s/\['Captive Portal',/['網頁認證',/g
s/\['IP Traffic',/['IP流量監控',/g
s/\['Transfer Rates',/['傳輸速率',/g
s/\['Static DHCP\/ARP\/IPT',/['靜態 DHCP\/ARP\/IPT',/g
s/\['Conntrack\/Netfilter',/['連線追蹤\/過濾',/g
s/\['LAN Access',/['LAN 控制',/g
s/\['Virtual Wireless',/['虛擬無線網路',/g
s/\['Basic IPv6',/['IPv6 基本設定',/g
s/\['UPS Monitor',/['UPS 監控',/g
s/\['BitTorrent Client',/['BT 離線下載',/g
s/\['OpenVPN Server',/['OpenVPN 伺服器',/g
s/\['OpenVPN Client',/['OpenVPN 客戶端',/g
s/\['PPTP Server',/['PPTP 伺服器',/g
s/\['PPTP Online',/['PPTP 連線狀態',/g
s/\['IP Traffic Monitoring',/['IP 流量監控',/g
s/\['Buttons\/LED',/['按鈕\/LED燈號',/g
s/\['NFS Server',/['NFS 伺服器',/g
s/\['SNMP',/['SNMP 設定',/g
s/\['UPnP\/NAT-PMP',/['UPnP\/NAT-PMP 設定',/g
s/\['TOR Project',/['TOR 設定',/g
s/\['VLAN',/['VLAN 設定',/g
s/\['DHCP\/DNS',/['DHCP\/DNS 設定',/g
s/\['IPv6',/['IPv6 設定',/g
s/' - invalid IP address range'/' - 無效的 IP 範圍'/g
s/' - invalid netmask'/' - 無效的子網路遮罩'/g
s/' - invalid IP address'/' - 無效的 IP 位址'/g
s/"Invalid name. Only characters \\"A-Z 0-9 . -\\" are allowed."/"無效的名稱. 只允許使用 \\"A-Z 0-9 . -\\" 等字元."/g
s/' - invalid IPv6 address range'/' - 無效的 IPv6 範圍'/g
s/' - invalid IPv6 address'/' - 無效的 IPv6 位址'/g
s/' - invalid CIDR notation on IPv6 address'/' - 無效的 IPv6 CIDR 標記'/g
s/'Too many addresses'/'太多 IP 位址'/g
s/'Invalid domain name or IP address'/'無效的網域名稱或 IP 位址'/g
s/', or invalid domain name'/', 或無效的網域名稱'/g
s/'Too many hostnames.'/'太多的主機名稱.'/g
s/'Invalid hostname.'/'無效的主機名稱.'/g
s/'Invalid hostname. Only "A-Z 0-9" and "-" in the middle are allowed (up to 63 characters).'/'無效的主機名稱. 只限使用 "A-Z 0-9" 及 "-" 等字元(最多 63 個字元).'/g
s/'Invalid ' + name + ': \\"<\\" ' + (checklist ? 'or \\">\\" are' : 'is') + ' not allowed.'/'無效的 ' + name + ': \\"<\\" ' + (checklist ? '或 \\">\\" 是' : '是') + ' 不允許的.'/g
s/'Please start at the \/ root directory.'/'請於 \/ 根目錄開始.'/g
s/\['Web Server',/\['Web 伺服器',/g
s/\['MySQL Server',/\['MySQL 伺服器',/g
s/\['System Commands',/\['系統指令',/g
s/\['Tinc Daemon',/\['Tinc 服務',/g


#
#	bwm-hist.js
#
s/>IP Traffic monitoring disabled.</>IP 流量監控已關閉.</g
s/>The cstats program is not responding or is busy. Try reloading after a few seconds.</>cstats 程式無回應或忙碌中. 請稍候再重新載入.</g


#
#	status-data.jsx
#
s/'Severe' : 'Acceptable'/'嚴重的' : '可接受'/g


#
#	wireless.js
#
s/ strongest: "'/ 訊號最強的是: "'/g

