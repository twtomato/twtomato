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
s/>System</>系統資訊(System)</g
s/title: 'Name'/title: '名稱'/g
s/title: 'Model'/title: '機型'/g
s/title: 'Time', rid/title: '現在時間', rid/g
s/title: 'Uptime'/title: '開機時間'/g
s/title: 'CPU Load <small>(1 \/ 5 \/ 15 mins)/title: 'CPU 負載 <small>(1\/5\/15分鐘)/g
s/title: 'Total \/ Free Memory'/title: '總和\/可用 記憶體'/g
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
s/>Disabled</>關閉</g

#
#	status-devices.asp
#
s/Status: Device List/系統狀態：連線設備列表/g
s/>Device List</>連線設備列表(Device List)</g
s/\['Interface', 'MAC Address', 'IP Address', 'Name', 'RSSI &nbsp; &nbsp; ', 'Quality', 'Lease &nbsp; &nbsp; ']/['連線介面', 'MAC 位址', 'IP 位址', '主機名稱', 'RSSI \&nbsp; \&nbsp; ', '品質', '剩餘租約 \&nbsp; \&nbsp; ']/g
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
s/Status: Logs/系統狀態：系統日誌/g
s/>Logs</>系統日誌(Logs)</g
s/>View Last 25 Lines</>查看最後  25 行</g
s/>View Last 50 Lines</>查看最後  50 行</g
s/>View Last 100 Lines</>查看最後 100 行</g
s/>View All</>全部顯示</g
s/>Download Log File</>下載日誌記錄檔</g
s/value="Find"/value="搜尋"/g
s/>Logging Configuration</>日誌記錄管理</g
s/>Internal logging disabled.</>內部日誌紀錄已停用.</g
s/>Enable &raquo;</>啟用 \&raquo;</g

#
#	bwm-realtime.asp
#
s/Bandwidth: Real-Time/頻寬監控：即時流量/g
s/>(10 minute window, 2 second interval)</>[繪圖視窗 (每格二分鐘), 每 2 秒鐘取樣]</g
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
s/>\[reverse]</>[顏色反向]</g
s/>Configure</>設定</g

#
#	bwm-24.asp
#
s/Bandwidth: Last 24 Hours/頻寬監控：24小時內流量/g
s/>(2 minute interval)</>[繪圖視窗 (每格一小時), 每 2 分鐘取樣]</g
s/Hours:/單位(小時):/g
s/this.running ? 'Stop' : 'Start'/this.running ? '關閉' : '開啟'/g
s/Bandwidth monitoring disabled./頻寬監控已關閉./g
s/The rstats program is not responding or is busy. Try reloading after a few seconds./程式無回應或忙碌中. 請稍候再試./g

#
#	bwm-daily.asp
#
s/Bandwidth: Daily/頻寬監控：每日流量/g
s/>WAN Bandwidth - Daily</>WAN 每日流量(Bandwidth - Daily)</g
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
s/>WAN Bandwidth - Weekly</>WAN 每週流量(Bandwidth - Weekly)</g
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
s/makeRow('footer', 'Total'/makeRow('footer', '合計'/g
s/(mo + 1) + '-' + da + '<\/small>'/(mo + 1) + ' 月 ' + da + ' 日 <\/small>'/g
s/\['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']/['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六']/g
s/weeksShort = \['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']/weeksShort = ['日', '一', '二', '三', '四', '五', '六']/g

#
#	bwm-monthly.asp
#
s/Bandwidth: Monthly/頻寬監控：每月流量/g
s/>WAN Bandwidth - Monthly</>WAN 每月流量(Bandwidth - Monthly)</g
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
s/\['Seq', 'Address', 'RX Bytes', 'TTL', 'RTT (ms)', '+\/- (ms)']/['序號', '位址', '接收位元組', '生存期限TTL', '回應時間RTT(ms)', '＋\/－(ms)']/g
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
s/\['Hop', 'Address', 'Min (ms)', 'Max (ms)', 'Avg (ms)', '+\/- (ms)']/['躍點', '主機名稱 (IP 位址)', '最小值 (ms)', '最大值 (ms)', '平均值 (ms)', '＋\/－ (ms)']/g
s/'Invalid address'/'無效的位址'/g

#
#	tools-survey.asp
#
s/Tools: Wireless Survey/診斷工具：無線網路勘查/g
s/>Wireless Site Survey</>無線基地台列表(Wireless Site Survey)</g
s/\['Last Seen', 'SSID', 'BSSID', 'RSSI &nbsp; &nbsp; ', 'Noise &nbsp; &nbsp; ', 'Quality', 'Ch', 'Capabilities', 'Rates']/['發現時間', '無線名稱(SSID)', '無線 MAC 位址', 'RSSI \&nbsp; \&nbsp; ', '雜訊 \&nbsp; \&nbsp; ', '品質', '頻道', '特性', '速率']/g
s/\['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']/['週日','週一','週二','週三','週四','週五','週六']/g
s/' added, '/' 個新增, '/g
s/' removed, '/' 個移除, '/g
s/' total.'/' 個基地台可用.'/g
s/>Last updated: '/>更新於: '/g
s/'Auto Expire'/'自動停止'/g
s/'Auto Refresh'/'自動更新'/g
s/value="Refresh"/value="重新整理"/g
s/>Warning: Wireless connections to this router may be disrupted while using this tool.</>請注意: 若使用此工具, 則連接到此路由器之無線用戶端, 可能會被中斷.</g

#
#	tools-wol.asp
#
s/Tools: WOL/診斷工具：網路喚醒/g
s/>Wake On LAN</>網路喚醒(Wake On LAN)</g
s/\['MAC Address', 'IP Address', 'Status', 'Name']/['MAC 位址', 'IP 位址', '狀態', '名稱']/g
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
s/options: \[\['dhcp','DHCP'],\['pppoe','PPPoE'],\['static','Static'],\['pptp','PPTP'],\['l2tp','L2TP'],\['disabled','Disabled']]/options: [['dhcp','DHCP 取得IP'],['pppoe','PPPoE 撥接'],['static','固定 IP'],['pptp','PPTP'],['l2tp','L2TP'],['disabled','關閉']]/g
s/title: 'Username'/title: '使用者名稱'/g
s/title: 'Password'/title: '密碼'/g
s/title: 'Service Name'/title: '連線名稱'/g
s/title: 'L2TP Server'/title: '連接 L2TP 伺服器'/g
s/title: 'Connect Mode'/title: '連線模式'/g
s/options: \[\['1', 'Connect On Demand'],\['0', 'Keep Alive']]/options: [['1', '需求時才連線'],['0', '永久連線']]/g
s/title: 'Max Idle Time'/title: '逾時時間'/g
s/>(minutes)</>(分)</g
s/title: 'Check Interval'/title: '重連時間'/g
s/>(seconds)</>(秒)</g
s/options: \[\['0', 'Default'],\['1','Manual']]/options: [['0', '預設'],['1','手動']]/g
s/title: 'Use WAN port for LAN'/title: '將 WAN 埠當作區域網路(LAN)使用'/g
s/title: 'Default Gateway'/title: '預設閘道器(Gateway)'/g
s/title: 'Static DNS'/title: 'DNS 伺服器'/g
s/title: 'DHCP Server'/title: 'DHCP 伺服器'/g
s/title: 'IP Address Range'/title: 'IP 位址範圍'/g
s/title: 'Lease Time'/title: '租約時間'/g
s/title: 'WINS'/title: '微軟 WINS'/g
s/title: 'Enable Wireless'/title: '啟用無線功能'/g
s/options: \[\['ap', 'Access Point'],\['apwds', 'Access Point + WDS'],\['sta', 'Wireless Client'],\['wet', 'Wireless Ethernet Bridge'],\['wds', 'WDS']]/options: [['ap', '無線基地台(Access Point)'],['apwds', '無線基地台(Access Point) + WDS'],['sta', '無線客戶端(Wireless Client)'],['wet', '無線網路橋接(Wireless Ethernet Bridge)'],['wds', 'WDS']]/g
s/options:\[\['mixed','Mixed'],\['b-only','B Only'],\['g-only','G Only']]/options:[['mixed','混合'],['b-only','僅 802.11b'],['g-only','僅 802.11g']]/g
s/title: 'Broadcast'/title: 'SSID 廣播'/g
s/value="Scan"/value="掃瞄"/g
s/options: \[\['disabled','Disabled'],\['wep','WEP'],\['wpa_personal','WPA Personal'],\['wpa_enterprise','WPA Enterprise'],\['wpa2_personal','WPA2 Personal'],\['wpa2_enterprise','WPA2 Enterprise'],\['wpaX_personal','WPA \/ WPA2 Personal'],\['wpaX_enterprise','WPA \/ WPA2 Enterprise'],\['radius','Radius']]/options: [['disabled','關閉'],['wep','WEP'],['wpa_personal','WPA 個人版(PSK)'],['wpa_enterprise','WPA 企業版'],['wpa2_personal','WPA2 個人版(PSK)'],['wpa2_enterprise','WPA2 企業版'],['wpaX_personal','WPA \/ WPA2 個人版(PSK)'],['wpaX_enterprise','WPA \/ WPA2 企業版'],['radius','Radius']]/g
s/title: 'Encryption'/title: '編碼方式'/g
s/options: \[\['tkip','TKIP'],\['aes','AES'],\['tkip+aes','TKIP \/ AES']]/options: [['tkip','TKIP'],['aes','AES'],['tkip+aes','TKIP \/ AES']]/g
s/title: 'Shared Key'/title: '公用金鑰'/g
s/title: 'Group Key Renewal'/title: '金鑰更換間隔'/g
s/title: 'Radius Server'/title: 'Radius 伺服器'/g
s/options: \[\['128','128-bits'],\['64','64-bits']]/options: [['128','128 位元'],['64','64 位元']]/g
s/title: 'Passphrase'/title: '通行碼'/g
s/value="Generate"/value="產生"/g
s/value="Random"/value="亂數"/g
s/title: 'WDS'/title: 'WDS'/g
s/options: \[\['0','Link With...'],\['1','Automatic']]/options: [['0','設定遠端 MAC 清單'],['1','允許匿名連接']]/g
s/: 'MAC Address'/: '遠端 MAC 清單'/g
s/value = 'Scan '/value = '掃瞄 '/g
s/value = 'Scan'/value = '掃瞄'/g
s/'Invalid WEP key. Expecting ' + e.maxLength + ' hex or ' + (e.maxLength >> 1) + ' ASCII characters.'/'無效的 WEP key. 應為 ' + e.maxLength + ' 個十六進制數字(0~9 A~F)或 ' + (e.maxLength >> 1) + ' 個 ASCII 字元.'/g
s/'Wireless Client mode requires a valid WAN setting (usually DHCP).'/'無線客戶端(Wireless Client)模式需要正確的設定 WAN (通常是選 DHCP).'/g
s/'WPA2 is supported only in AP mode.'/'WPA2 僅支援無線基地台(AP)模式.'/g
s/'Invalid pre-shared key. Please enter at least 8 characters or 64 hexadecimal digits.'/'公用金鑰(PSK)錯誤. 請輸入至少 8 個字元或 64 個十六進制數字(0~9 A~F).'/g
s/'WDS MAC address required.'/'WDS 需要 MAC 位址.'/g
s/value='Save'/value='儲存'/g
s/value='Cancel'/value='取消'/g

#
#	basic-ident.asp
#
s/Basic: Identification/\一般設定：路由器基本資料/g
s/>Router Identification</>路由器基本資料(Router Identification)</g
s/title: 'Router Name'/title: '路由器名稱'/g
s/title: 'Domain Name'/title: '網域名稱'/g

#
#	basic-time.asp
#
s/Basic: Time/一般設定：時間設定/g
s/>Time</>系統時間(Time)</g
s/title: 'Router Time'/title: '現在時間'/g
s/title: 'Time Zone'/title: '時區'/g
s/'Custom...'/'自定'/g
s/'UTC+08:00 China, Hong Kong, Western Australia, Singapore, Taiwan, Russia'/'UTC+08:00 臺灣, 中國, 香港, 澳洲西部, 新加坡, 俄羅斯'/g
s/title: 'Auto Daylight Savings Time'/title: '日光節約時間(夏令)'/g
s/title: 'Custom TZ String'/title: '自訂時區字串'/g
s/title: 'Auto Update Time'/title: '網路校時'/g
s/options: \[\[-1,'Never'],\[0,'Only at startup'],\[1,'Every hour'],\[2,'Every 2 hours'],\[4,'Every 4 hours'],\[6,'Every 6 hours'],\[8,'Every 8 hours'],\[12,'Every 12 hours'],\[24,'Every 24 hours']]/options: [[-1,'取消'],[0,'僅開機時, 同步校時'],[1,'１小時'],[2,'２小時'],[4,'４小時'],[6,'６小時'],[8,'８小時'],[12,'１２小時'],[24,'每天一次']]/g
s/title: 'Trigger Connect On Demand'/title: '需求時才校時'/g
s/title: 'NTP Time Server'/title: 'NTP 時間伺服器'/g
s/'Default'/'預設'/g
s/'Africa'/'非洲'/g
s/'Asia'/'亞洲'/g
s/'Europe'/'歐洲'/g
s/'Oceania'/'大洋洲'/g
s/'North America'/'北美洲'/g
s/'South America'/'南美洲'/g
s/'US'/'美國'/g
s/'At least one NTP server is required'/'至少需要設定一台 NTP 時間伺服器. 臺灣 NTP 可設定為 clock.stdtime.gov.tw 或 tock.stdtime.gov.tw'/g
s/^The following NTP servers have been automatically blocked by request from the server:$/下列的 NTP 時間伺服器, 已被伺服器端自動封鎖:/g
s/value='Clear'/value='清除'/g

#
#	basic-ddns.asp
#
s/Basic: DDNS/一般設定：動態 DNS/g
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
s/>\* This service determines the IP address using its own method.</>* 此服務商使用特定格式來判定 IP.</g
s/title: 'Hostname'/title: '主機名稱'/g
s/'(Use @IP for the current IP address)'/'(使用 @IP 於現在的 IP 位址)'/g
s/title: 'Wildcard'/title: '萬用字元'/g
s/title: 'MX'/title: 'MX 紀錄'/g
s/title: 'Backup MX'/title: '備份 MX 紀錄'/g
s/title: 'Use as DNS'/title: '當作 DNS'/g
s/title: 'Token \/ URL'/title: 'Token \/ URL'/g
s/title: 'Save state when IP changes (nvram commit)'/title: '當 IP 變動時, 儲存設定值(nvram commit)'/g
s/title: 'Force next update'/title: '強制下次更新'/g
s/title: 'Last IP Address'/title: '目前 IP 位址'/g
s/title: 'Last Result'/title: '目前更新結果'/g
s/'Expecting a URL -- http:\/\/... or https:\/\/...'/'應為 URL -- http:\/\/... 或 https:\/\/...'/g
s/'Invalid hash or URL'/'無效的 URL'/g
s/'DDNS update is running. Please refresh after a few seconds.'/'DDNS 更新中. 稍候幾秒後, 請重新整理.'/g
s/'Automatically retrying in ' + min + ' minutes)<\/small>'/+ min + ' 分鐘後, 自動重試.<\/small>'/g

#
#	basic-static.asp
#
s/Basic: Static DHCP/一般設定：靜態 DHCP/g
s/>Static DHCP</>依 MAC 位址綁定 IP 位址(Static DHCP)</g
s/\['MAC Address', 'IP Address', 'Hostname']/['MAC 位址', 'IP 位址', '主機名稱']/g
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
s/>Wireless Client Filter</>無線存取控制(Wireless Client Filter)</g
s/>Disable filter</>關閉</g
s/>Permit only the following clients</>允許下列的 MAC 位址連線</g
s/>Block the following clients</>拒絕下列的 MAC 位址連線</g
s/\['MAC Address', 'Description']/['MAC 位址', '註解']/g

#
#	advanced-ctnf.asp
#
s/Advanced: Conntrack \/ Netfilter</進階設定: 連線追蹤 \/ 過濾模組</g
s/' in this state)</' 個連線在這種狀態)</g
s/' connections currently tracked)'/' 個連線數目前使用中)'/g
s/value = 'Expire Scheduled... '/value = '正在清除... '/g
s/>Connections</>連線數(Connections)</g
s/title: 'Maximum Connections'/title: '最大連線數量'/g
s/>\[ count current... ]</>[ 顯示目前的連線數 ]</g
s/value='Drop Idle'/value='清除逾時'/g
s/>TCP Timeout</>TCP 逾時(TCP Timeout)</g
s/>UDP Timeout</>UDP 逾時(UDP Timeout)</g
s/>Tracking \/ NAT Helpers</>Tracking \/ NAT 增強模組(Tracking \/ NAT Helpers)</g
s/>Miscellaneous</>其他設定(Miscellaneous)</g
s/title: 'TTL Adjust'/title: 'TTL 調整'/g
s/title: 'Inbound Layer 7'/title: '下載時啟用應用層(Layer 7)過濾'/g

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
s/options: \[\[0,'Same as normal lease time'],\[-1,'"Infinite"'],\[1,'Custom']]/options: [[0,'正常'],[-1,'無限'],[1,'自訂']]/g
s/>Custom configuration'/>自定設定'/g
s/Note: The file \/etc\/dnsmasq.custom is also added to the end of Dnsmasq's configuration file if it exists./備註: 若 Dnsmasq 的設定檔存在, \/etc\/dnsmasq.custom 亦附加至設定檔末端./g
s/>DHCP Client (WAN)</>DHCP 用戶端 (WAN)</g
s/title: 'Reduce packet size'/title: '壓縮封包'/g

#
#	advanced-firewall.asp
#
s/Advanced: Firewall/進階設定：防火牆/g
s/>Firewall</>防火牆(Firewall)</g
s/title: 'Respond to ICMP ping'/title: '允許回應 ICMP Ping'/g
s/title: 'Allow multicast'/title: '允許多點傳播'/g
s/title: 'NAT loopback'/title: 'NAT Loopback'/g
s/options: \[\[0,'All'],\[1,'Forwarded Only'],\[2,'Disabled']]/options: [[0,'全部'],[1,'僅被轉送的封包'],[2,'關閉']]/g
s/title: 'Enable SYN cookies'/title: '啟用 SYN cookies'/g

#
#	advanced-mac.asp
#
s/Advanced: MAC Address/進階設定：MAC 位址/g
s/>MAC Address</>實體位址(MAC Address)</g
s/title: 'WAN Port'/title: '路由器 WAN MAC'/g
s/value="Default"/value="預設值"/g
s/value="Clone PC"/value="複製電腦 NIC MAC"/g
s/title: 'Wireless Interface'/title: '路由器 無線WLAN MAC'/g
s/>Router's MAC Address:</>路由器 LAN MAC:</g
s/>Computer's MAC Address:</>電腦 網路卡NIC MAC:</g
s/'Addresses must be unique'/'位址不能重覆'/g
s/("Warning: Changing the MAC address may require that you reboot all devices, computers or modem connected to this router. Continue anyway?")/("警告: 若改變 MAC 位址, 則可能需要把連線到這台路由器的設備, 電腦或數據機重新開機. 確認繼續執行?")/g

#
#	advanced-misc.asp
#
s/Advanced: Miscellaneous/進階設定：其他設定/g
s/title: 'Boot Wait Time \*'/title: 'Boot Wait 時間 *'/g
s/' seconds'/' 秒'/g
s/title: 'WAN Port Speed \*'/title: 'WAN 連線速度 *'/g
s/options: \[\[0,'10Mb Full'],\[1,'10Mb Half'],\[2,'100Mb Full'],\[3,'100Mb Half'],\[4,'Auto']]/options: [[0,'10Mb 全雙工'],[1,'10Mb 半雙工'],[2,'100Mb 全雙工'],[3,'100Mb 半雙工'],[4,'自動選擇']]/g
s/<small>\* Not all models support these options.</<small>* 並非所有機型皆支援此功能.</g

#
#	advanced-routing.asp
#
s/Advanced: Routing/進階設定：路由表/g
s/>Current Routing Table</>路由表(Current Routing Table)</g
s/\['Destination', 'Gateway', 'Subnet Mask', 'Metric', 'Interface']/['目的地', '閘道', '子網路遮罩', '路徑量', '介面']/g
s/>Static Routing Table</>靜態路由表(Static Routing Table)</g
s/\['Destination', 'Gateway', 'Subnet Mask', 'Metric', 'Interface', 'Description']/['目的地', '閘道', '子網路遮罩', '路徑量', '介面', '描述']/g
s/title: 'Mode'/title: '模式'/g
s/options: \[\['gateway','Gateway'],\['router','Router']]/options: [['gateway','閘道(Gateway)'],['router','路由(Router)']]/g
s/title: 'RIPv1 \&amp; v2'/title: 'RIPv1 \&amp; v2'/g
s/options: \[\[0,'Disabled'],\[1,'LAN'],\[2,'WAN'],\[3,'Both']]/options: [[0,'取消'],[1,'LAN'],[2,'WAN'],[3,'二者']]/g
s/title: 'Spanning-Tree Protocol'/title: '擴張樹協定(STP)'/g

#
#	advanced-wireless.asp
#
s/Advanced: Wireless/進階設定：無線網路參數/g
s/title'>Settings</title'>WLAN 無線進階設定(Settings)</g
s/title: 'Afterburner'/title: 'Afterburner(125HSM)'/g
s/options: \[\['auto','Auto'],\['on','Enable'],\['off','Disable \*']]/options: [['auto','自動'],['on','開'],['off','關 *']]/g
s/title: 'AP Isolation'/title: '禁止無線用戶端相互連線'/g
s/options: \[\['0','Disable \*'],\['1','Enable']]/options: [['0','關 *'],['1','開']]/g
s/title: 'Authentication Type'/title: '認證方式'/g
s/options: \[\['0','Auto \*'],\['1','Shared Key']]/options: [['0','自動 *'],['1','共用金鑰']]/g
s/title: 'Basic Rate'/title: '基本傳輸速率'/g
s/options: \[\['default','Default \*'],\['12','1-2 Mbps'],\['all','All']]/options: [['default','預設 *'],['12','1-2 Mbps'],['all','All']]/g
s/title: 'Beacon Interval'/title: '示標訊號(Beacon)間隔'/g
s/' <small>(range: 1 - 65535; default: 100)/' <small>(範圍: 1 - 65535; 預設值: 100)/g
s/title: 'CTS Protection Mode'/title: 'CTS 保護模式'/g
s/options: \[\['off','Disable \*'],\['auto','Auto']]/options: [['off','關 *'],['auto','自動']]/g
s/title: 'Distance \/ ACK Timing'/title: '距離 \/ ACK 調速'/g
s/' <small>meters<\/small>&nbsp;&nbsp;<small>(range: 0 - 99999; 0 = use default)/' <small>公尺<\/small>\&nbsp;\&nbsp;<small>(範圍: 0 - 99999; 0 = 使用預設值)/g
s/title: 'DTIM Interval'/title: 'DTIM 間隔'/g
s/' <small>(range: 1 - 255; default: 1)/' <small>(範圍: 1 - 255; 預設值: 1)/g
s/title: 'Fragmentation Threshold'/title: 'Fragmentation 臨界值'/g
s/' <small>(range: 256 - 2346; default: 2346)/' <small>(範圍: 256 - 2346; 預設值: 2346)/g
s/title: 'Frame Burst'/title: '框架爆發(Frame Burst)'/g
s/options: \[\['off','Disable \*'],\['on','Enable']]/options: [['off','關 *'],['on','開']]/g
s/title: 'HP'/title: '高功率'/g
s/title: 'Amplifier'/title: '功率放大器'/g
s/options: \[\['0','Disable'],\['1','Enable \*']]/options: [['0','關'],['1','開 *']]/g
s/title: 'Enhanced RX Sensitivity'/title: '增強接收感度'/g
s/options: \[\['0','Disable'],\['1','Enable \*']]/options: [['0','關'],['1','開 *']]/g
s/title: 'Maximum Clients'/title: '無線用戶端最大數量'/g
s/' <small>(range: 1 - 255; default: 128)/' <small>(範圍: 1 - 255; 預設值: 128)/g
s/title: 'Multicast Rate'/title: '多點傳播速率(Multicast Rate)'/g
s/options: \[\['0','Auto \*'],\['1000000','1 Mbps'],\['2000000','2 Mbps'],\['5500000','5.5 Mbps'],\['6000000','6 Mbps'],\['9000000','9 Mbps'],\['11000000','11 Mbps'],\['12000000','12 Mbps'],\['18000000','18 Mbps'],\['24000000','24 Mbps'],\['36000000','36 Mbps'],\['48000000','48 Mbps'],\['54000000','54 Mbps']]/options: [['0','自動 *'],['1000000','1 Mbps'],['2000000','2 Mbps'],['5500000','5.5 Mbps'],['6000000','6 Mbps'],['9000000','9 Mbps'],['11000000','11 Mbps'],['12000000','12 Mbps'],['18000000','18 Mbps'],['24000000','24 Mbps'],['36000000','36 Mbps'],['48000000','48 Mbps'],['54000000','54 Mbps']]/g
s/title: 'Preamble'/title: '前導同步訊號(Preamble)'/g
s/options: \[\['long','Long \*'],\['short','Short']]/options: [['long','長 *'],['short','短']]/g
s/title: 'RTS Threshold'/title: 'RTS 臨界值'/g
s/' <small>(range: 0 - 2347; default: 2347)/' <small>(範圍: 0 - 2347; 預設值: 2347)/g
s/title: 'Receive Antenna'/title: '接收天線'/g
s/options: \[\['3','Auto \*'],\['1','A'],\['0','B']]/options: [['3','自動 *'],['1','A'],['0','B']]/g
s/title: 'Transmit Antenna'/title: '發射天線'/g
s/options: \[\['3','Auto \*'],\['1','A'],\['0','B']]/options: [['3','自動 *'],['1','A'],['0','B']]/g
s/title: 'Transmit Power'/title: '發射功率'/g
s/>mW (before amplification)</>mW (功率放大前)</g
s/>(range: 1 - 251; default: 10)</>(範圍: 1 - 251; 預設值: 10)</g
s/>(range: 1 - 251; default: 42)</>(範圍: 1 - 251; 預設值: 42)</g
s/title: 'Transmission Rate'/title: '傳播速率'/g
s/options: \[\['0','Auto \*'],\['1000000','1 Mbps'],\['2000000','2 Mbps'],\['5500000','5.5 Mbps'],\['6000000','6 Mbps'],\['9000000','9 Mbps'],\['11000000','11 Mbps'],\['12000000','12 Mbps'],\['18000000','18 Mbps'],\['24000000','24 Mbps'],\['36000000','36 Mbps'],\['48000000','48 Mbps'],\['54000000','54 Mbps']]/options: [['0','自動 *'],['1000000','1 Mbps'],['2000000','2 Mbps'],['5500000','5.5 Mbps'],['6000000','6 Mbps'],['9000000','9 Mbps'],['11000000','11 Mbps'],['12000000','12 Mbps'],['18000000','18 Mbps'],['24000000','24 Mbps'],['36000000','36 Mbps'],['48000000','48 Mbps'],['54000000','54 Mbps']]/g
s/title: 'WMM'/title: '無線多媒體(WMM)'/g
s/options: \[\['off','Disable \*'],\['on','Enable']]/options: [['off','關 *'],['on','開']]/g
s/title: 'No ACK'/title: '不需雙向確認(No ACK)'/g
s/options: \[\['off','Disable \*'],\['on','Enable']]/options: [['off','關 *'],['on','開']]/g
s/<small>The default settings are indicated with the asterisk <b style='font-size: 1.5em'>\*<\/b> symbol./<small>預設值為 <b style='font-size: 1.5em'>*<\/b> 標示./g

#
#	forward-basic.asp
#
s/Forwarding: Basic/通訊埠轉送: 一般設定/g
s/>Port Forwarding</>通訊埠轉送設定(Port Forwarding)</g
s/\['On', 'Proto', 'Src Address', 'Ext Ports', 'Int Port', 'Int Address', 'Description']/['啟用', '通訊協定', 'WAN 來源位址', 'WAN 通訊埠範圍', 'LAN 通訊埠', 'LAN 目的位址', '註解']/g
s/>Src Address</>WAN 來源位址</g
s/>(optional)</>(可空白)</g
s/> - Forward only if from this address. Ex: "/> - 限定轉送的"WAN 來源位址"範圍, "空白"表示不限定來源. 例如: "/g
s/<b>Ext Ports</<b>WAN 通訊埠範圍</g
s/> - The ports to be forwarded, as seen from the WAN. Ex: "/> - 轉送的"WAN 通訊埠範圍". 例如: "/g
s/>Int Port</>LAN 通訊埠</g
s/> - The destination port inside the LAN. If blank, the destination port/> - 若未填"LAN 通訊埠", 則與"<i>WAN 通訊埠範圍<\/i>"值相同./g
s/is the same as <i>Ext Ports<\/i>. Only one port per entry is supported when forwarding to a different internal/ 當轉送單一"WAN 通訊埠"至不同的內部區域網路通訊埠, 則需填入"LAN 通訊埠"值./g
s/^port.$//g
s/>Int Address</>LAN 目的位址</g
s/> - The destination address inside the LAN./> - 內部區域網路(LAN)的 IP 位址./g

#
#	forward-dmz.asp
#
s/Forwarding: DMZ/通訊埠轉送: 虛擬非軍事區/g
s/>DMZ</>虛擬非軍事區(DMZ)</g
s/title: 'Enable DMZ'/title: '啟用 DMZ'/g
s/title: 'Destination Address'/title: '目的位址(LAN)'/g
s/title: 'Source Address<br>Restriction'/title: '來源位址(WAN)<br>指定範圍'/g
s/><small>(optional; ex: "/><small>("空白"表示不限定來源; 單一 WAN IP 或指定位址範圍; 例如: "/g

#
#	forward-triggered.asp
#
s/Forwarding: Triggered/通訊埠轉送：觸發式轉送/g
s/>Triggered Port Forwarding</>觸發式通訊埠轉送(Triggered Port Forwarding)</g
s/\['On', 'Protocol', 'Trigger Ports', 'Forwarded Ports', 'Description']/['啟用', '通訊協定', '觸發通訊埠範圍(LAN to WAN)', '轉送通訊埠範圍(WAN to LAN)', '註解']/g
s/<li>Use "-" to specify a range of ports (200-300)./<li>使用 "-" 指定通訊埠範圍 (例如: 200-300)./g
s/<li>Trigger Ports are the initial LAN to WAN "trigger"./<li>若您的電腦"觸發"對外通訊埠範圍(LAN to WAN), 則暫時開啟對內轉送通訊埠範圍(WAN to LAN)./g
s/<li>Forwarded Ports are the WAN to LAN ports that are opened if the "trigger" is activated.//g
s/<li>These ports are automatically closed after a few minutes of inactivity./<li>被開啟的轉送通訊埠, 幾分鐘內若未使用, 則會自動關閉./g

#
#	forward-upnp.asp
#
s/Forwarding: UPnP \/ NAT-PMP</通訊埠轉送：UPnP \/ NAT-PMP</g
s/>Forwarded Ports</>被轉送之通訊埠對映表(Forwarded Ports)</g
s/\['External', 'Internal', 'Internal Address', 'Protocol', 'Description']/['外部通訊埠(WAN)', '內部通訊埠(LAN)', 'LAN IP 位址', '通訊協定', '註解']/g
s/confirm('Delete '/confirm('刪除 '/g
s/.title = 'Click to delete'/.title = '點選刪除'/g
s/confirm('Delete all entries?'/confirm('全部刪除 ?'/g
s/value='Delete All'/value='全部刪除'/g
s/>Settings</>UPnP \/ NAT-PMP 設定(Settings)</g
s/title: 'Enable UPnP'/title: '啟用 UPnP'/g
s/title: 'Enable NAT-PMP'/title: '啟用 NAT-PMP'/g

#
#	qos-settings.asp
#
s/QoS: Basic Settings/頻寬管理：一般設定/g
s/>Basic Settings</>QoS 一般設定(Basic Settings)</g
s/\['Highest', 'High', 'Medium', 'Low', 'Lowest', 'Class A', 'Class B', 'Class C', 'Class D', 'Class E']/['最高等級', '高等級', '中等級', '低等級', '最低等級', 'Ａ等級', 'Ｂ等級', 'Ｃ等級', 'Ｄ等級', 'Ｅ等級']/g
s/title: 'Enable QoS'/title: '啟用頻寬管理QoS'/g
s/title: 'Prioritize small packets with these control flags'/title: '標記封包優先'/g
s/title: 'Prioritize ICMP'/title: 'ICMP 優先'/g
s/title: 'Reset class when changing settings'/title: '當設定值改變, 重設分等機制'/g
s/title: 'Default class'/title: '預設等級'/g
s/>Outbound Rate \/ Limit</>上傳速率 \/ 限制(Outbound Rate \/ Limit)</g
s/title: 'Max Bandwidth'/title: '最大頻寬'/g
s/' <small>kbit\/s/' <small>kbit\/s/g
s/>Inbound Limit</>下載速率 \/ 限制(Inbound Limit)</g
s/>TCP Vegas <small>(network congestion control)</>TCP Vegas <small>(網路擁塞管理)</g
s/title: 'Enable TCP Vegas'/title: '啟用 TCP Vegas'/g
s/title: 'Alpha'/title: 'Alpha'/g
s/title: 'Beta'/title: 'Beta'/g
s/title: 'Gamma'/title: 'Gamma'/g

#
#	qos-classify.asp
#
s/QoS: Classification</頻寬管理：分等機制</g
s/>Outbound Direction</>對外上傳管理(Outbound Direction)</g
s/\['Match Rule', 'Class', 'Description']/['符合規則', '等級', '註解']/g
s/options: \[\[0,'Any Address'],\[1,'Dst IP'],\[2,'Src IP'],\[3,'Src MAC']]/options: [[0,'Any Address'],[1,'目的 IP'],[2,'來源 IP'],[3,'來源 MAC']]/g
s/options: \[\['a','Any Port'],\['d','Dst Port'],\['s','Src Port'],\['x','Src or Dst']]/options: [['a','Any Port'],['d','目的埠'],['s','來源埠'],['x','來源埠或目的埠']]/g
s/'IPP2P (disabled)'/'IPP2P (關閉)'/g
s/'Layer 7 (disabled)'/'Layer 7 (關閉)'/g
s/>KB Transferred</>KB 已傳送</g
s/'Invalid range'/'無效的範圍'/g
s/>QoS disabled.</>頻寬管理QoS 已停用.</g
s/\[\[-1,'Disabled']]/[[-1,'關閉']]/g

#
#	qos-graphs.asp
#
s/QoS: View Graphs/頻寬管理：圖形分析/g
s/>Connections Distribution</>連線分佈圖(Connections Distribution)</g
s/\['Unclassified', 'Highest', 'High', 'Medium', 'Low', 'Lowest', 'Class A', 'Class B', 'Class C', 'Class D', 'Class E']/['未分等', '最高等級', '高等級', '中等級', '低等級', '最低等級', 'Ａ等級', 'Ｂ等級', 'Ｃ等級', 'Ｄ等級', 'Ｅ等級']/g
s/>Bandwidth Distribution (Outbound)</>上傳頻寬分佈圖(Bandwidth Distribution (Outbound))</g

#
#	qos-detailed.asp
#
s/QoS: View Details/頻寬管理：連線詳細內容/g
s/>View Details</>詳細內容(View Details)</g
s/\['Proto', 'Source', 'S Port', 'Destination', 'D Port', 'Class']/['通訊協定', '來源 IP', '來源埠', '目的 IP', '目的埠', '類型']/g
s/'View Details: '/'詳細內容: '/g
s/> Automatically Resolve Addresses/> 自動解析IP/g
s/>Loading...</>載入中...</g

#
#	restrict.asp
#
s/Access Restrictions/網路瀏覽限制/g
s/>Access Restriction Overview</>網路瀏覽限制清單(Access Restriction Overview)</g
s/\['Description', 'Schedule']/['註解', '排程']/g
s/value="Add"/value="新增"/g
s/'Everyday'/'每天'/g

#
#	restrict-edit.asp
#
s/Edit Access Restrictions/編輯網路瀏覽限制/g
s/>Access Restriction</>網路瀏覽限制設定(Access Restriction)</g
s/title: 'Enabled'/title: '啟用'/g
s/title: 'Description'/title: '註解'/g
s/title: 'Schedule'/title: '排程'/g
s/' All Day &nbsp; '/' 整天 24 小時 \&nbsp; '/g
s/' Everyday'/' 每日'/g
s/title: 'Time'/title: '時間'/g
s/title: 'Days'/title: '每週'/g
s/' Sun &nbsp; '/' 星期日 \&nbsp; '/g
s/' Mon &nbsp; '/' 星期一 \&nbsp; '/g
s/' Tue &nbsp; '/' 星期二 \&nbsp; '/g
s/' Wed &nbsp; '/' 星期三 \&nbsp; '/g
s/' Thu &nbsp; '/' 星期四 \&nbsp; '/g
s/' Fri &nbsp; '/' 星期五 \&nbsp; '/g
s/' Sat'/' 星期六'/g
s/title: 'Type', name/title: '型式', name/g
s/' Normal Access Restriction'/' 一般限制'/g
s/' Disable Wireless'/' 關閉無線'/g
s/title: 'Applies To'/title: '適用於'/g
s/options: \[\[0,'All Computers \/ Devices'],\[1,'The Following...'],\[2,'All Except...']]/options: [[0,'所有的電腦 \/ 裝置'],[1,'以下列表...'],[2,'排除以下列表...']]/g
s/title: 'Blocked Resources'/title: '限制'/g
s/' Block All Internet Access'/' 限制所有的網際網路連線'/g
s/title: 'Port \/<br>Application'/title: '通訊埠 \/<br>應用程式'/g
s/\['Rules']/['規則']/g
s/title: 'HTTP Request'/title: 'HTTP Request'/g
s/title: 'HTTP Requested Files'/title: '限制 HTTP 要求的檔案'/g
s/value='Delete...'/value='刪除中...'/g
s/'Invalid MAC address or IP address\/range'/'無效的 MAC 或 IP 位址\/範圍'/g
s/\['MAC \/ IP Address']/['MAC \/ IP 位址']/g
s/'Please enter a specific port or select an application match'/'請輸入明確的通訊埠或選擇符合的應用程式'/g
s/confirm('Delete this rule?'/confirm('刪除這條規則?'/g
s/'No MAC or IP address was specified'/'無 MAC 或 IP 位址已被指定'/g
s/alert('This rule is too big. Please reduce by ' + (data.length - 2048) + ' characters.')/alert('規則內容太多. 請減少 ' + (data.length - 2048) + ' 字元.')/g

#
#	admin-access.asp
#
s/Admin: Access/路由器管理：連線登入與密碼/g
s/>Web Admin</>路由器管理設定(Web Admin)</g
s/title: 'Local Access'/title: '本地端登入模式'/g
s/options: \[\[0,'Disabled'],\[1,'HTTP'],\[2,'HTTPS'],\[3,'HTTP &amp; HTTPS']]/options: [[0,'關閉'],[1,'HTTP'],[2,'HTTPS'],[3,'HTTP \&amp; HTTPS']]/g
s/title: 'HTTP Port'/title: 'HTTP 通訊埠'/g
s/title: 'HTTPS Port'/title: 'HTTPS 通訊埠'/g
s/title: 'SSL Certificate'/title: 'SSL 憑證'/g
s/title: 'Common Name (CN)'/title: '一般名稱 (CN)'/g
s/>(optional; space separated)</>(可空白; 以空隔space區分)</g
s/title: 'Regenerate'/title: '重新產生'/g
s/title: 'Save In NVRAM'/title: '儲存至 NVRAM'/g
s/title: 'Remote Access'/title: '遠端登入'/g
s/options: \[\[0,'Disabled'],\[1,'HTTP'],\[2,'HTTPS']]/options: [[0,'關閉'],[1,'HTTP'],[2,'HTTPS']]/g
s/title: 'Port'/title: '通訊埠'/g
s/title: 'Allow Wireless Access'/title: '允許無線網路登入管理'/g
s/title: 'Color Scheme'/title: '風格'/g
s/options: \[\['red','Tomato'],\['black','Black'],\['blue','Blue'],\['bluegreen','Blue &amp; Green (Lighter)'],\['bluegreen2','Blue &amp; Green (Darker)'],\['brown','Brown'],\['cyan','Cyan'],\['olive','Olive'],\['pumpkin','Pumpkin'],\['ext\/custom','Custom (ext\/custom.css)']]/['red','蕃茄紅'],['black','黑色'],['blue','藍色'],['bluegreen','藍 \&amp; 綠色 (淺色)'],['bluegreen2','藍 \&amp; 綠色 (深色)'],['brown','棕色'],['cyan','青綠色'],['olive','橄欖色'],['pumpkin','南瓜色'],['ext\/custom','客製化 (ext\/custom.css)']]/g
s/>SSH Daemon</>SSH 常駐程式(SSH Daemon)</g
s/title: 'Enable at Startup'/title: '開機時啟動',/g
s/title: 'Remote Port'/title: '遠端登入的通訊埠'/g
s/title: 'Allow Password Login'/title: '登入密碼'/g
s/title: 'Authorized Keys'/title: '授權金鑰'/g
s/(sdup ? 'Stop' : 'Start')/(sdup ? '關閉' : '開啟')/g
s/>Telnet Daemon</>Telnet 常駐程式(Telnet Daemon)</g
s/(tdup ? 'Stop' : 'Start')/(tdup ? '關閉' : '開啟')/g
s/>Admin Restrictions</>登入限制(Admin Restrictions)</g
s/title: 'Allowed Remote<br>IP Address'/title: '允許登入的遠端<br>IP 位址'/g
s/title: 'Limit Connection Attempts'/title: '限制嘗試登入次數'/g
s/'&nbsp; every &nbsp;'/'\&nbsp; 次, 每 \&nbsp;'/g
s/'&nbsp; seconds'/'\&nbsp; 秒內'/g
s/>Password</>變更密碼(Password)</g
s/title: '<i>(re-enter to confirm)<\/i>'/title: '<i>(確認密碼)<\/i>'/g
s/("Unsaved changes will be lost. Continue anyway?")/("尚未儲存的設定值將會遺失. 是否繼續執行?")/g
s/'Warning: Web Admin is about to be disabled. If you decide to re-enable Web Admin at a later time, it must be done manually via Telnet, SSH or by performing a hardware reset. Are you sure you want to do this?'/'請注意: 若關閉網頁管理介面(WebUI), 則只能使用 Telnet, SSH 登入或作硬體 Reset 機器. 您確定要這樣做嗎?'/g
s/'The local http\/https must also be enabled when using remote access.'/'遠端管理必須開啟 HTTP\/HTTPS.'/g
s/'Invalid SSH key.'/'無效的 SSH 金鑰'/g
s/'Both passwords must match.'/'輸入的密碼不同'/g
s/'Password must not be empty.'/'請輸入密碼'/g

#
#	admin-bwm.asp
#
s/Admin: Bandwidth Monitoring/路由器管理：頻寬監控/g
s/>Bandwidth Monitoring</>頻寬監控設定</g
s/title: 'Enable'/title: '啟用'/g
s/title: 'Save History Location'/title: '儲存歷史紀錄於'/g
s/options: \[\['','RAM (Temporary)'],\['\*nvram','NVRAM'],\['\/jffs\/','JFFS2'],\['\/cifs1\/','CIFS 1'],\['\/cifs2\/','CIFS 2'],\['\*user','Custom Path']]/options: [['','RAM 記憶體 (暫存)'],['*nvram','NVRAM'],['\/jffs\/','JFFS2'],['\/cifs1\/','CIFS 1'],['\/cifs2\/','CIFS 2'],['*user','自訂路徑']]/g
s/title: 'Save Frequency'/title: '儲存的頻率'/g
s/\[1,'Every Hour'],\[2,'Every 2 Hours'],\[3,'Every 3 Hours'],\[4,'Every 4 Hours'],\[5,'Every 5 Hours'],\[6,'Every 6 Hours']/[1,'每小時'],[2,'每2小時'],[3,'每3小時'],[4,'每4小時'],[5,'每5小時'],[6,'每6小時']/g
s/\[9,'Every 9 Hours'],\[12,'Every 12 Hours'],\[24,'Every 24 Hours'],\[48,'Every 2 Days'],\[72,'Every 3 Days'],\[96,'Every 4 Days']/[9,'每9小時'],[12,'每12小時'],[24,'每天'],[48,'每兩天'],[72,'每三天'],[96,'每四天']/g
s/\[120,'Every 5 Days'],\[144,'Every 6 Days'],\[168,'Every Week']]/[120,'每五天'],[144,'每六天'],[168,'每週']]/g
s/title: 'Save On Shutdown'/title: '關機時儲存'/g
s/title: 'Create New File<br><small>(Reset Data)/title: '建立新檔<br><small>(重設資料)/g
s/<small>(note: enable if this is a new file)/<small>(注意: 若這是新檔案, 則啟用)/g
s/title: 'Create Backups'/title: '建立備份'/g
s/title: 'First Day Of The Month'/title: '每月紀錄的第一天日期'/g
s/title: 'Excluded Interfaces'/title: '排除的網路介面名稱'/g
s/<small>(comma separated list)/<small>(用逗號comma分隔介面名稱)/g
s/>Backup</>備份頻寬監控紀錄</g
s/value='Backup'/value='備份'/g
s/>Link</>連結(儲存檔案)</g
s/>Restore</>還原頻寬監控紀錄</g
s/value='Restore'/value='還原'/g
s/alert('Invalid filename')/alert('檔案名稱錯誤')/g
s/alert('Incorrect filename. Expecting a ".cfg" file.')/alert('檔案名稱錯誤. 應為 ".cfg" 檔案')/g
s/confirm('Are you sure?'/confirm('您確定嗎 ?'/g
s/('WARNING: Erasing the NVRAM on a ' + nvram.t_model_name + ' router may be harmful. It may not be able to re-setup the NVRAM correctly after a complete erase. Proceeed anyway?'))/('請注意: 清除 NVRAM 的 ' + nvram.t_model_name + ' 路由器可能會損毀.完全清除之後 可能無法正確設定 NVRAM. 是否繼續執行 ?'))/g
s/alert('Incorrect filename. Expecting a ".gz" file.')/alert('檔案名稱錯誤. 應為 ".gz" 檔案')/g
s/('Restore data from ' + name + '?')/('是否從 ' + name + '恢復?')/g
s/'Please start at the \/ root directory.'/'請從 \/ 根目錄開始.'/g
s/'JFFS2 is not enabled.'/'JFFS2 尚未啟用.'/g
s/'CIFS #' + RegExp.$1 + ' is not enabled.'/'CIFS #' + RegExp.$1 + ' 尚未啟用.'/g
s/('Frequent saving to NVRAM or JFFS2 is not recommended. Continue anyway?')/('不建議對 NVRAM 或 JFFS2 作頻繁的寫入儲存. 是否繼續?')/g
s/('Note: ' + path + ' will be treated as a file. If this is a directory, please use a trailing \/. Continue anyway?')/('注意: ' + path + ' 將會被視為一個檔案. 如果這是一個目錄, 路徑尾端請使用 \/. 是否繼續?')/g

#
#	admin-buttons.asp
#
s/Admin: Buttons/路由器管理：特殊按鈕 \/ LED/g
s/>SES\/AOSS Button</>SES\/AOSS 按鈕開關(Button)</g
s/title: "When Pushed For..."/title: "按住秒數, 之後執行..."/g
s/\[\[0,'Do Nothing'],\[1,'Toggle Wireless'],\[2,'Reboot'],\[3,'Shutdown'],\[4,'Run Custom Script']]/[[0,'不做任何事'],[1,'開\/關 無線網路'],[2,'重新開機'],[3,'關機'],[4,'執行自訂指令(Script)']]/g
s/title: '0-2 Seconds'/title: '0-2 秒'/g
s/title: '4-6 Seconds'/title: '4-6 秒'/g
s/title: '8-10 Seconds'/title: '8-10 秒'/g
s/title: '12+ Seconds'/title: '12+ 秒'/g
s/title: 'Custom Script'/title: '自訂指令(Script)'/g
s/>Bridge\/Auto Switch</>無線橋接開關(Bridge\/Auto Switch)</g
s/>Startup LED</>開啟 LED 指示燈(Startup LED)</g
s/title: 'Amber SES'/title: '琥珀色 SES'/g
s/title: 'White SES'/title: '白色 SES'/g
s/title: 'AOSS'/title: 'AOSS'/g
s/title: 'Bridge'/title: 'Bridge'/g
s/'<i>This feature is not supported on this router./'<i>路由器硬體不支援特殊按鈕開關功能./g

#
#	admin-cifs.asp
#
s/Admin: CIFS Client/路由器管理：連接網路芳鄰/g
s/>CIFS Client</>網路芳鄰設定(CIFS Client)</g
s/title: 'UNC'/title: 'UNC 路徑'/g
s/title: 'Domain'/title: '網域'/g
s/title: 'Execute When Mounted'/title: '掛載後執行'/g
s/title: 'Total \/ Free Size'/title: '總容量 \/ 可用空間'/g
s/'(not mounted)'/'(未掛載)'/g
s/'Invalid '/'無效的 '/g
s/'Invalid UNC'/'無效的 UNC 路徑'/g

#
#	admin-config.asp
#
s/Admin: Configuration/路由器管理：路由器設定值/g
s/>Backup Configuration</>備份路由器設定值(Backup Configuration)</g
s/>Restore Configuration</>還原路由器設定值(Restore Configuration)</g
s/Select the configuration file to restore:/選擇所要還原的設定檔:/g
s/>Restore Default Configuration</>恢復 Tomato 預設值(Restore Default Configuration)</g
s/>Select...</>請選擇...</g
s/>Restore default router settings (normal)</>恢復 Tomato 預設值 (一般的)</g
s/>Erase all data in NVRAM memory (thorough)</>清除 NVRAM 全部資料 (徹底的)</g
s/value='OK'/value='確定'/g

#
#	admin-debug.asp
#
s/Admin: Debugging/路由器管理：除錯/g
s/>Debugging</>除錯設定(Debugging)</g
s/title: 'Avoid performing an NVRAM commit'/title: '避免寫入(commit) NVRAM'/g
s/title: 'Enable cprintf output to console'/title: '將 cprintf 輸出至終端機視窗(console)'/g
s/title: 'Enable cprintf output to \/tmp\/cprintf'/title: '將 cprintf 輸出至 \/tmp\/cprintf'/g
s/title: 'Enable DDNS output to \/tmp\/mdu-\*'/title: '將 DDNS 輸出至 \/tmp\/mdu-*'/g
s/title: 'Count cache memory as free memory'/title: '快取記憶體(cache)合併計算於可用記憶體(free)'/g
s/title: 'Avoid displaying LAN to router connections'/title: '避免顯示本地端連線(LAN to router)'/g
s/title: 'Console log level'/title: 'Console 日誌紀錄等級(log level)'/g
s/title: 'Do not restart the following process if they die'/title: '當下列程序(process)消失, 不要自動重新執行'/g
s/>Clear Cookies</>清除 Cookies</g
s/>NVRAM Commit</>寫入 NVRAM</g
s/>Reboot</>重新開機</g
s/>Shutdown</>關機</g
s/>Download CFE</>下載 CFE</g
s/>Download Iptables Dump</>下載 Iptables 傾印檔</g
s/>Download Logs</>下載日誌記錄檔(Logs)</g
s/>Download NVRAM Dump</>下載 NVRAM 傾印檔</g
s/<b>Warning<\/b>: The NVRAM Dump text file may contain information like wireless/<b>請注意<\/b>: NVRAM 傾印檔, 內含私人資料. 例如: 無線金鑰, 帳號\/密碼等. 請先檢視與編輯, 清除重要資訊後, 再交予他人.<br>/g
s/^encryption keys and usernames\/passwords for the router, ISP and DDNS. Please$//g
s/^review &amp; edit this file before sharing it with$//g
s/^anyone.<br>//g

#
#	admin-jffs2.asp
#
s/Admin: JFFS2/路由器管理：JFFS2/g
s/confirm("Format the JFFS2 partition?")/confirm("格式化 JFFS2 區塊嗎?")/g
s/value="Format \/ Erase..."/value="格式化 \/ 清除..."/g
s/>Please wait for </>請稍候 </g
s/>about 60 seconds</>約1分鐘</g

#
#	admin-log.asp
#
s/Admin: Logging/路由器管理：系統日誌/g
s/>Syslog</>系統日誌設定(Syslog)</g
s/title: 'Log Internally'/title: '紀錄於路由器內部'/g
s/title: 'Log To Remote System'/title: '紀錄至遠端系統'/g
s/title: 'IP Address \/ Port'/title: 'IP 位址 \/ 通訊埠'/g
s/title: 'Generate Marker'/title: '產生間隔標籤'/g
s/options: \[\[0,'Disabled'],\[30,'Every 30 Minutes'],\[60,'Every 1 Hour'],\[120,'Every 2 Hours']]/options: [[0,'關閉'],[30,'每 30 分鐘'],[60,'每 1 小時'],[120,'每 2 小時']]/g
s/title: 'Events Logged'/title: '事件紀錄'/g
s/<small>(some of the changes will take effect after a restart)/<small>(某些事件需重新開機)/g
s/title: 'Access Restriction'/title: '網路瀏覽限制'/g
s/title: 'Cron'/title: '定期執行指令(Cron)'/g
s/title: 'DHCP Client'/title: 'DHCP 租戶連線'/g
s/title: 'NTP'/title: '網路校時(NTP)連線'/g
s/title: 'PPPoE'/title: 'PPPoE 連線'/g
s/title: 'Scheduler'/title: '定時作業(Scheduler)'/g
s/title: 'Connection Logging'/title: '連線紀錄(Connection Logging)'/g
s/title: 'Inbound'/title: '對內連線(Inbound)'/g
s/\[\[0,'Disabled (recommended)'],\[1,'If Blocked By Firewall'],\[2,'If Allowed By Firewall'],\[3,'Both']]/[[0,'關閉 (建議)'],[1,'被防火牆拒絕'],[2,'被防火牆允許'],[3,'二者皆紀錄']]/g
s/title: 'Outbound'/title: '對外連線(Outbound)'/g
s/title: 'Limit'/title: '限制於'/g
s/>(messages per minute \/ 0 for unlimited)</>(則訊息紀錄於每分鐘 \/ 0 不限制)</g

#
#	admin-sched.asp
#
s/Scheduler</路由器管理：定時作業</g
s/title'>Reboot</title'>重新開機(Reboot)</g
s/\[-1, 'Every minute'], \[-3, 'Every 3 minutes'], \[-5, 'Every 5 minutes'], \[-15, 'Every 15 minutes'], \[-30, 'Every 30 minutes']/[-1, '每分鐘'], [-3, '每隔 3 分鐘'], [-5, '每隔 5 分鐘'], [-15, '每隔 15 分鐘'], [-30, '每隔 30 分鐘']/g
s/\[-60, 'Every hour'], \[-(12 \* 60), 'Every 12 hours'], \[-(24 \* 60), 'Every 24 hours']/[-60, '每小時'], [-(12 * 60), '每隔 12 小時'], [-(24 * 60), '每隔 24 小時']/g
s/\['e', 'Every...']/['e', '每隔..(自訂)']/g
s/>minutes</>分鐘</g
s/' Sat &nbsp; &nbsp;'/' 星期六 \&nbsp; \&nbsp;'/g
s/>Reconnect</>重新連線(Reconnect)</g
s/>Custom 1</>自訂 1</g
s/title: 'Command'/title: '指令'/g
s/>Custom 2</>自訂 2</g
s/>Custom 3</>自訂 3</g

#
#	admin-scripts.asp
#
s/Admin: Scripts/路由器管理：系統指令/g
s/\[\['as-init', 'Init'],\['as-shut', 'Shutdown'],\['as-fire','Firewall'],\['as-wanup', 'WAN Up']]/[['as-init', '開機後(Init)'],['as-shut', '關機前(Shutdown)'],['as-fire','防火牆(Firewall)'],['as-wanup', 'WAN 連線後(WAN Up)']]/g
s/' script is too long. Maximum allowed is ' + x + ' bytes.'/' 指令太多. 請勿超過 ' + x + ' 位元組.'/g
s/'> Word Wrap'/'> 自動換行'/g

#
#	admin-upgrade.asp
#
s/Admin: Upgrade/路由器管理：韌體升級/g
s/>Upgrade Firmware</>升級韌體(Upgrade Firmware)</g
s/Select the file to use:/選擇韌體:/g
s/value='Upgrade'/value='升級'/g
s/>Current Version:</>目前版本:</g
s/>Free Memory:</>可用記憶體:</g
s/<small>(aprox. size that can be buffered completely in RAM)/<small>(可用記憶體空間必須大於韌體檔案)/g
s/alert('Expecting a ".bin" or ".trx" file.')/alert('應為 ".bin" 或 ".trx" 檔案.')/g
s/('Are you sure you want to upgrade using '/('確定要使用這個檔案更新 '/g
s/Cannot upgrade if JFFS2 is enabled./JFFS2 啟用時無法更新韌體./g
s/An upgrade may overwrite the JFFS2 partition currently in use. Before upgrading,/韌體升級會覆寫目前使用中的 JFFS2 區塊. 升級前, 請先備份 JFFS2 的資料. 關閉 JFFS2 後, 再重新開機./g
s/please backup the contents of the JFFS2 partition, disable it, then reboot the router.//g
s/>Disable &raquo;</>關閉 \&raquo;</g
s/Please wait while the firmware is uploaded \&amp; flashed./上傳韌體更新中, 請稍候...直到軔體升級完成./g
s/>Warning:<\/b> Do not interrupt this browser or the router!</>請注意:<\/b> 請勿中斷瀏覽器或關閉電源!</g

#
#	about.asp
#
s/About/關於 Tomato/g
s/>Tomato</>蕃茄(Tomato)</g
s/>Version </>正體中文版 </g
s/Tomato Firmware v</蕃茄(Tomato)韌體 版本: v</g
s/Built on </編譯建立於 </g

#
#	reboot.asp
#
s/Rebooting.../重新開機.../g
s/value = 'Continue'/value = '繼續'/g
s/Please wait while the router reboots.../重新啟動中, 請稍候.../g

#
#	reboot-default.asp
#
s/Restoring Defaults.../恢復 Tomato 預設值.../g
s/Please wait while the defaults are restored.../預設值恢復中, 請稍後.../g
s/The router will reset its address back to 192.168.1.1. You may need to renew your computer's DHCP or reboot your computer before continuing./路由器 LAN IP 恢復為 192.168.1.1. 您的電腦網路卡需由 DHCP 重新取得 IP, 或將電腦重新開機./g

#
#	shutdown.asp
#
s/Shutting down.../關機中.../g
s/Please wait while the router shuts down.../關機中, 請稍後.../g
s/'You can now unplug the router.'/'您現在可以關閉路由器電源.'/g

#
#	logout.asp
#
s/>Logout</>已登出</g
s/To clear the credentials cached by the browser:/若欲清除瀏覽器快取:/g
s/- Leave the password field blank./\- 密碼欄位空白./g
s/- Click OK\/Login/- 點選 確定/g
s/- Select Cancel./- 點選 取消./g

#
#	clearcookies.asp
#
s/>Cookies Cleared</>Cookies 已清除</g
s/'<li>no cookie found'/'<li>無 cookie'/g

#
#	error.asp
#
s/Error/錯誤/g
s/'Unknown error'/'未知錯誤'/g
s/value='Back'/value='返回'/g

#
#	mnoise.asp
#
s/Measuring Noise.../測量背景雜訊.../g
s/Measuring radio noise floor.../測量背景雜訊準位.../g
s/Wireless access has been temporarily disabled for /無線訊號暫時斷訊 /g
s/15 seconds/15 秒/g

#
#	saved.asp
#
s/Changes Saved.../設定值已儲存.../g
s/value="Continue"/value="繼續"/g
s/Please Wait.../請稍後.../g

#
#	saved-moved.asp
#
s/Restarting.../正在重新開機中.../g
s/The router's new IP address is </路由器 LAN IP 位址已變更至 </g
s/You may need to release then renew your computer's DHCP lease before continuing./繼續操作前, 或許需先釋放電腦網路卡 IP, 再由 DHCP 重新取得./g
s/Please wait while the router restarts.../重新開機中, 請稍後.../g