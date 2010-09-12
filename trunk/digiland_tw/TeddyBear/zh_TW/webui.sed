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
#		版本: 1.28.8750
#		版權: GNU General Public License v2
#		http://code.google.com/p/twtomato/
#		http://digiland.tw/
################################################

#
#	status-overview.asp
#
s/title: 'Total \/ Free Swap'/title: '虛擬記憶體 總計\/可用'/g
s/title: 'Wireless Network Mode'/title: '無線網路模式'/g
s/title: 'Channel Width'/title: '頻寬'/g
s/title: 'Interference Level'/title: '干擾準位'/g
s/title: 'Rate'/title: '速率'/g

#
#	status-devices.asp
#
s/\['Interface', 'MAC Address', 'IP Address', 'Name', 'RSSI &nbsp; &nbsp; ', 'Quality', 'TX\/RX Rate&nbsp;', 'Lease &nbsp; &nbsp; ']/['連線介面', 'MAC 位址', 'IP 位址', '設備名稱', '訊號強度 \&nbsp; \&nbsp; ', '訊號品質', '傳送\/接收 速率\&nbsp;', '剩餘租約 \&nbsp; \&nbsp; ']/g

#
#	status-webmon.asp
#
s/Status: Web Usage/系統狀態：上網瀏覽紀錄/g
s/\['Last Access Time', 'IP Address', 'Domain Name']/['存取時間', 'IP 位址(內部)', '網址(外部)']/g
s/\['Search Time', 'IP Address', 'Search Criteria']/['搜尋時間', 'IP 位址(內部)', '搜尋條件']/g
s/>Recently Visited Web Sites</>造訪網站(Recently Visited Web Sites)</g
s/>Download</>下載紀錄</g
s/>Recent Web Searches</>網頁搜尋(Recent Web Searches)</g
s/Show up to/顯示/g
s/>All</>全部</g
s/<small>available entries/<small>有效紀錄/g
s/>Web Monitor Configuration</>監視設定</g

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
s/'WPA with TKIP encryption is not supported in N mode.'/'802.11n 不支援 WPA 加密 TKIP 編碼.'/g
s/'N-only is not supported in wireless client modes.'/'802.11n 不支援無線用戶端(wireless client)模式.'/g
s/'Fixed wireless channel required in WDS mode.'/'WDS 模式需要固定頻道.'/g
s/title: 'Use DHCP'/title: '使用 DHCP'/g
s/title: 'Control Sideband'/title: '控制旁波帶(Sideband)'/g
s/options: \[\['lower','Lower'],\['upper','Upper']]/options: [['lower','Lower'],['upper','Upper']]/g

#
#	basic-ident.asp
#
s/'Invalid hostname. Only characters "A-Z 0-9" with "-" in the middle are allowed.'/'無效的主機名稱. 只允許 "A~Z 0~9" 與 "-" 字元.'/g

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
s/title: 'Hash Table Size'/title: '雜湊表(Hash Table)大小'/g
s/>Other Timeouts</>其他逾時(Other Timeouts)</g

#
#	advanced-dhcpdns.asp
#
s/title: 'Prevent DNS-rebind attacks'/title: '防止 DNS-rebind 攻擊'/g
s/title: 'Vendor Class ID'/title: 'Vendor Class ID'/g
s/title: 'IP Address to request'/title: 'IP Address to request'/g

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
s/\/\/	<% wlcountries(); %>/wl_countries = \[ \['DZ', 'ALGERIA'],\['AS', 'AMERICAN SAMOA'],\['AG', 'ANTIGUA AND BARBUDA'],\['AR', 'ARGENTINA'],\['AW', 'ARUBA'],\['AU', 'AUSTRALIA'],\['AT', 'AUSTRIA'],\['AZ', 'AZERBAIJAN'],\['BS', 'BAHAMAS'],\['BH', 'BAHRAIN'],\['BD', 'BANGLADESH'],\['BB', 'BARBADOS'],\['BY', 'BELARUS'],\['BE', 'BELGIUM'],\['BM', 'BERMUDA'],\['BT', 'BHUTAN'],\['BO', 'BOLIVIA'],\['BA', 'BOSNIA AND HERZEGOVINA'],\['BR', 'BRAZIL'],\['BN', 'BRUNEI DARUSSALAM'],\['BG', 'BULGARIA'],\['KH', 'CAMBODIA'],\['CA', 'CANADA'],\['CV', 'CAPE VERDE'],\['KY', 'CAYMAN ISLANDS'],\['CL', 'CHILE'],\['CN', 'CHINA'],\['CX', 'CHRISTMAS ISLAND'],\['CO', 'COLOMBIA'],\['CR', 'COSTA RICA'],\['HR', 'CROATIA'],\['CY', 'CYPRUS'],\['CZ', 'CZECH REPUBLIC'],\['DK', 'DENMARK'],\['DM', 'DOMINICA'],\['DO', 'DOMINICAN REPUBLIC'],\['EC', 'ECUADOR'],\['EG', 'EGYPT'],\['SV', 'EL SALVADOR'],\['EE', 'ESTONIA'],\['ET', 'ETHIOPIA'],\['FK', 'FALKLAND ISLANDS (MALVINAS)'],\['FI', 'FINLAND'],\['FR', 'FRANCE'],\['GF', 'FRENCH GUIANA'],\['GI', 'GIBRALTAR'],\['DE', 'GERMANY'],\['GR', 'GREECE'],\['GP', 'GUADELOUPE'],\['GU', 'GUAM'],\['GT', 'GUATEMALA'],\['GG', 'GUERNSEY'],\['HT', 'HAITI'],\['VA', 'HOLY SEE (VATICAN CITY STATE)'],\['HN', 'HONDURAS'],\['HK', 'HONG KONG'],\['HU', 'HUNGARY'],\['IS', 'ICELAND'],\['IN', 'INDIA'],\['ID', 'INDONESIA'],\['IR', 'IRAN, ISLAMIC REPUBLIC OF'],\['IE', 'IRELAND'],\['IL', 'ISRAEL'],\['IT', 'ITALY'],\['JM', 'JAMAICA'],\['JP', 'JAPAN'],\['JE', 'JERSEY'],\['JO', 'JORDAN'],\['KE', 'KENYA'],\['KI', 'KIRIBATI'],\['KR', 'KOREA, REPUBLIC OF'],\['KW', 'KUWAIT'],\['LA', 'LAO PEOPLE\\x27S DEMOCRATIC REPUBLIC'],\['LV', 'LATVIA'],\['LB', 'LEBANON'],\['LS', 'LESOTHO'],\['LI', 'LIECHTENSTEIN'],\['LT', 'LITHUANIA'],\['LU', 'LUXEMBOURG'],\['MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF'],\['MW', 'MALAWI'],\['MO', 'MACAO'],\['MY', 'MALAYSIA'],\['MV', 'MALDIVES'],\['MT', 'MALTA'],\['IM', 'MAN, ISLE OF'],\['MQ', 'MARTINIQUE'],\['MR', 'MAURITANIA'],\['MU', 'MAURITIUS'],\['YT', 'MAYOTTE'],\['MX', 'MEXICO'],\['FM', 'MICRONESIA, FEDERATED STATES OF'],\['MC', 'MONACO'],\['MA', 'MOROCCO'],\['NL', 'NETHERLANDS'],\['AN', 'NETHERLANDS ANTILLES'],\['NZ', 'NEW ZEALAND'],\['NI', 'NICARAGUA'],\['NG', 'NIGERIA'],\['NF', 'NORFOLK ISLAND'],\['MP', 'NORTHERN MARIANA ISLANDS'],\['NO', 'NORWAY'],\['OM', 'OMAN'],\['PK', 'PAKISTAN'],\['PA', 'PANAMA'],\['PG', 'PAPUA NEW GUINEA'],\['PY', 'PARAGUAY'],\['PE', 'PERU'],\['PH', 'PHILIPPINES'],\['PL', 'POLAND'],\['PT', 'PORTUGAL'],\['PR', 'PUERTO RICO'],\['RE', 'REUNION'],\['RO', 'ROMANIA'],\['RU', 'RUSSIAN FEDERATION'],\['PM', 'SAINT PIERRE AND MIQUELON'],\['SA', 'SAUDI ARABIA'],\['SG', 'SINGAPORE'],\['SK', 'SLOVAKIA'],\['SI', 'SLOVENIA'],\['ZA', 'SOUTH AFRICA'],\['ES', 'SPAIN'],\['LK', 'SRI LANKA'],\['SE', 'SWEDEN'],\['CH', 'SWITZERLAND'],\['TW', '臺灣'],\['TJ', 'TAJIKISTAN'],\['TZ', 'TANZANIA, UNITED REPUBLIC OF'],\['TH', 'THAILAND'],\['TT', 'TRINIDAD AND TOBAGO'],\['TN', 'TUNISIA'],\['TR', 'TURKEY'],\['UA', 'UKRAINE'],\['AE', 'UNITED ARAB EMIRATES'],\['GB', 'UNITED KINGDOM'],\['US', 'UNITED STATES'],\['UM', 'UNITED STATES MINOR OUTLYING ISLANDS'],\['UY', 'URUGUAY'],\['UZ', 'UZBEKISTAN'],\['VE', 'VENEZUELA'],\['VN', 'VIET NAM'],\['VG', 'VIRGIN ISLANDS, BRITISH'],\['VI', 'VIRGIN ISLANDS, U.S.'],\['ZM', 'ZAMBIA'],\['Z2', 'BAKER ISLAND']];/g
s/title: 'Regulatory Mode'/title: '管制規定'/g
s/options: \[\['off', 'Off \*'],\['d', '802.11d'],\['h', '802.11h']]/options: [['off', '關 *'],['d', '802.11d'],['h', '802.11h']]/g
s/title: 'Country \/ Region'/title: '國別 \/ 地區'/g
s/title: 'Bluetooth Coexistence'/title: '與藍芽共存'/g
s/options: \[\['0', 'Disable \*'],\['1', 'Enable'],\['2', 'Preemption']]/options: [['0', '關 *'],['1', '開'],['2', '先佔優先']]/g
s/title: '802.11n Preamble'/title: '802.11n 前導同步訊號'/g
s/options: \[\['auto','Auto'],\['mm','Mixed Mode \*'],\['gf','Green Field'],\['gfbcm','GF-BRCM']]/options: [['auto','自動'],['mm','混合模式 *'],['gf','Green Field'],['gfbcm','GF-BRCM']]/g
s/title: 'Overlapping BSS Coexistence'/title: '重疊 BSS 共存'/g
s/options: \[\['0','Off \*'],\['1','On']]/options: [['0','關 *'],['1','開']]/g
s/(range: 1 - 251, actual max depends on Country selected; default: 42)/(範圍: 1 - 251, 實際最大值依選擇的國別之管制規定; 預設: 42)/g
s/options: \[\['auto','Auto \*'],\['off','Disable'],\['on','Enable']]/options: [['auto','自動 *'],['off','關'],['on','開']]/g
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
s/title: 'Show In My Network Places'/title: '顯示於 [網路上的芳鄰]'/g

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
#	restrict-edit.asp
#
s/'Please specify what items should be blocked.'/'請指定封鎖項目.'/g

#
#	nas-usb.asp
#
s/NAS: USB Support/NAS：USB 支援/g
s/'Please wait...'/'請稍後...'/g
s/'The device is busy. Please make sure no applications are using it, and try again.'/'設備忙碌中. 請確認無應用程式使用此設備後, 再試一次.'/g
s/'Failed to mount. Verify the device is plugged in, and try again.'/'掛載失敗. 請確認設備已插入後, 再試一次.'/g
s/" title="Mount all Partitions of Storage Device" id="L' + i + '">\[ Mount ]/" title="掛載儲存設備的所有分割區" id="L' + i + '">[ 掛載 ]/g
s/" title="Safely Remove Storage Device" id="L' + i + '">\[ Unmount ]/" title="安全的卸載移除儲存設備" id="L' + i + '">[ 卸載 ]/g
s/\['Type', 'Host', 'Description', 'Mounted?']/['類型', 'Host', '敘述', '已掛載?']/g
s/>USB Support</>USB 設定(USB Support)</g
s/title: 'Core USB Support'/title: 'USB 核心'/g
s/title: 'USB 2.0 Support'/title: 'USB 2.0'/g
s/title: 'USB 1.1 Support'/title: 'USB 1.1'/g
s/title: 'USB Printer Support'/title: 'USB 印表機'/g
s/title: 'Bidirectional copying'/title: '雙向列印'/g
s/title: 'USB Storage Support'/title: 'USB 儲存設備'/g
s/title: 'File Systems Support'/title: '檔案系統'/g
s/title: 'Automount'/title: '自動掛載'/g
s/' <small>Automatically mount all partitions to sub-directories in <i>\/mnt<\/i>./' <small>自動掛載所有分割區於 <i>\/mnt<\/i> 的子目錄下./g
s/title: 'Run after mounting'/title: '自動掛載後執行'/g
s/title: 'Run before unmounting'/title: '卸載移除前執行'/g
s/title: 'Hotplug script<br><small>(called when any USB device is attached or removed)/title: '熱插拔(Hotplug)指令<br><small>(當 USB 設備插入或拔除時執行)/g
s/text: '<small>Some of the changes will take effect only after a restart./text: '<small>某些設定值, 需重新開機後才有效./g
s/>Attached Devices</>週邊設備列表(Attached Devices)</g

#
#	nas-ftp.asp
#
s/NAS: FTP Server/NAS：FTP 伺服器/g
s/'Invalid user name. Only characters "A-Z 0-9 - _" are allowed.'/'無效的使用者名稱. 只接受 "A-Z 0-9 - _" 字元.'/g
s/'Duplicate user name.'/'重複的使用者名稱.'/g
s/'Empty user name is not allowed.'/'使用者名稱不可空白.'/g
s/\[\['Read\/Write', 'Read\/Write'],\['Read Only', 'Read Only'],\['View Only', 'View Only'],\['Private', 'Private']]/[['Read\/Write', '讀\/寫'],['Read Only', '唯讀(Read Only)'],['View Only', '僅供查閱(View Only)'],['Private', '個人專用(Private)']]/g
s/\['User Name', 'Password', 'Access']/['使用者名稱', '密碼', '存取能力']/g
s/>FTP Server Configuration</>vsftpd 伺服器設定(FTP Server Configuration)</g
s/title: 'Enable FTP Server'/title: 'FTP 伺服器'/g
s/options: \[\['0', 'No'],\['1', 'Yes, WAN and LAN'],\['2', 'Yes, LAN only']]/options: [['0', '停用'],['1', '啟用, WAN 與 LAN'],['2', '啟用, 僅 LAN']]/g
s/title: 'FTP Port'/title: 'FTP 通訊埠'/g
s/title: 'Allowed Remote<br>Address(es)'/title: '允許連線的遠端 IP 位址'/g
s/title: 'Anonymous Users Access'/title: '匿名存取'/g
s/options: \[\['0', 'Disabled'],\['1', 'Read\/Write'],\['2', 'Read Only'],\['3', 'Write Only']]/options: [['0', '禁止'],['1', '讀\/寫'],['2', '唯讀'],['3', '唯寫']]/g
s/title: 'Allow Admin Login\*'/title: '允許管理員登入*'/g
s/' <small>Allows users to connect with admin account./' <small>允許 admin 帳戶連結./g
s/title: 'Log FTP requests and responses'/title: '紀錄 FTP 請求與回應'/g
s/Avoid using this option when FTP server is enabled for WAN. IT PROVIDES FULL ACCESS TO THE ROUTER FILE SYSTEM!/請避免將 FTP 伺服器曝露於網際網路(WAN). 這將提供外界完整存取路由器檔案系統的能力!/g
s/>Directories</>目錄(Directories)</g
s/title: 'Public Root Directory\*'/title: '公用根目錄*'/g
s/' <small>(for authenticated users access)/' <small>(認證用戶公共存取)/g
s/title: 'Private Root Directory\*\*'/title: '私有根目錄**'/g
s/' <small>(for authenticated users access in private mode)/' <small>(認證用戶個人專用存取)/g
s/title: 'Anonymous Root Directory\*'/title: '匿名根目錄*'/g
s/' <small>(for anonymous connections)/' <small>(匿名登入者存取)/g
s/title: 'Directory Listings'/title: '顯示目錄清單'/g
s/options: \[\['0', 'Enabled'],\['1', 'Disabled'],\['2', 'Disabled for Anonymous']]/options: [['0', '啟用'],['1', '禁止'],['2', '匿名者, 禁止']]/g
s/' <small>(always enabled for Admin)/' <small>(管理員始終顯示目錄清單)/g
s/When no directory is specified, \/mnt is used as a root directory./若未指定目錄, \/mnt 為根目錄./g
s/In private mode, the root directory is the directory under the "Private Root Directory" with the name matching the name of the user./在個人專用(private)模式下, 個人根目錄位於"私有根目錄"中, 與使用者名稱相同的子目錄./g
s/>Limits</>連線限制(Limits)</g
s/title: 'Maximum Users Allowed to Log in'/title: '最大允許登入用戶數'/g
s/(0 - unlimited)/(0 - 不限制)/g
s/title: 'Maximum Connections from the same IP'/title: '相同 IP 最大連線數'/g
s/title: 'Maximum Bandwidth for Anonymous Users'/title: '匿名登入最大頻寬'/g
s/title: 'Maximum Bandwidth for Authenticated Users'/title: '認證用戶最大頻寬'/g
s/title: 'Idle Timeout'/title: '閒置逾時'/g
s/(0 - no timeout)/(0 - 無逾時)/g
s/<small>every/<small>次, 每/g
s/<small>seconds/<small>秒內/g
s/>Custom Configuration</>自訂設定(Custom Configuration)</g
s/Custom Configuration'/自訂設定值'/g
s/>User Accounts</>使用者帳戶(User Accounts)</g

#
#	nas-samba.asp
#
s/NAS: File Sharing/NAS：檔案分享/g
s/'Invalid '/'無效的 '/g
s/'Invalid share name. Only characters "$ A-Z 0-9 - _" and spaces are allowed.'/'無效的分享名稱. 只允許 "$ A-Z 0-9 - _" 與空格字元.'/g
s/'Duplicate share name.'/'重複的分享名稱.'/g
s/'Empty share name is not allowed.'/'分享名稱不可空白.'/g
s/quiet, 'Directory'/quiet, '目錄'/g
s/quiet, 'Description'/quiet, '註解'/g
s/'Directory must not be empty.'/'目錄不可空白.'/g
s/\[\[0, 'Read Only'],\[1, 'Read \/ Write']]/[[0, '唯讀'],[1, '讀 \/ 寫']]/g
s/\[\[0, 'No'],\[1, 'Yes']]/[[0, '否'],[1, '是']]/g
s/\['Share Name', 'Directory', 'Description', 'Access Level', 'Hidden']/['分享名稱', '目錄', '敘述', '存取權限', '隱藏']/g
s/'User Name must not be empty.'/'使用者名稱不可空白.'/g
s/'User Name root is not allowed.'/'不允許使用者名稱為 root.'/g
s/>Samba File Sharing</>Samba 伺服器設定(Samba File Sharing)</g
s/title: 'Enable File Sharing'/title: '檔案分享'/g
s/options: \[\['0', 'No'],\['1', 'Yes, no Authentication'],\['2', 'Yes, Authentication required']]/options: [['0', '停用'],['1', '啟用, 不需認證'],['2', '啟用, 需要認證']]/g
s/title: 'User Name'/title: '使用者名稱'/g
s/title: 'Workgroup Name'/title: '工作群組名稱'/g
s/title: 'Client Codepage'/title: '用戶端語言代碼(Codepage)'/g
s/options: \[\['', 'Unspecified']/options: [['', '未指定']/g
s/\['950', '950 (Traditional Chinese \/ Big5)']/['950', '950 (正體中文 \/ Big5)']/g
s/' <small> (start cmd.exe and type chcp to see the current code page)/' <small> (在附屬應用程式之命令提示字元, 輸入 chcp 查閱目前使用的語言代碼)/g
s/title: 'Auto-share all USB Partitions'/title: '自動分享全部磁碟分割區'/g
s/options: \[\['0', 'Disabled'],\['1', 'Read Only'],\['2', 'Read \/ Write'],\['3', 'Hidden Read \/ Write']]/options: [['0', '禁止'],['1', '唯讀'],['2', '讀 \/ 寫'],['3', '隱藏式 讀 \/ 寫']]/g
s/title: 'Options'/title: '選項'/g
s/>Network Shares List</>網路分享清單(Network Shares List)</g
s/<small>When no shares are specified, <i>\/mnt<\/i> directory is shared in Read Only mode./<small>若未設定網路分享清單, <i>\/mnt<\/i> 是唯讀分享./g

#
#	nas-media.asp
#
s/NAS: Media Server/NAS：媒體伺服器/g
s/'Please start at the \/ root directory.'/'請從 \/ 根目錄開始.'/g
s/\[\['', 'All Media Files'], \['A', 'Audio only'], \['V', 'Video only'], \['P', 'Images only']]/[['', '全部媒體檔案'], ['A', '音訊檔(Audio)'], ['V', '視訊檔(Video)'], ['P', '影像檔(Images)']]/g
s/\['Directory', 'Content Filter']/['目錄', '內容篩選']/g
s/'JFFS is not enabled.'/'JFFS 尚未啟用.'/g
s/>Media \/ DLNA Server</>媒體伺服器(Media \/ DLNA Server)</g
s/title: 'Database Location'/title: '媒體資料庫位置'/g
s/\['\/jffs\/dlna','JFFS']/['\/jffs\/dlna','JFFS(\/jffs\/dlna)']/g
s/title: 'Scan Media at Startup\*'/title: '開機時搜尋媒體*'/g
s/title: 'Rescan on the next run\*'/title: '下次執行時重新搜尋*'/g
s/<small>\* Media scan may take considerable time to complete./<small>* 搜尋媒體可能需要很長時間才能完成./g
s/title: 'TiVo Support'/title: '支援 TiVo'/g
s/title: 'Strictly adhere to DLNA standards'/title: '嚴格遵循 DLNA 標準'/g
s/'Res' : 'S') + 'tart Now/'立即重新啟動' : '立即啟動')/g
s/>Media Directories</>媒體目錄(Media Directories)</g

#
#	vpn-server.asp
#

#
#	vpn-client.asp
#

#
#	admin-access.asp
#
s/\['Advanced', 'advanced'], \['Port Forwarding', 'forward'], \['QoS', 'qos']/['進階設定', 'advanced'], ['通訊埠轉送', 'forward'], ['頻寬管理', 'qos']/g
s/\['USB and NAS', 'nas']/['USB 與 NAS', 'nas']/g
s/\['Administration', 'admin']/['路由器管理', 'admin']/g
s/options: \[\['red','Tomato'],\['black','Black'],\['blue','Blue'],\['bluegreen','Blue &amp; Green (Lighter)'],\['bluegreen2','Blue &amp; Green (Darker)'],\['brown','Brown'],\['cyan','Cyan'],\['olive','Olive'],\['pumpkin','Pumpkin']/options: [['red','蕃茄紅'],['black','黑色'],['blue','藍色'],['bluegreen','藍綠色(淺)'],['bluegreen2','藍綠色(深)'],['brown','棕色'],['cyan','青綠色'],['olive','橄欖色'],['pumpkin','南瓜色']/g
s/\['usbred','USB Red'],\['usbblue','USB Blue']/['usbred','USB 紅'],['usbblue','USB 藍']/g
s/\['ext\/custom','Custom (ext\/custom.css)']/['ext\/custom','自訂樣式表 (ext\/custom.css)']/g
s/title: 'Remote Forwarding'/title: '遠端通訊埠轉送至內部通訊埠'/g

#
#	admin-bwm.asp
#

#
#	admin-buttons.asp
#
s/\[\[0,'Do Nothing'],\[1,'Toggle Wireless'],\[2,'Reboot'],\[3,'Shutdown']/[[0,'不做任何事'],[1,'開\/關 無線網路(WLAN)'],[2,'重新開機'],[3,'關機']/g
s/\[5,'Unmount all USB Drives']/[5,'卸載所有 USB 磁碟']/g
s/\[4,'Run Custom Script']/[4,'執行自訂指令(Script)']/g

#
#	admin-cifs.asp
#
s/title: 'Netbios Name'/title: 'Netbios 名稱'/g
s/title: 'Security',/title: '認證',/g
s/options: \[\['','Default (NTLM)']/options: [['','預設 (NTLM)']/g
s/\['none','None']/['none','無']/g

#
#	admin-config.asp
#

#
#	admin-debug.asp
#
s/title: 'Count cache memory and buffers as free memory'/title: '快取記憶體(cache)與緩衝(buffer)合併計算於可用記憶體(free)'/g

#
#	admin-jffs2.asp
#
s/Admin: JFFS/路由器管理：JFFS/g
s/confirm("Format the JFFS partition?")/confirm("格式化 JFFS 區塊嗎?")/g

#
#	admin-log.asp
#
s/>Web Monitor</>監視設定(Web Monitor)</g
s/title: 'Monitor Web Usage'/title: '監視瀏覽紀錄'/g
s/title: 'Monitor'/title: '監視'/g
s/title: 'IP Address(es)'/title: 'IP 位址'/g
s/title: 'Number of Entries to remember'/title: '紀錄筆數'/g
s/title: 'Domains'/title: '造訪網站'/g
s/title: 'Searches'/title: '網頁搜尋'/g

#
#	admin-sched.asp
#

#
#	admin-scripts.asp
#

#
#	admin-upgrade.asp
#
s/After flashing, erase all data in NVRAM memory/刷機後, 清除 NVRAM 全部資料/g
s/Cannot upgrade if JFFS is enabled./JFFS 啟用時, 無法更新韌體./g
s/An upgrade may overwrite the JFFS partition currently in use. Before upgrading,/韌體升級會覆寫目前使用中的 JFFS 區塊. 升級前, 請先備份 JFFS 的資料. 關閉 JFFS 後, 再重新開機./g
s/please backup the contents of the JFFS partition, disable it, then reboot the router.//g

#
#	about.asp
#

#
#	about.asp
#
s/^蕃茄韌體(Tomato Firmware) 版本: v/泰迪熊(Teddy Bear)衍生版本: v/g
s/^Based on/>基於/g

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