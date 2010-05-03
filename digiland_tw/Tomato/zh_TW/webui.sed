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
#	status-overview.asp
#
s/Status: Overview/系統狀態：系統狀態/g
s/>System</>系統資訊</g
s/title: 'Name'/title: '名稱'/g
s/title: 'Model'/title: '機型'/g
s/title: 'Time', rid/title: '現在時間', rid/g
s/title: 'Uptime'/title: '開機時間'/g
s/title: 'CPU Load <small>(1 \/ 5 \/ 15 mins)/title: 'CPU 負載 <small>(1\/5\/15分鐘)/g
s/title: 'Total \/ Free Memory'/title: '總和\/剩餘 記憶體'/g
s/>WAN</>廣域網路(WAN)</g
s/title: 'MAC Address'/title: 'MAC 位址'/g
s/title: 'Connection Type'/title: 'WAN 連線類型'/g
s/text: { 'dhcp':'DHCP', 'static':'Static IP', 'pppoe':'PPPoE', 'pptp':'PPTP', 'l2tp':'L2TP' }/text: { 'dhcp':'DHCP', 'static':'固定 IP', 'pppoe':'PPPoE', 'pptp':'PPTP', 'l2tp':'L2TP' }/g
s/title: 'IP Address'/title: 'WAN IP 位址'/g
s/title: 'Subnet Mask'/title: '子網路遮罩'/g
s/title: 'Gateway'/title: '閘道器'/g
s/title: 'DNS'/title: 'DNS 伺服器'/g
s/title: 'MTU'/title: '最大傳輸單位(MTU)'/g
s/title: 'Status'/title: '連線狀態'/g
s/title: 'Connection Uptime'/title: '連線時間'/g
s/title: 'Remaining Lease Time'/title: '剩餘租用時間'/g
s/value='Renew'/value='重新取得'/g
s/value='Release'/value='釋放'/g
s/value='Connect'/value='連線'/g
s/value='Disconnect'/value='斷線'/g
s/>LAN</>區域網路(LAN)</g
s/title: 'Router MAC Address'/title: '路由器 MAC 位址'/g
s/title: 'Router IP Address'/title: '路由器 IP 位址'/g
s/title: 'DHCP'/title: 'DHCP 伺服器'/g
s/>Wireless</>無線網路(WLAN)</g
s/title: 'Wireless Mode'/title: '無線工作模式'/g
s/title: 'B\/G Mode'/title: '無線網路模式'/g
s/title: 'Radio'/title: '無線電波'/g
s/title: 'SSID'/title: '無線名稱(SSID)'/g
s/title: 'Security'/title: '加密方式'/g
s/title: 'Channel'/title: '頻道'/g
s/title: 'RSSI'/title: 'RSSI'/g
s/title: 'Noise'/title: '雜訊'/g
s/title: 'Signal Quality'/title: '訊號品質'/g
s/value='Enable'/value='開啟'/g
s/value='Disable'/value='關閉'/g

#
#	status-devices.asp
#
s/Status: Device List/系統狀態：連線設備列表/g
s/>Device List</>連線設備列表</g
s/\['Interface', 'MAC Address', 'IP Address', 'Name', 'RSSI &nbsp; &nbsp; ', 'Quality', 'Lease &nbsp; &nbsp; '\]/\['連線介面', 'MAC 位址', 'IP 位址', '主機名稱', 'RSSI \&nbsp; \&nbsp; ', '品質', '剩餘租約 \&nbsp; \&nbsp; '\]/g
s/'deleting...'/'刪除中...'/g
s/title="Delete Lease"/title="刪除租約"/g
s/title="OUI Search"/title="搜尋 OUI 碼"/g
s/title="Static Lease..."/title="加入至 MAC 綁定 IP"/g
s/title="Wireless Filter..."/title="加入至 無線存取控制"/g
s/>Noise Floor:</>背景雜訊:</g
s/value="Measure"/value="測量"/g

#
#	status-log.asp
#
s/Status: Logs/系統狀態：日誌紀錄檔/g
s/>Logs</>日誌紀錄檔</g
s/>View Last 25 Lines</>查看最後  25 行</g
s/>View Last 50 Lines</>查看最後  50 行</g
s/>View Last 100 Lines</>查看最後 100 行</g
s/>View All</>全部顯示</g
s/>Download Log File</>下載日誌記錄檔</g
s/value="Find"/value="搜尋"/g
s/>Logging Configuration</>日誌記錄管理</g
s/>Internal logging disabled.</>內部日誌紀錄關閉.</g

#
#	bwm-realtime.asp
#
s/Bandwidth: Real-Time/頻寬監控：即時流量/g
s/>(10 minute window, 2 second interval)</>\[繪圖視窗 (每格二分鐘), 每 2 秒鐘取樣\]</g
s/>Warning: 10 second timeout, restarting...</>警告: 逾時 10 秒鐘, 重新繪圖中...</g
s/>RX</>接收</g
s/>TX</>傳送</g
s/>Avg</>平均值</g
s/>Peak</>最大值</g
s/>Total</>合計</g
s/Avg:&nbsp;/平均(曲線):\&nbsp;/g
s/>Off</>Off</g
s/Max:&nbsp;/最大值統計:\&nbsp;/g
s/>Uniform</>取最高值</g
s/>Per IF</>依介面顯示</g
s/Display:&nbsp;/繪圖:\&nbsp;/g
s/>Solid</>填滿</g
s/>Line</>實線</g
s/Color:&nbsp;/顏色:\&nbsp;/g
s/>\[reverse\]</>\[顏色反向\]</g
s/>Configure</>設定</g

#
#	bwm-24.asp
#
s/Bandwidth: Last 24 Hours/頻寬監控：24 小時內流量/g
s/>(2 minute interval)</>\[繪圖視窗 (每格一小時), 每 2 分鐘取樣\]</g
s/Hours:/單位(小時):/g

#
#	bwm-daily.asp
#
s/Bandwidth: Daily/頻寬監控：每日流量/g
s/>WAN Bandwidth - Daily</>WAN 每日流量</g
s/makeRow('header', 'Date', 'Download', 'Upload', 'Total')/makeRow('header', '日期', '下載', '上傳', '合計')/g
s/>Last 30 Days</>過去 30 天</g
s/>Down</>下載</g
s/>Up</>上傳</g
s/>yyyy-mm-dd</>年-月-日</g
s/>mm-dd-yyyy</>月-日-年</g
s/>mmm dd, yyyy</>月 日, 年</g
s/>dd.mm.yyyy</>日.月.年</g
s/>Date</>日期格式</g
s/>Scale</>計量單位</g
s/>Data</>資料</g

#
#	bwm-weekly.asp
#
s/Bandwidth: Weekly/頻寬監控：每週流量/g
s/>WAN Bandwidth - Weekly</>WAN 每週流量</g
s/>Show</>顯示方式</g
s/>Summary</>總和</g
s/>Full</>列表</g
s/>Start</>每週第一天</g
s/>Sun</>日</g
s/>Mon</>一</g
s/>Tue</>二</g
s/>Wed</>三</g
s/>Thu</>四</g
s/>Fri</>五</g
s/>Sat</>六</g
s/+ ' to ' +/+ ' 至 ' +/g
s/makeRow('footer', 'Total',/makeRow('footer', '合計',/g

#
#	bwm-monthly.asp
#
s/Bandwidth: Monthly/頻寬監控：每月流量/g
s/>WAN Bandwidth - Monthly</>WAN 每月流量</g
s/>yyyy-mm</>年-月</g
s/>mm-yyyy</>月-年</g
s/>mmm yyyy</>月 年</g
s/>mm.yyyy</>月.年</g

#
#	tools-ping.asp
#
s/Tools: Ping/診斷工具：Ping/g
s/>Ping</>Ping</g
s/title: 'Address'/title: '位址'/g
s/title: 'Ping Count'/title: 'Ping 的次數'/g
s/title: 'Packet Size'/title: '封包大小'/g
s/>(bytes)</>(位元組)</g
s/>Please wait... </>請稍後... </g
s/\['Seq', 'Address', 'RX Bytes', 'TTL', 'RTT (ms)', '+\/- (ms)'\]/\['序號', '位址', '接收位元組', '生存期限TTL', '回應時間RTT(ms)', '＋\/－(ms)'\]/g
s/stats = 'Round-Trip: ' + RegExp.$1 + ' min, ' + RegExp.$2 + ' avg, ' + RegExp.$3 + ' max (ms)<br>'/stats = '平均變化量: ' + RegExp.$1 + ' 最小值, ' + RegExp.$2 + ' 平均值, ' + RegExp.$3 + ' 最大值 (ms)<br>'/g
s/stats = '   Packets: ' + RegExp.$1 + ' transmitted, ' + RegExp.$2 + ' received, ' + RegExp.$3 + ' lost<br>'/stats = '封包遺失率: ' + RegExp.$1 + ' 發送, ' + RegExp.$2 + ' 接收, ' + RegExp.$3 + ' 遺失率<br>'/g

#
#	tools-trace.asp
#
s/Tools: Trace/診斷工具：Trace/g
s/>Traceroute</>路由追蹤(Traceroute)</g
s/value="Trace"/value="追蹤"/g
s/title: 'Maximum Hops'/title: '最大躍點數(Hops)'/g
s/title: 'Maximum Wait Time'/title: '最大等待時間'/g
s/>(seconds per hop)</>(每躍點之等候秒數)</g
s/\['Hop', 'Address', 'Min (ms)', 'Max (ms)', 'Avg (ms)', '+\/- (ms)'\]/\['躍點', '主機名稱 (IP 位址)', '最小值 (ms)', '最大值 (ms)', '平均值 (ms)', '＋\/－ (ms)'\]/g
s/e, 'Invalid address'/e, '錯誤的位址'/g

#
#	tools-survey.asp
#
s/Tools: Wireless Survey/診斷工具：無線網路勘查/g
s/>Wireless Site Survey</>無線基地臺列表</g
s/\['Last Seen', 'SSID', 'BSSID', 'RSSI &nbsp; &nbsp; ', 'Noise &nbsp; &nbsp; ', 'Quality', 'Ch', 'Capabilities', 'Rates'\]/\['發現時間', '無線名稱(SSID)', '無線 MAC 位址', 'RSSI \&nbsp; \&nbsp; ', '雜訊 \&nbsp; \&nbsp; ', '品質', '頻道', '特性', '速率'\]/g
s/dayOfWeek = \['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'\]/dayOfWeek = \['週日','週一','週二','週三','週四','週五','週六'\]/g
s/' added, '/' 個新增, '/g
s/' removed, '/' 個移除, '/g
s/' total.'/' 個基地臺可用.'/g
s/>Last updated: '/>更新於: '/g
s/'Auto Expire',/'自動停止',/g
s/'Auto Refresh',/'自動更新',/g
s/value="Refresh"/value="重新整理"/g
s/>Warning: Wireless connections to this router may be disrupted while using this tool.</>請注意: 若使用此工具, 則連接到此路由器之無線用戶端, 可能會被中斷.</g

#
#	tools-wol.asp
#
s/Tools: WOL/診斷工具：網路喚醒/g
s/>Wake On LAN</>網路喚醒(Wake On LAN)</g
s/\['MAC Address', 'IP Address', 'Status', 'Name'\]/\['MAC 位址', 'IP 位址', '狀態', '名稱'\]/g
s/'Active (In ARP)'/'有效 (於 ARP 紀錄表中)'/g
s/'Click to wake up'/'點擊左鍵, 喚醒這台電腦'/g
s/value = running ? 'Stop' : 'Refresh'/value = running ? '停止' : '重新整理'/g
s/value='Refresh'/value='重新整理'/g
s/title: 'MAC Address List'/title: 'MAC 位址清單'/g
s/value='Wake Up'/value='喚醒'/g

#
#	basic-network.asp
#
s/Basic: Network/一般設定：網路/g
s/>WAN \/ Internet</>廣域網路(WAN) \/ 網際網路(Internet)</g
s/title: 'Type'/title: '連線類型'/g
s/options: \[\['dhcp','DHCP'\],\['pppoe','PPPoE'\],\['static','Static'\],\['pptp','PPTP'\],\['l2tp','L2TP'\],\['disabled','Disabled'\]\]/options: \[\['dhcp','DHCP 取得IP'\],\['pppoe','PPPoE 撥接'\],\['static','固定 IP'\],\['pptp','PPTP'\],\['l2tp','L2TP'\],\['disabled','關閉'\]\]/g
s/title: 'Username'/title: '使用者名稱'/g
s/title: 'Password'/title: '密碼'/g
s/title: 'Service Name'/title: '連線名稱'/g
s/title: 'L2TP Server'/title: '連接 L2TP 伺服器'/g
s/title: 'Connect Mode'/title: '連線模式'/g
s/options: \[\['1', 'Connect On Demand'\],\['0', 'Keep Alive'\]\]/options: \[\['1', '需要時連線'\],\['0', '永久連線'\]\]/g
s/title: 'Max Idle Time'/title: '逾時時間'/g
s/>(minutes)</>(分)</g
s/title: 'Check Interval'/title: '重連時間'/g
s/>(seconds)</>(秒)</g
s/options: \[\['0', 'Default'\],\['1','Manual'\]\]/options: \[\['0', '預設'\],\['1','手動'\]\]/g
s/title: 'Use WAN port for LAN'/title: '將 WAN 埠當作區域網路(LAN)使用'/g
s/title: 'Default Gateway'/title: '預設閘道器(Gateway)'/g
s/title: 'Static DNS'/title: 'DNS 伺服器'/g
s/title: 'DHCP Server'/title: 'DHCP 伺服器'/g
s/title: 'IP Address Range'/title: 'IP 位址範圍'/g
s/title: 'Lease Time'/title: '租約時間'/g
s/title: 'WINS'/title: '微軟 WINS'/g
s/title: 'Enable Wireless'/title: '開啟無線上網'/g
s/options: \[\['ap', 'Access Point'\],\['apwds', 'Access Point + WDS'\],\['sta', 'Wireless Client'\],\['wet', 'Wireless Ethernet Bridge'\],\['wds', 'WDS'\]\]/options: \[\['ap', '無線基地臺'\],\['apwds', '無線基地臺 + WDS'\],\['sta', '無線用戶端'\],\['wet', '無線網路橋接'\],\['wds', 'WDS'\]\]/g
s/options:\[\['mixed','Mixed'\],\['b-only','B Only'\],\['g-only','G Only'\]\]/options:\[\['mixed','混合'\],\['b-only','僅 802.11b'\],\['g-only','僅 802.11g'\]\]/g
s/title: 'Broadcast'/title: 'SSID 廣播'/g
s/value="Scan"/value="掃瞄"/g
s/options: \[\['disabled','Disabled'\],\['wep','WEP'\],\['wpa_personal','WPA Personal'\],\['wpa_enterprise','WPA Enterprise'\],\['wpa2_personal','WPA2 Personal'\],\['wpa2_enterprise','WPA2 Enterprise'\],\['wpaX_personal','WPA \/ WPA2 Personal'\],\['wpaX_enterprise','WPA \/ WPA2 Enterprise'\],\['radius','Radius'\]\]/options: \[\['disabled','關閉'\],\['wep','WEP'\],\['wpa_personal','WPA Personal'\],\['wpa_enterprise','WPA Enterprise'\],\['wpa2_personal','WPA2 Personal'\],\['wpa2_enterprise','WPA2 Enterprise'\],\['wpaX_personal','WPA \/ WPA2 Personal'\],\['wpaX_enterprise','WPA \/ WPA2 Enterprise'\],\['radius','Radius'\]\]/g
s/title: 'Encryption'/title: '編碼方式'/g
s/options: \[\['tkip','TKIP'\],\['aes','AES'\],\['tkip+aes','TKIP \/ AES'\]\]/options: \[\['tkip','TKIP'\],\['aes','AES'\],\['tkip+aes','TKIP \/ AES'\]\]/g
s/title: 'Shared Key'/title: '公用金鑰'/g
s/title: 'Group Key Renewal'/title: '金鑰轉動間隔'/g
s/title: 'Radius Server'/title: 'Radius 伺服器'/g
s/options: \[\['128','128-bits'\],\['64','64-bits'\]\]/options: \[\['128','128 位元'\],\['64','64 位元'\]\]/g
s/title: 'Passphrase'/title: '通行碼'/g
s/value="Generate"/value="產生"/g
s/value="Random"/value="亂數"/g
s/title: 'WDS'/title: 'WDS'/g
s/options: \[\['0','Link With...'\],\['1','Automatic'\]\]/options: \[\['0','設定遠端MAC清單'\],\['1','允許匿名連接'\]\]/g
s/: 'MAC Address'/: '遠端MAC清單'/g
s/e.value = 'Scan '/e.value = '掃瞄 '/g
s/e.value = 'Scan'/e.value = '掃瞄'/g
s/'Invalid WEP key. Expecting ' + e.maxLength + ' hex or ' + (e.maxLength >> 1) + ' ASCII characters.'/'無效的 WEP key. 應為 ' + e.maxLength + ' 個十六進制值(0~9 A~F)或 ' + (e.maxLength >> 1) + ' 個ASCII 字元.'/g
s/'Wireless Client mode requires a valid WAN setting (usually DHCP).'/'無線連線模式需要正確的設定 WAN (通常是選 DHCP).'/g
s/'WPA2 is supported only in AP mode.'/'WPA2 只支援 AP 模式.'/g
s/'Invalid pre-shared key. Please enter at least 8 characters or 64 hexadecimal digits.'/'公用金鑰錯誤. 請輸入至少 8 個字元或64個十六進制數字.'/g
s/'WDS MAC address required.'/'WDS 需要 MAC 位址.'/g
s/value='Save'/value='儲存'/g
s/value='Cancel'/value='取消'/g

#
#	basic-ident.asp
#
s/Basic: Identification/\一般設定：路由器基本資料/g
s/>Router Identification</>路由器基本資料</g
s/title: 'Router Name'/title: '路由器名稱'/g
s/title: 'Domain Name'/title: '網域名稱'/g

#
#	basic-time.asp
#
s/Basic: Time/一般設定：時間設定/g
s/>Time</>系統時間</g
s/title: 'Router Time'/title: '現在時間'/g
s/title: 'Time Zone'/title: '時區'/g
s/'Custom...'/'自定'/g
s/'UTC+08:00 China, Hong Kong, Western Australia, Singapore, Taiwan, Russia'/'UTC+08:00 臺灣, 中國, 香港, 澳洲西部, 新加坡, 俄羅斯'/g
s/title: 'Auto Daylight Savings Time'/title: '日光節約時間(夏令)'/g
s/title: 'Custom TZ String'/title: '自訂時區字串'/g
s/title: 'Auto Update Time'/title: '網路校時'/g
s/options: \[\[-1,'Never'\],\[0,'Only at startup'\],\[1,'Every hour'\],\[2,'Every 2 hours'\],\[4,'Every 4 hours'\],\[6,'Every 6 hours'\],\[8,'Every 8 hours'\],\[12,'Every 12 hours'\],\[24,'Every 24 hours'\]\]/options: \[\[-1,'取消'\],\[0,'僅開機時, 同步更新'\],\[1,'１小時'\],\[2,'２小時'\],\[4,'４小時'\],\[6,'６小時'\],\[8,'８小時'\],\[12,'１２小時'\],\[24,'每天一次'\]\]/g
s/title: 'Trigger Connect On Demand'/title: '定時同步更新'/g
s/title: 'NTP Time Server'/title: 'NTP 時間伺服器'/g
s/'Default'/'預設'/g
s/'Africa'/'非洲'/g
s/'Asia'/'亞洲'/g
s/'Europe'/'歐洲'/g
s/'Oceania'/'大洋洲'/g
s/'North America'/'北美洲'/g
s/'South America'/'南美洲'/g
s/'US'/'美國'/g
s/'At least one NTP server is required'/'至少需要設定一台 NTP 時間伺服器'/g
s/^The following NTP servers have been automatically blocked by request from the server:$/下列的 NTP 時間伺服器, 已被伺服器端自動封鎖:/g
s/value='Clear'/value='清除'/g

#
#	basic-ddns.asp
#
s/Basic: DDNS/一般設定：Dynamic DNS/g
s/>Dynamic DNS</>動態名稱伺服器(Dynamic DNS)</g
s/title: 'IP address'/title: 'IP 位址'/g
s/'Use WAN IP Address ' + ddnsx_ip + ' (recommended)'/'使用 WAN IP 位址 ' + ddnsx_ip + ' (建議)'/g
s/'Use External IP Address Checker (every 10 minutes)'/'使用外部 IP 位址 (每十分鐘檢查)'/g
s/'Offline (/'離線 (/g
s/'Custom IP Address...'/'自訂 IP 位址...'/g
s/title: 'Custom IP address'/title: '自訂 IP 位址'/g
s/title: 'Auto refresh every'/title: '自動更新(每)'/g
s/' days <small>(0 = disable)'/' 天 <small>(0 = 取消)'/g
s/>Dynamic DNS '/>動態名稱伺服器 '/g
s/title: 'Service'/title: '服務商'/g
s/title: 'URL'/title: '網址'/g
s/>\* This service determines the IP address using its own method.</>\* 此服務商使用特定格式來判定 IP.</g
s/title: 'Hostname'/title: '主機名稱'/g
s/'(Use @IP for the current IP address)'/'(使用 @IP 於現在的 IP 位址)'/g
s/title: 'Wildcard'/title: '萬用字元'/g
s/title: 'MX'/title: 'MX 紀錄'/g
s/title: 'Backup MX'/title: '備份 MX 紀錄'/g
s/title: 'Use as DNS'/title: '當作 DNS'/g
s/title: 'Token \/ URL'/title: 'Token \/ URL'/g
s/title: 'Save state when IP changes (nvram commit)'/title: '當 IP 變動, 儲存設定值(nvram commit)'/g
s/title: 'Force next update'/title: '強制下次更新'/g
s/title: 'Last IP Address'/title: '目前 IP 位址'/g
s/title: 'Last Result'/title: '目前更新結果'/g

#
#	basic-static.asp
#
s/Basic: Static DHCP/一般設定：Static DHCP/g
s/>Static DHCP</>依 MAC 位址綁定 IP 位址(Static DHCP)</g
s/\['MAC Address', 'IP Address', 'Hostname'\]/\['MAC 位址', 'IP 位址', '主機名稱'\]/g
s/'Duplicate MAC address'/'重覆的 MAC 位址'/g
s/'Invalid IP address'/'IP 位址錯誤'/g
s/'Duplicate IP address'/'重覆的 IP 位址'/g
s/'Invalid name. Only characters "A-Z 0-9 . - _" are allowed.'/'錯誤的字元組合. 僅接受. "A-Z 0-9 . - _" 等字元.'/g
s/'Duplicate name.'/'主機名稱重覆'/g
s/'Both MAC address and name fields must not be empty.'/'MAC 位址與主機名稱不可空白.'/g

#
#	basic-wfilter.asp
#
s/Basic: Wireless Filter/一般設定：無線存取控制/g
s/>Wireless Client Filter</>無線存取控制</g
s/>Disable filter</>關閉</g
s/>Permit only the following clients</>允許下列的 MAC 位址連線</g
s/>Block the following clients</>拒絕下列的 MAC 位址連線</g
s/\['MAC Address', 'Description'\]/\['MAC 位址', '註解'\]/g

#
#	advanced-ctnf.asp
#
s/Advanced: Conntrack \/ Netfilter</進階設定: 連線追蹤 \/ 過濾模組</g
s/' in this state)</' 個連線在這種狀態)</g
s/' connections currently tracked)'/' 個連線數目前使用中)'/g
s/e.value = 'Expire Scheduled... '/e.value = '正在清除... '/g
s/>Connections</>連線數</g
s/title: 'Maximum Connections'/title: '最大連線數量'/g
s/>\[ count current... \]</>\[ 顯示目前的連線數 \]</g
s/value='Drop Idle'/value='清除逾時'/g
s/>TCP Timeout</>TCP 逾時</g
s/>UDP Timeout</>UDP 逾時</g
s/>Tracking \/ NAT Helpers</>Tracking \/ NAT 增強模組</g
s/>Miscellaneous</>其他</g
s/title: 'TTL Adjust'/title: 'TTL 調整'/g
s/title: 'Inbound Layer 7'/title: '下載時開啟應用層(Layer 7)過濾'/g

#
#	advanced-dhcpdns.asp
#
s/Advanced: DHCP \/ DNS/進階設定：DHCP \/ DNS/g
s/>DHCP \/ DNS Server (LAN)</>DHCP \/ DNS 伺服器 (LAN)</g
s/title: 'Use internal DNS'/title: '使用內建 DNS'/g
s/title: 'Use received DNS with user-entered DNS'/title: '使用用戶輸入之 DNS'/g
s/title: 'Intercept DNS port<br>(UDP 53)'/title: '中斷 DNS 埠(UDP 53)'/g
s/title: 'Use user-entered gateway if WAN is disabled'/title: '當 WAN 關閉, 使用用戶輸入之閘道'/g
s/title: 'Maximum active DHCP leases'/title: 'DHCP 最大租戶數量'/g
s/title: 'Static lease time'/title: '限制租約時間'/g
s/options: \[\[0,'Same as normal lease time'\],\[-1,'"Infinite"'\],\[1,'Custom'\]\]/options: \[\[0,'正常'\],\[-1,'不限制'\],\[1,'自訂'\]\]/g
s/>Custom configuration'/>自定設定'/g
s/Note: The file \/etc\/dnsmasq.custom is also added to the end of Dnsmasq's configuration file if it exists./備註: 若 Dnsmasq 的設定檔存在, \/etc\/dnsmasq.custom 亦附加到設定檔末端./g
s/>DHCP Client (WAN)</>DHCP 用戶端 (WAN)</g
s/title: 'Reduce packet size'/title: '壓縮封包'/g

#
#	advanced-firewall.asp
#
s/Advanced: Firewall/進階設定：防火牆/g
s/>Firewall</>防火牆</g
s/title: 'Respond to ICMP ping'/title: '允許回應 ICMP Ping'/g
s/title: 'Allow multicast'/title: '允許多點傳播'/g
s/title: 'NAT loopback'/title: 'NAT Loopback'/g
s/options: \[\[0,'All'\],\[1,'Forwarded Only'\],\[2,'Disabled'\]\]/options: \[\[0,'全部'\],\[1,'只有被轉送的封包'\],\[2,'關閉'\]\]/g
s/title: 'Enable SYN cookies'/title: '啟用 SYN cookies'/g

#
#	advanced-mac.asp
#
s/Advanced: MAC Address/進階設定： MAC 位址/g
s/>MAC Address</>實體位址(MAC Address)</g
s/title: 'WAN Port'/title: 'WAN MAC'/g
s/value="Default"/value="預設值"/g
s/value="Clone PC"/value="複製 PC 的 MAC"/g
s/title: 'Wireless Interface'/title: 'WLAN MAC'/g
s/>Router's MAC Address:</>LAN MAC:</g
s/>Computer's MAC Address:</>電腦的網路卡 MAC:</g
s/'Addresses must be unique'/'位址不能重覆'/g
s/("Warning: Changing the MAC address may require that you reboot all devices, computers or modem connected to this router. Continue anyway?")/("警告: 若改變 MAC 位址, 則可能需要把連線到這台路由器的設備, 電腦或數據機重新開機. 確認繼續執行?")/g

#
#	advanced-misc.asp
#
s/Advanced: Miscellaneous/進階設定：其他設定/g
s/title: 'Boot Wait Time \*'/title: 'Boot Wait 時間 \*'/g
s/' seconds'/' 秒'/g
s/title: 'WAN Port Speed \*'/title: 'WAN 連線速度 \*'/g
s/options: \[\[0,'10Mb Full'\],\[1,'10Mb Half'\],\[2,'100Mb Full'\],\[3,'100Mb Half'\],\[4,'Auto'\]\]/options: \[\[0,'10Mb 全雙工'\],\[1,'10Mb 半雙工'\],\[2,'100Mb 全雙工'\],\[3,'100Mb 半雙工'\],\[4,'自動選擇'\]\]/g
s/<small>\* Not all models support these options.</<small>\* 並非所有機型皆支援此功能.</g

#
#	advanced-routing.asp
#
s/Advanced: Routing/進階設定：路由表/g
s/>Current Routing Table</>路由表(Routing Table)</g
s/\['Destination', 'Gateway', 'Subnet Mask', 'Metric', 'Interface'\]/\['目的地', '閘道', '子網路遮罩', '路徑量', '介面'\]/g
s/>Static Routing Table</>固定路由表(Static Routing Table)</g
s/\['Destination', 'Gateway', 'Subnet Mask', 'Metric', 'Interface', 'Description'\]/\['目的地', '閘道', '子網路遮罩', '路徑量', '介面', '描述'\]/g
s/title: 'Mode'/title: '模式'/g
s/options: \[\['gateway','Gateway'\],\['router','Router'\]\]/options: \[\['gateway','閘道(Gateway)'\],\['router','路由(Router)'\]\]/g
s/title: 'RIPv1 \&amp; v2'/title: 'RIPv1 \&amp; v2'/g
s/options: \[\[0,'Disabled'\],\[1,'LAN'\],\[2,'WAN'\],\[3,'Both'\]\]/options: \[\[0,'取消'\],\[1,'LAN'\],\[2,'WAN'\],\[3,'兩者'\]\]/g
s/title: 'Spanning-Tree Protocol'/title: '擴張樹協定(STP)'/g

#
#	advanced-wireless.asp
#
s/Advanced: Wireless/進階設定：無線網路參數/g
s/>Settings</>WLAN 進階設定</g
s/title: 'Afterburner'/title: 'Afterburner(125HSM)'/g
s/options: \[\['auto','Auto'\],\['on','Enable'\],\['off','Disable \*'\]\]/options: \[\['auto','自動'\],\['on','開'\],\['off','關 \*'\]\]/g
s/title: 'AP Isolation'/title: '禁止無線用戶端相互連線'/g
s/options: \[\['0','Disable \*'\],\['1','Enable'\]\]/options: \[\['0','關 \*'\],\['1','開'\]\]/g
s/title: 'Authentication Type'/title: '認證方式'/g
s/options: \[\['0','Auto \*'\],\['1','Shared Key'\]\]/options: \[\['0','自動 \*'\],\['1','共用金鑰'\]\]/g
s/title: 'Basic Rate'/title: '基本傳輸速率'/g
s/options: \[\['default','Default \*'\],\['12','1-2 Mbps'\],\['all','All'\]\]/options: \[\['default','預設 \*'\],\['12','1-2 Mbps'\],\['all','All'\]\]/g
s/title: 'Beacon Interval'/title: '示標訊號(Beacon)間隔'/g
s/' <small>(range: 1 - 65535; default: 100)/' <small>(範圍: 1 - 65535; 預設值: 100)/g
s/title: 'CTS Protection Mode'/title: 'CTS 保護模式'/g
s/options: \[\['off','Disable \*'\],\['auto','Auto'\]\]/options: \[\['off','關 \*'\],\['auto','自動'\]\]/g
s/title: 'Distance \/ ACK Timing'/title: '距離 \/ ACK 調整'/g
s/' <small>meters<\/small>&nbsp;&nbsp;<small>(range: 0 - 99999; 0 = use default)/' <small>公尺<\/small>\&nbsp;\&nbsp;<small>(範圍: 0 - 99999; 0 = 使用預設值)/g
s/title: 'DTIM Interval'/title: 'DTIM 間隔'/g
s/' <small>(range: 1 - 255; default: 1)/' <small>(範圍: 1 - 255; 預設值: 1)/g
s/title: 'Fragmentation Threshold'/title: 'Fragmentation 臨界值'/g
s/' <small>(range: 256 - 2346; default: 2346)/' <small>(範圍: 256 - 2346; 預設值: 2346)/g
s/title: 'Frame Burst'/title: '框架爆發(Frame Burst)'/g
s/options: \[\['off','Disable \*'\],\['on','Enable'\]\]/options: \[\['off','關 \*'\],\['on','開'\]\]/g
s/title: 'HP'/title: '高功率'/g
s/title: 'Amplifier'/title: '功率放大器'/g
s/options: \[\['0','Disable'\],\['1','Enable \*'\]\]/options: \[\['0','關'\],\['1','開 \*'\]\]/g
s/title: 'Enhanced RX Sensitivity'/title: '增強接收感度'/g
s/options: \[\['0','Disable'\],\['1','Enable \*'\]\]/options: \[\['0','關'\],\['1','開 \*'\]\]/g
s/title: 'Maximum Clients'/title: '最大無線用戶端數量'/g
s/' <small>(range: 1 - 255; default: 128)/' <small>(範圍: 1 - 255; 預設值: 128)/g
s/title: 'Multicast Rate'/title: '多點傳播速率'/g
s/options: \[\['0','Auto \*'\],\['1000000','1 Mbps'\],\['2000000','2 Mbps'\],\['5500000','5.5 Mbps'\],\['6000000','6 Mbps'\],\['9000000','9 Mbps'\],\['11000000','11 Mbps'\],\['12000000','12 Mbps'\],\['18000000','18 Mbps'\],\['24000000','24 Mbps'\],\['36000000','36 Mbps'\],\['48000000','48 Mbps'\],\['54000000','54 Mbps'\]\]/options: \[\['0','自動 \*'\],\['1000000','1 Mbps'\],\['2000000','2 Mbps'\],\['5500000','5.5 Mbps'\],\['6000000','6 Mbps'\],\['9000000','9 Mbps'\],\['11000000','11 Mbps'\],\['12000000','12 Mbps'\],\['18000000','18 Mbps'\],\['24000000','24 Mbps'\],\['36000000','36 Mbps'\],\['48000000','48 Mbps'\],\['54000000','54 Mbps'\]\]/g
s/title: 'Preamble'/title: '前導同步訊號'/g
s/options: \[\['long','Long \*'\],\['short','Short'\]\]/options: \[\['long','長 \*'\],\['short','短'\]\]/g
s/title: 'RTS Threshold'/title: 'RTS 臨界值'/g
s/' <small>(range: 0 - 2347; default: 2347)/' <small>(範圍: 0 - 2347; 預設值: 2347)/g
s/title: 'Receive Antenna'/title: '接收天線'/g
s/options: \[\['3','Auto \*'\],\['1','A'\],\['0','B'\]\]/options: \[\['3','自動 \*'\],\['1','A'\],\['0','B'\]\]/g
s/title: 'Transmit Antenna'/title: '發射天線'/g
s/options: \[\['3','Auto \*'\],\['1','A'\],\['0','B'\]\]/options: \[\['3','自動 \*'\],\['1','A'\],\['0','B'\]\]/g
s/title: 'Transmit Power'/title: '發射功率'/g
s/>mW (before amplification)</>mW (功率放大前)</g
s/>(range: 1 - 251; default: 10)</>(範圍: 1 - 251; 預設值: 10)</g
s/>(range: 1 - 251; default: 42)</>(範圍: 1 - 251; 預設值: 42)</g
s/title: 'Transmission Rate'/title: '傳輸速率'/g
s/options: \[\['0','Auto \*'\],\['1000000','1 Mbps'\],\['2000000','2 Mbps'\],\['5500000','5.5 Mbps'\],\['6000000','6 Mbps'\],\['9000000','9 Mbps'\],\['11000000','11 Mbps'\],\['12000000','12 Mbps'\],\['18000000','18 Mbps'\],\['24000000','24 Mbps'\],\['36000000','36 Mbps'\],\['48000000','48 Mbps'\],\['54000000','54 Mbps'\]\]/options: \[\['0','自動 \*'\],\['1000000','1 Mbps'\],\['2000000','2 Mbps'\],\['5500000','5.5 Mbps'\],\['6000000','6 Mbps'\],\['9000000','9 Mbps'\],\['11000000','11 Mbps'\],\['12000000','12 Mbps'\],\['18000000','18 Mbps'\],\['24000000','24 Mbps'\],\['36000000','36 Mbps'\],\['48000000','48 Mbps'\],\['54000000','54 Mbps'\]\]/g
s/title: 'WMM'/title: '無線多媒體(WMM)'/g
s/options: \[\['off','Disable \*'\],\['on','Enable'\]\]/options: \[\['off','關 \*'\],\['on','開'\]\]/g
s/title: 'No ACK'/title: '無需互相確認(No ACK)'/g
s/options: \[\['off','Disable \*'\],\['on','Enable'\]\]/options: \[\['off','關 \*'\],\['on','開'\]\]/g
s/<small>The default settings are indicated with the asterisk <b style='font-size: 1.5em'>\*<\/b> symbol./<small>預設值為 <b style='font-size: 1.5em'>\*<\/b> 標示./g
