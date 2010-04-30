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

s/msg.innerHTML = 'Saving...';/msg.innerHTML = '正在儲存...';/g
s/else msg.innerHTML = 'Saved';/else msg.innerHTML = '已儲存';/g
s/(e, 'Invalid ' + name + '. Valid range: '/(e, '不正確的 ' + name + '. 有效範圍為: '/g
s/(e, 'Invalid MAC or IP address');/(e, '不正確的 MAC 或 IP 位址');/g
s/(e, 'Invalid IP address range', quiet);/(e, '不正確的 IP 範圍', quiet);/g
s/(e, 'Invalid IP address', quiet);/(e, '不正確的 IP 位址', quiet);/g
s/(e, 'IP address outside of LAN', quiet);/(e, 'IP 位址 超出 LAN', quiet);/g
s/(e, 'Invalid IP address range', quiet);/(e, '不正確的 IP 範圍', quiet);/g
s/(e, 'Invalid IP address', quiet);/(e, '不正確的 IP 位址', quiet);/g
s/(e, 'Invalid netmask', quiet);/(e, '子網路遮罩 不正確', quiet);/g
s/(e, 'Invalid port range: '/(e, '不正確的通訊埠範圍: '/g
s/(e, 'Invalid port', quiet);/(e, '不正確的通訊埠', quiet);/g
s/(e, 'Expecting a list of ports or port range.', quiet);/(e, '必須表中列的 通訊埠 或 通訊埠範圍.', quiet);/g
s/(e, 'Invalid MAC address', quiet);/(e, '不正確的 MAC 位址', quiet);/g
s/(e, 'Invalid length. Please enter at least ' + min + ' character'/(e, '不正確的長度. 請至少輸入  ' + min + ' 個字元'/g
s/(e, 'Invalid length. Please reduce the length to ' + max + ' characters or less.',/(e, '不正確的長度. 請縮短長度少於 ' + max + ' 個字元',/g
s/(e, "Invalid name. Only characters \\"A-Z 0-9 . - _\\" are allowed.",/(e, "不正確的字元. 只有 \\"A-Z 0-9 . - _\\" 會被接受.",/g
s/<img src="rpu.gif" onclick="this.parentNode.tgo.rpUp(this.parentNode.ref)" title="Move Up">/<img src="rpu.gif" onclick="this.parentNode.tgo.rpUp(this.parentNode.ref)" title="向上移動">/g
s/<img src="rpd.gif" onclick="this.parentNode.tgo.rpDn(this.parentNode.ref)" title="Move Down">/<img src="rpd.gif" onclick="this.parentNode.tgo.rpDn(this.parentNode.ref)" title="向下移動">/g
s/<img src="rpm.gif" onclick="this.parentNode.tgo.rpMo(this,this.parentNode.ref)" title="Move">/<img src="rpm.gif" onclick="this.parentNode.tgo.rpMo(this,this.parentNode.ref)" title="移動">/g
s/<img src="rpx.gif" onclick="this.parentNode.tgo.rpDel(this.parentNode.ref)" title="Delete">/<img src="rpx.gif" onclick="this.parentNode.tgo.rpDel(this.parentNode.ref)" title="刪除">/g
s/e.title = 'Click to edit';/e.title = '點選編輯';/g
s/b\.push('1 minute');/b\.push('1 分鐘');/g
s/b\.push((v \/ 60) + ' minutes');/b\.push((v \/ 60) + ' 分鐘');/g
s/b\.push(v + ' seconds');/b\.push(v + ' 秒');/g
s/genStdTimeList('refresh-time', 'Auto Refresh', min);/genStdTimeList('refresh-time', '自動更新', min);/g
s/button value="Delete"/button value="刪除"/g
s/button value="OK"/button value="確認"/g
s/button value="Cancel"/button value="取消"/g
s/button value="Add"/button value="新增"/g
s/'Stop' : 'Refresh';/'停止' : '更新';/g
s/" value="Refresh"/" value="更新"/g
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
s/\['Trace',/\['追蹤路由',/g
s/\['Wireless Survey',/\['搜尋AP',/g
s/\['WOL',/\['網路喚醒 WOL',/g
s/\['Basic',/\['一般設定',/g
s/\['Network',/\['網路',/g
s/\['Identification',/\['基本資料',/g
s/\['Time',/\['時間',/g
s/\['DDNS',/\['DDNS',/g
s/\['Static DHCP',/\['DHCP MAC 綑綁 IP',/g
s/\['Wireless Filter',/\['無線 - 存取控制',/g
s/\['Advanced',/\['進階設定',/g
s/\['Conntrack \/ Netfilter',/\['連線追蹤\/過濾模組',/g
s/\['DHCP \/ DNS',/\['DHCP \/ DNS',/g
s/\['Firewall',/\['防火牆',/g
s/\['MAC Address',/\['MAC 位址',/g
s/\['Miscellaneous',/\['其他設定',/g
s/\['Routing',/\['路由表',/g
s/\['Watchdog',/\['Watchdog',/g
s/\['Wireless',/\['無線網路參數',/g
s/\['Port Forwarding',/\['通訊埠轉發',/g
s/\['Basic',/\['一般設定',/g
s/\['DMZ',/\['虛擬非軍事區(DMZ)',/g
s/\['Triggered',/\['通訊埠轉發',/g
s/\['UPnP',/\['UPnP 管理',/g
s/\['QoS',/\['頻寬管理 QoS',/g
s/\['Basic Settings',/\['一般設定',/g
s/\['Classification',/\['分等機制',/g
s/\['View Graphs',/\['圖形分析',/g
s/\['View Details',/\['連線列表',/g
s/\['Access Restriction',/\['網路瀏覽限制',/g
s/\['Administration',/\['路由器管理設定',/g
s/\['Admin Access',/\['密碼\/遠端連線',/g
s/\['Bandwidth Monitoring',/\['頻寬監控設定',/g
s/\['Buttons \/ LED',/\['\功\能\按\鈕 \/ LED',/g
s/\['CIFS Client',/\['連接網路芳鄰',/g
s/\['Configuration',/\['出廠預設值',/g
s/\['Debugging',/\['除錯',/g
s/\['JFFS2',/\['JFFS2',/g
s/\['Logging',/\['日誌紀錄檔管理',/g
s/\['Scheduler',/\['定時重開機\/連線',/g
s/\['Scripts',/\['批次檔 Scripts',/g
s/\['Upgrade',/\['韌體更新',/g
s/\['About',/\['關於 Tomato',/g
s/\['Reboot...',/\['重開機...',/g
s/\['Shutdown...',/\['關機...',/g
s/\['Logout',/\['登出',/g
s/width: 10em;/width: 13em;/g
s/width: 130px;/width: 150px;/g
s/var months = \['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'\];/var months = ['1 \\月', '2 \\月', '3 \\月', '4 \\月', '5 \\月', '6 \\月', '7 \\月', '8 \\月', '9 \\月', '10 \\月', '11 \\月', '12 \\月'];/g
s/>Bandwidth monitoring disabled.</>頻寬監控已關閉.</g
s/>Enable \&raquo;</>開啟 \&raquo;</g
s/>The rstats program is not responding or is busy. Try reloading after a few seconds.</>程式繁忙或沒有回應. 請稍候再試.</g
s/("Reboot?")/("是否重新開機?")/g
s/("Shutdown?")/("是否關機?")/g
s/\['Green \&amp; Blue', '#118811', '#6495ed'\], \['Blue \&amp; Orange', '#003EBA', '#FF9000'\],/\['綠色 \&amp; 藍色', '#118811', '#6495ed'\], \['藍色 \&amp; 橘色', '#003EBA', '#FF9000'\],/g
s/\['Blue \&amp; Red', '#003EDD', '#CC4040'\], \['Blue', '#22f', '#225'\], \['Gray', '#000', '#999'\],/\['藍色 \&amp; 紅色', '#003EDD', '#CC4040'\], \['藍色', '#22f', '#225'\], \['灰色', '#000', '#999'\],/g
s/\['Red \&amp; Black', '#d00', '#000'\]\];/\['紅色 \&amp; 黑色', '#d00', '#000'\]\];/g
s/>(scanning...)</>(正在搜尋...)</g