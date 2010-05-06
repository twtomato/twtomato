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
s/title: 'Wireless Network Mode'/title: '無線網路模式'/g
s/title: 'Channel Width'/title: '頻道寬度'/g
s/title: 'Rate'/title: '速率'/g

#
#	status-devices.asp
#
s/\['Interface', 'MAC Address', 'IP Address', 'Name', 'RSSI &nbsp; &nbsp; ', 'Quality', 'TX\/RX Rate&nbsp;', 'Lease &nbsp; &nbsp; ']/['連線介面', 'MAC 位址', 'IP 位址', '設備名稱', 'RSSI \&nbsp; \&nbsp; ', '品質', '傳送\/接收 速率\&nbsp;', '剩餘租約 \&nbsp; \&nbsp; ']/g

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
s/Tools: System Commands/診斷工具：系統指令/g
s/>Execute System Commands</>執行系統指令(Execute System Commands)</g
s/value='Execute'/value='執行'/g

#
#	tools-survey.asp
#

#
#	tools-wol.asp
#

#
#	basic-network.asp
#
s/\[\['mixed','Auto'],\['b-only','B Only'],\['g-only','G Only']]/[['mixed','自動'],['b-only','僅 802.11b'],['g-only','僅 802.11g']]/g
s/\['bg-mixed','B\/G Mixed']/['bg-mixed','B\/G 混合']/g
s/\['n-only','N Only']/['n-only','僅 802.11n']/g
s/title: 'Use DHCP'/title: '使用 DHCP'/g

#
#	basic-ident.asp
#

#
#	basic-time.asp
#
s/'UTC+08:00 China, Hong Kong, Western Australia, Singapore, Taiwan'/'UTC+08:00 臺灣, 中國, 香港, 澳洲西部, 新加坡'/g

#
#	basic-ddns.asp
#

#
#	basic-static.asp
#

#
#	basic-wfilter.asp
#

#
#	advanced-ctnf.asp
#
s/>Other Timeouts</>其他逾時(Other Timeouts)</g

#
#	advanced-dhcpdns.asp
#

#
#	advanced-firewall.asp
#

#
#	advanced-mac.asp
#
s/>Router's LAN MAC Address:</>路由器 LAN MAC:</g

#
#	advanced-misc.asp
#
s/title: 'Enable Jumbo Frames \*'/title: '啟用 Jumbo Frames *'/g
s/title: 'Jumbo Frame Size \*'/title: 'Jumbo Frame 大小 *'/g
s/' <small>Bytes (range: 1 - 9720; default: 2000)/' <small>位元組 (範圍: 1 - 9720; 預設: 2000)/g

#
#	advanced-routing.asp
#
s/title: 'DHCP Routes'/title: 'DHCP 路由'/g

#
#	advanced-wireless.asp
#
s/\/\/	<% wlcountries(); %>/wl_countries = \[ \['DZ', 'ALGERIA'],\['AS', 'AMERICAN SAMOA'],\['AG', 'ANTIGUA AND BARBUDA'],\['AR', 'ARGENTINA'],\['AW', 'ARUBA'],\['AU', 'AUSTRALIA'],\['AT', 'AUSTRIA'],\['AZ', 'AZERBAIJAN'],\['BS', 'BAHAMAS'],\['BH', 'BAHRAIN'],\['BD', 'BANGLADESH'],\['BB', 'BARBADOS'],\['BY', 'BELARUS'],\['BE', 'BELGIUM'],\['BM', 'BERMUDA'],\['BT', 'BHUTAN'],\['BO', 'BOLIVIA'],\['BA', 'BOSNIA AND HERZEGOVINA'],\['BR', 'BRAZIL'],\['BN', 'BRUNEI DARUSSALAM'],\['BG', 'BULGARIA'],\['KH', 'CAMBODIA'],\['CA', 'CANADA'],\['CV', 'CAPE VERDE'],\['KY', 'CAYMAN ISLANDS'],\['CL', 'CHILE'],\['CN', 'CHINA'],\['CX', 'CHRISTMAS ISLAND'],\['CO', 'COLOMBIA'],\['CR', 'COSTA RICA'],\['HR', 'CROATIA'],\['CY', 'CYPRUS'],\['CZ', 'CZECH REPUBLIC'],\['DK', 'DENMARK'],\['DM', 'DOMINICA'],\['DO', 'DOMINICAN REPUBLIC'],\['EC', 'ECUADOR'],\['EG', 'EGYPT'],\['SV', 'EL SALVADOR'],\['EE', 'ESTONIA'],\['ET', 'ETHIOPIA'],\['FK', 'FALKLAND ISLANDS (MALVINAS)'],\['FI', 'FINLAND'],\['FR', 'FRANCE'],\['GF', 'FRENCH GUIANA'],\['GI', 'GIBRALTAR'],\['DE', 'GERMANY'],\['GR', 'GREECE'],\['GP', 'GUADELOUPE'],\['GU', 'GUAM'],\['GT', 'GUATEMALA'],\['GG', 'GUERNSEY'],\['HT', 'HAITI'],\['VA', 'HOLY SEE (VATICAN CITY STATE)'],\['HN', 'HONDURAS'],\['HK', 'HONG KONG'],\['HU', 'HUNGARY'],\['IS', 'ICELAND'],\['IN', 'INDIA'],\['ID', 'INDONESIA'],\['IR', 'IRAN, ISLAMIC REPUBLIC OF'],\['IE', 'IRELAND'],\['IL', 'ISRAEL'],\['IT', 'ITALY'],\['JM', 'JAMAICA'],\['JP', 'JAPAN'],\['JE', 'JERSEY'],\['JO', 'JORDAN'],\['KE', 'KENYA'],\['KI', 'KIRIBATI'],\['KR', 'KOREA, REPUBLIC OF'],\['KW', 'KUWAIT'],\['LA', 'LAO PEOPLE\x27S DEMOCRATIC REPUBLIC'],\['LV', 'LATVIA'],\['LB', 'LEBANON'],\['LS', 'LESOTHO'],\['LI', 'LIECHTENSTEIN'],\['LT', 'LITHUANIA'],\['LU', 'LUXEMBOURG'],\['MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF'],\['MW', 'MALAWI'],\['MO', 'MACAO'],\['MY', 'MALAYSIA'],\['MV', 'MALDIVES'],\['MT', 'MALTA'],\['IM', 'MAN, ISLE OF'],\['MQ', 'MARTINIQUE'],\['MR', 'MAURITANIA'],\['MU', 'MAURITIUS'],\['YT', 'MAYOTTE'],\['MX', 'MEXICO'],\['FM', 'MICRONESIA, FEDERATED STATES OF'],\['MC', 'MONACO'],\['MA', 'MOROCCO'],\['NL', 'NETHERLANDS'],\['AN', 'NETHERLANDS ANTILLES'],\['NZ', 'NEW ZEALAND'],\['NI', 'NICARAGUA'],\['NG', 'NIGERIA'],\['NF', 'NORFOLK ISLAND'],\['MP', 'NORTHERN MARIANA ISLANDS'],\['NO', 'NORWAY'],\['OM', 'OMAN'],\['PK', 'PAKISTAN'],\['PA', 'PANAMA'],\['PG', 'PAPUA NEW GUINEA'],\['PY', 'PARAGUAY'],\['PE', 'PERU'],\['PH', 'PHILIPPINES'],\['PL', 'POLAND'],\['PT', 'PORTUGAL'],\['PR', 'PUERTO RICO'],\['RE', 'REUNION'],\['RO', 'ROMANIA'],\['RU', 'RUSSIAN FEDERATION'],\['PM', 'SAINT PIERRE AND MIQUELON'],\['SA', 'SAUDI ARABIA'],\['SG', 'SINGAPORE'],\['SK', 'SLOVAKIA'],\['SI', 'SLOVENIA'],\['ZA', 'SOUTH AFRICA'],\['ES', 'SPAIN'],\['LK', 'SRI LANKA'],\['SE', 'SWEDEN'],\['CH', 'SWITZERLAND'],\['TW', '臺灣'],\['TJ', 'TAJIKISTAN'],\['TZ', 'TANZANIA, UNITED REPUBLIC OF'],\['TH', 'THAILAND'],\['TT', 'TRINIDAD AND TOBAGO'],\['TN', 'TUNISIA'],\['TR', 'TURKEY'],\['UA', 'UKRAINE'],\['AE', 'UNITED ARAB EMIRATES'],\['GB', 'UNITED KINGDOM'],\['US', 'UNITED STATES'],\['UM', 'UNITED STATES MINOR OUTLYING ISLANDS'],\['UY', 'URUGUAY'],\['UZ', 'UZBEKISTAN'],\['VE', 'VENEZUELA'],\['VN', 'VIET NAM'],\['VG', 'VIRGIN ISLANDS, BRITISH'],\['VI', 'VIRGIN ISLANDS, U.S.'],\['ZM', 'ZAMBIA'],\['Z2', 'BAKER ISLAND']];/g
s/title: 'Regulatory Mode'/title: '管制規定'/g
s/title: 'Country \/ Region'/title: '國家 \/ 地區'/g
s/title: 'Bluetooth Coexistence'/title: '與藍芽共存'/g
s/title: '802.11n Preamble'/title: '802.11n 前導同步訊號'/g
s/title: 'APSD Mode'/title: 'APSD 模式'/g
s/options: \[\['off','Disable'],\['on','Enable \*']]/options: [['off','關'],['on','開 *']]/g

#
#	forward-basic.asp
#

#
#	forward-dmz.asp
#

#
#	forward-triggered.asp
#

#
#	forward-upnp.asp
#
s/title: 'Inactive Rules Cleaning'/title: '清除無作用規則'/g
s/title: 'Cleaning Interval'/title: '清除間隔'/g
s/' <small>seconds/' <small>秒/g
s/title: 'Cleaning Threshold'/title: '清除界於'/g
s/' <small>redirections/' <small>轉向次數/g
s/title: 'Secure Mode'/title: '安全模式'/g
s/' <small>(when enabled, UPnP clients are allowed to add mappings only to their IP)/' <small>(當啟用安全模式, UPnP 電腦端 IP 允許加入對映表中)/g
s/title: 'Show In My Network Places'/title: '顯示在 [網路上的芳鄰] 中'/g

#
#	qos-settings.asp
#
s/title: 'Qdisc Scheduler'/title: 'Qdisc Scheduler'/g

#
#	qos-classify.asp
#

#
#	qos-graphs.asp
#

#
#	qos-detailed.asp
#

#
#	restrict.asp
#

#
#	nas-usb.asp
#

#
#	nas-ftp.asp
#

#
#	nas-samba.asp
#

#
#	vpn-server.asp
#

#
#	vpn-client.asp
#

#
#	admin-access.asp
#
s/options: \[\['red','Tomato'],\['black','Black'],\['blue','Blue'],\['bluegreen','Blue &amp; Green (Lighter)'],\['bluegreen2','Blue &amp; Green (Darker)'],\['brown','Brown'],\['cyan','Cyan'],\['olive','Olive'],\['pumpkin','Pumpkin']/options: [['red','蕃茄紅'],['black','黑色'],['blue','藍色'],['bluegreen','藍 \&amp; 綠色 (淺色)'],['bluegreen2','藍 \&amp; 綠色 (深色)'],['brown','棕色'],['cyan','青綠色'],['olive','和平色'],['pumpkin','南瓜色']/g
s/\['usbred','USB Red'],\['usbblue','USB Blue']/['usbred','USB 紅'],['usbblue','USB 藍']/g
s/\['ext\/custom','Custom (ext\/custom.css)']/['ext\/custom','客製化 (ext\/custom.css)']/g
s/title: 'Remote Forwarding'/title: '遠端轉送'/g

#
#	admin-bwm.asp
#
s/options: \[\['','RAM (Temporary)'],['\*nvram','NVRAM']/options: [['','RAM 記憶體 (暫存)'],['*nvram','NVRAM']/g
s/\['\*user','Custom Path']/['*user','自訂路徑']/g

#
#	admin-buttons.asp
#
s/\[\[0,'Do Nothing'],\[1,'Toggle Wireless'],\[2,'Reboot'],\[3,'Shutdown']/[[0,'不做任何事'],[1,'開\/關 無線網路'],[2,'重新開機'],[3,'關機']/g
s/\[5,'Unmount all USB Drives']/[5,'卸載所有 USB 磁碟']/g
s/\[4,'Run Custom Script']/[4,'執行自訂指令(Script)']/g

#
#	admin-cifs.asp
#
s/title: 'Netbios Name'/title: 'Netbios Name'/g
s/title: 'Security'/title: 'Security'/g
s/options: \[\['','Default (NTLM)']/options: [['','預設 (NTLM)']/g
s/\['none','None']/['none','無']/g

#
#	admin-config.asp
#

#
#	admin-debug.asp
#
s/title: 'Count cache memory and buffers as free memory'/title: '快取記憶體(cache)合併計算於可用記憶體(free)'/g

#
#	admin-jffs2.asp
#
s/Admin: JFFS/路由器管理：JFFS/g
s/confirm("Format the JFFS partition?")/confirm("格式化 JFFS 區塊嗎?")/g

#
#	admin-log.asp
#

#
#	admin-sched.asp
#

#
#	admin-scripts.asp
#

#
#	admin-upgrade.asp
#
s/Cannot upgrade if JFFS is enabled./JFFS 啟用時無法更新韌體./g
s/An upgrade may overwrite the JFFS partition currently in use. Before upgrading,/韌體升級會覆寫目前使用中的 JFFS 區塊. 升級前, 請先備份 JFFS 的資料. 關閉 JFFS 後, 再重新開機./g
s/please backup the contents of the JFFS partition, disable it, then reboot the router.//g

#
#	about.asp
#

#
#	about.asp
#

#
#	reboot.asp
#

#
#	reboot-default.asp
#

#
#	shutdown.asp
#

#
#	logout.asp
#

#
#	clearcookies.asp
#

#
#	error.asp
#

#
#	mnoise.asp
#

#
#	saved.asp
#

#
#	saved-moved.asp
#