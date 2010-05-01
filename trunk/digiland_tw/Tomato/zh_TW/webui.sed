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
s/title: 'CPU Load <small>(1 \/ 5 \/ 15 mins)<\/small>'/title: 'CPU 負載 <small>(1 \/ 5 \/ 15 分鐘)<\/small>'/g
s/title: 'Total \/ Free Memory'/title: '總和\/剩餘 記憶體'/g
s/>WAN</>廣域網路(WAN)</g
s/title: 'MAC Address'/title: 'MAC 位址'/g
s/title: 'Connection Type'/title: 'WAN 連線類型'/g
s/text: { 'dhcp':'DHCP', 'static':'Static IP', 'pppoe':'PPPoE', 'pptp':'PPTP', 'l2tp':'L2TP' }/text: { 'dhcp':'DHCP', 'static':'固定 IP', 'pppoe':'PPPoE', 'pptp':'PPTP', 'l2tp':'L2TP' }/g
s/title: 'IP Address'/title: 'WAN IP 位址'/g
s/title: 'Subnet Mask'/title: '子網路遮罩'/g
s/title: 'Gateway'/title: '閘道'/g
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
s/>Wireless</>無線網路(Wireless)</g
s/title: 'Wireless Mode'/title: '無線工作模式'/g
s/title: 'B\/G Mode'/title: '無線網路模式'/g
s/title: 'Radio'/title: '無線電波'/g
s/title: 'SSID'/title: 'SSID'/g
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
s/a.innerHTML = 'deleting...'/a.innerHTML = '刪除中...'/g
s/title="Delete Lease"/title="刪除租約"/g
s/title="Add Static Lease"/title="加入至 MAC 綑綁 IP"/g
s/title="OUI Search"/title="搜尋 OUI 碼"/g
s/\['Interface', 'MAC Address', 'IP Address', 'Name', 'RSSI &nbsp; &nbsp; ', 'Quality', 'Lease &nbsp; &nbsp; '\]/\['介面', 'MAC 位址', 'IP 位址', '名稱', 'RSSI \&nbsp; \&nbsp; ', '品質', '剩餘租約 \&nbsp; \&nbsp; '\]/g
s/>Device List</>連線設備列表</g
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
s/>Warning: 10 second timeout, restarting...&nbsp;</>警告: 逾時 10 秒鐘, 重新繪圖中...\&nbsp;</g
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
s/Hours:&nbsp;/單位(小時):\&nbsp;/g

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
s/title: 'Address'/title: '位址'/g
s/title: 'Ping Count'/title: 'Ping 的次數'/g
s/title: 'Packet Size'/title: '封包大小'/g
s/>(bytes)</>(位元組)</g
s/>Please wait... </>請稍後... </g
s/\['Seq', 'Address', 'RX Bytes', 'TTL', 'RTT (ms)', '+\/- (ms)'\]/\['序號', '位址', '接收位元組', '生存期限TTL', '回應時間RTT(ms)', '＋\/－(ms)'\]/g
s/stats = 'Round-Trip: ' + RegExp.$1 + ' min, ' + RegExp.$2 + ' avg, ' + RegExp.$3 + ' max (ms)<br>' + stats;/stats = '平均變化量: ' + RegExp.$1 + ' 最小值, ' + RegExp.$2 + ' 平均值, ' + RegExp.$3 + ' 最大值 (ms)<br>' + stats;/g
s/stats = '   Packets: ' + RegExp.$1 + ' transmitted, ' + RegExp.$2 + ' received, ' + RegExp.$3 + ' lost<br>';/stats = '封包遺失率: ' + RegExp.$1 + ' 發送, ' + RegExp.$2 + ' 接收, ' + RegExp.$3 + ' 遺失率<br>';/g

#
#	tools-trace.asp
#
s/Tools: Trace/診斷工具：路由追蹤/g
s/>Traceroute</>路由追蹤</g
###s/title: 'Address',/title: '位址',/g
s/value="Trace"/value="追蹤"/g
s/title: 'Maximum Hops'/title: '最大躍點數(Hops)'/g
s/title: 'Maximum Wait Time'/title: '最大等待時間'/g
s/>(seconds per hop)</>(每躍點等候秒數)</g
###s/>Please wait... </>請稍候... </g
s/\['Hop', 'Address', 'Min (ms)', 'Max (ms)', 'Avg (ms)', '+\/- (ms)'\]/\['躍點', '位址', '最小 (ms)', '最大 (ms)', '平均 (ms)', '＋\/－ (ms)'\]/g
s/e, 'Invalid address'/e, '錯誤的位址'/g
