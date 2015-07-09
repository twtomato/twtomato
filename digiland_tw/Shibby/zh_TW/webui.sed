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
#		Tomato Shibby Mod GUI 中文化(zh_TW.UTF-8)
#		版本: 1.28.9001
#		版權: GNU General Public License v2
#		http://code.google.com/p/twtomato/
#		http://digiland.tw/
################################################

#
#	Captive Portal	new-splashd.asp
#
s/>Captive Portal Management</>網頁認證管理</g#
s/>Customized Splash File Path</>自訂認證網頁檔案路徑</g
s/title: 'Captive Portal Management'/title: '網頁認證管理'/g
s/title: 'Enable Function'/title: '啟動'/g
s/title: 'Interface'/title: '網路介面'/g
s/title: 'Log Info Level'/title: '日誌記錄層級'/g
s/title: 'Gateway Name'/title: '路由器名稱'/g
s/title: 'Captive Site Forwarding'/title: '認證網站轉向'/g
s/title: 'Home Page'/title: '轉向網站'/g
s/title: 'Welcome html Path'/title: '歡迎頁面路徑'/g
s/title: 'Logged Timeout'/title: '逾時'/g
s/title: 'Max Missed ARP'/title: '最大錯失 ARP 值'/g
s/title: 'Excluded Ports to be redirected'/title: '不需被重定向的通訊埠'/g
s/title: 'Included Ports to be redirected'/title: '需要被重定向的通訊埠'/g
s/title: 'URL Excluded off Captive Portal'/title: '不需要網頁認證的域名'/g
s/title: 'MAC Address Whitelist'/title: 'MAC 位址白名單'/g
s/title: 'Gateway Port'/title: '路由器通訊埠'/g
s/value='Upload'/value='上傳'/g
s/>\* default</>\* 預設</g
s/<b>Captive Portal. User Guide.<\/b>/<b>網頁認證使用說明.<\/b>/g
s/<b>\*- Enable function:<\/b> When you tick and save the router will show a Welcome Banner when a computer access the Internet.<br>/<b>\*- 啟動:<\/b> 啟用本功能後，任何電腦連上網路時會顯示歡迎網頁.<br>/g
s/<b>\*- Interface:<\/b> Select one of the bridges on which Captive Portal will listen.<br>/<b>\*- 網路介面:<\/b> 選擇使用網路介面，強制進入網頁認證功能.<br>/g
s/<b>\*- Gateway name:<\/b> The name of the Gateway appearing in the welcome banner<br>/<b>\*- 路由器名稱:<\/b> 顯示於歡迎頁面的路由器名稱<br>/g
s/<b>\*- Captive Site Forwarding:<\/b> When active, the 'Home Page' (read next line) will appear after you Agree in Welcome Banner.<br>/<b>\*- 認證網站轉向:<\/b> 啟用本功能, 將於歡迎頁面後跳轉至其他網站(頁).<br>/g
s/<b>\*- Home page:<\/b> The URL that will appear after you Agree the Welcome Banner.<br>/<b>\*- 轉向網站:<\/b> 歡迎頁面後跳轉至指定的網站(頁).<br>/g
s/<b>\*- Welcome html Path:<\/b> The location where the Welcome banner is located<br>/<b>\*- 歡迎頁面路徑:<\/b> 本機歡迎頁面存放路徑.<br>/g
s/<b>\*- Logged Timeout:<\/b> During this period of time no Welcome banner will appear when you access to the device. Default=3600 sec.(1 Hour).<br>/<b>*\- 逾時:<\/b> 登入時間限制，如果登入時效到期將無法再連線上網. 預設值 3600 秒.(1 小時).<br>/g
s/<b>\*- Idle Timeout:<\/b> Expired time where you can't access the device again.Default value=0.<br>/<b>\*- 閒置逾時:<\/b> 閒置逾時時間，超過時間將無法再連線. 預設值 0.<br>/g
s/<b>\*- Max Missed ARP:<\/b> Number of lost ARP before considering the client has leaved the connection. Default = 5<br>/<b>\*- 最大錯失 ARP 值:<\/b> 可連線的最大 ARP 數量. 預設值 5<br>/g
s/<b>\*- Log Info Level:<\/b> Messages from this module stored internally for better trace. Level 0=Silent, 10=Parrot, 2=Default.<br>/<b>\*- 日誌記錄層級:<\/b> 使用的日誌記錄層級.  0=不記錄, 10=完全紀錄, 2=預設值.<br>/g
s/<b>\*- Gateway Port:<\/b> Port to be used by the Captive Portal for page redirection. Port 1 to 65534. Default=5280.<br>/<b>\*- 路由器通訊埠:<\/b> 網頁認證使用的通訊埠. 範圍 1 到 65534. 預設值是 5280.<br>/g
s/<b>\*- Excluded\/Included ports to be redirected:<\/b> When setting any port (included or excluded) leave a blank space between each port number, i.e; 25 110 4662 4672. Use prefereable one of the two option to avoid conflicts.<br>/<b>\*- 被重定向的通訊埠:<\/b> 需要或不需要被被重定向的通訊埠設定，每筆資料之間請保留空白字元隔開, 例如：25 110 4662 4672.<br>/g
s/<b>\*- URL excluded off the portal:<\/b> URL that will be accessed without Welcome banner screen appearing. When you set allowed url's also leave a blank space between each url. i.e; http:\/\/www.google.com http:\/\/www.google.es<br>/<b>\*- 不需要網頁認證的域名:<\/b> 網頁認證的除外網站.每筆 URL 之間請保留空白字元隔開, 例如： http:\/\/www.google.com http:\/\/digiland.tw<br>/g
s/<b>\*- MAC address whitelist:<\/b> MAC addresses excluded of the feature. Leave a blank space between each MAC Address, i.e; 11:22:33:44:55:66 11:22:33:44:55:67<br>/<b>\*- MAC 位址白名單:<\/b> MAC 位址除外名單，每筆 MAC 位址之間請保留空白字元隔開, 例如：11:22:33:44:55:66 11:22:33:44:55:67<br>/g
s/<b>\*- Customized Splash File Path:<\/b> Here you can upload your personal Welcome banner that will overwrite the default one.<br>/<b>\*- 自訂認證網頁檔案路徑:<\/b> 您可以上傳您個人歡迎頁面，上傳後將會覆蓋既有檔案.<br>/g
s/<b> Note: If Login Time is expired you should re-enter again into the splash page to get a new lease period. Be aware, there is no notice about expired period so, you can loss Internet Access.<\/b>/<b> 注意：如果登入時間過期將無法再連線上網，您應該再重新進入初始頁面，以取得新的連線資格.<\/b>/g



#
#	Static DHCP/ARP/IPT
#	basic-static.asp
#
s/>Static DHCP\/ARP\/IPT</>靜態 DHCP\/ARP\/IPT</g
s/\['MAC Address', 'Bound to', 'IP Address', 'IPTraffic', 'Hostname']/\['MAC 位址', '綁定', 'IP 位址', 'IP 流量監控', '主機名稱']/g
s/title: 'Ignore DHCP requests from unknown devices'/title: '忽略來自未定義裝置的DHCP請求'/g
s/>MAC Address<\/b> - Unique identifier associated to a network interface on this particular device.</>MAC 位址<\/b> - 每個網路裝置會有一個專屬於它的識別位址.</g
s/>Bound to<\/b> - Enforce static ARP binding of this particular IP\/MAC address pair.</>綁定<\/b> - 在此IP或MAC位址上指定靜態 ARP 綁定.</g
s/>IP Address<\/b> - Network address assigned to this device on the local network.</>IP 位址<\/b> - 在本地網路上分配給這個設備的網路地址.</g
s/>IPTraffic<\/b> - Keep track of bandwidth usage for this IP address.</>IP 流量監控<\/b> - 監控此 IP 地址的流量.</g
s/>Hostname<\/b> - Human-readable nickname\/label assigned to this device on the network.</>主機名稱<\/b> - 在網路上指定給這個設備的名稱.</g
s/>Other relevant notes\/hints:</>其他相關說明及提示:</g
s/>To specify multiple hostnames for a device, separate them with spaces.</>如要指定多個主機設備，請用空格隔開.</g
s/>To enable\/enforce static ARP binding for a particular device, it must have only one MAC associated with that particular IP address (i.e. you can't have two MAC addresses linked to the same hostname\/device in the table above).</>如要對一個特定設備啟用或執行靜態ARP綁定，它只能一個MAC位址對應一個IP位址(即在上面的表中，您不能有兩個MAC位址對應到同一主機或設備).</g
s/>When ARP binding is enabled for a particular MAC\/IP address pair, that device will always be shown as "active" in the <a href="tools-wol.asp"/>當對一個特定的MAC位址或IP位址對啟用了靜態ARP綁定的後，那個設備將永遠在 <a href="tools-wol.asp"\//g
s/\/a> table.</\/a> 列表中顯示為 "active"</g
s/>See also the <a href='advanced-dhcpdns.asp'>Advanced DHCP\/DNS<\/a> settings page for more DHCP-related configuration options.</>也可以查看<a href='advanced-dhcpdns.asp'> DHCP\/DNS 設定<\/a> 頁裡有更多 DHCP 相關設定選項.</g



#
#	advanced-dhcpdns.asp
#
s/>DHCP \/ DNS Server (LAN):</>DHCP \/ DNS 伺服器 (LAN):</g
s/title: 'DHCPC Options'/title: 'DHCPC 選項'/g
s/title: 'Ignore DHCP requests from unknown devices'/title: '忽略來自未定義裝置的DHCP請求'/g
s/>Use internal DNS<\/b> - Allow dnsmasq to be your DNS server on LAN./>使用內建 DNS(DNSMasq)<\/b> - 允許 dnsmasq 最為內部區網的 DNS 伺服器./g
s/>Use received DNS with user-entered DNS<\/b> - Add DNS servers received from your WAN connection to the static DNS server list (see <a href='basic-network.asp'>Network<\/a> configuration)./>使用自訂 DNS<\/b> - 將自定的外部 DNS 伺服器到靜態 DNS 伺服器列表 (參考 <a href='basic-network.asp'>網路<\/a> 設定)./g
s/>Prevent DNS-rebind attacks<\/b> - Enable DNS rebinding protection on Dnsmasq./>防止 DNS-rebind 攻擊<\/b> - 在 dnsmasq 上啟用 DNS 重新綁定(rebinding)的保護./g
s/>Intercept DNS port<\/b> - Any DNS requests\/packets sent out to UDP port 53 are redirected to the internal DNS server./>偵聽 DNS 埠(UDP 53)<\/b> - 任何 DNS 的請求或封包發送到 UDP 53埠將重定向到內部 DNS 伺服器./g
s/>Use user-entered gateway if WAN is disabled<\/b> - DHCP will use the IP address of the router as the default gateway on each LAN./>若 WAN 停用, 使用自訂閘道<\/b> - DHCP 將使用路由器的自訂閘道的 IP 位址./g
s/>Ignore DHCP requests (...)<\/b> - Dnsmasq will ignore DHCP requests  to Only MAC addresses listed on the <a href='basic-static.asp'>Static DHCP\/ARP<\/a> page won't be able to obtain an IP address through DHCP./>忽略來自未定義裝置的 DHCP 請求<\/b> - 請在 <a href='basic-static.asp'>靜態 DHCP\/ARP<\/a> 設定功能裡建立 MAC 位址清單, 否則 Dnsmasq 將忽略未定義裝置的 DHCP 請求./g
s/>Maximum active DHCP leases<\/b> - Self-explanatory./>DHCP 租戶最大值<\/b> - DHCP 用戶數的上限值./g
s/>Static lease time<\/b> - Absolute maximum amount of time allowed for any DHCP lease to be valid./>固定租約時間<\/b> - DHCP 租約時間可以有效的絕對最大值./g
s/>Custom configuration<\/b> - Extra options to be added to the Dnsmasq configuration file./>自訂設定<\/b> -在 Dnsmasq 設定檔新增額外的設定./g
s/>DHCP Client (WAN):</>DHCP 客戶端 (WAN):</g
s/>DHCPC Options<\/b> - Extra options for the DHCP client./>DHCPC 選項<\/b> - DHCP 客戶端的額外選項./g
s/>Reduce packet size<\/b> - Self-explanatory./>減少封包大小<\/b> - 壓縮封包大小./g
s/>The contents of file \/etc\/dnsmasq.custom are also added to the end of Dnsmasq's configuration file (if it exists)./>當 \/etc\/dnsmasq.custom 檔案存在時，則將其加入 Dnsmasq 的設定檔案末端./g


#
#	advanced-firewall.asp
#
s/>Firewall \/ NAT</>防火牆 \/ NAT</g
s/>Multicast</>多方傳播 (Multicast)</g
s/title: 'Enable IGMPproxy'/title: '啟用 IGMP proxy'/g
s/title: 'Enable Udpxy'/title: '啟用 Udpxy'/g
s/title: 'Enable client statistics'/title: '啟用客戶端統計'/g
s/title: 'Max clients'/title: '最大客戶端數量'/g
s/title: 'Udpxy port'/title: 'Udpxy 通訊埠'/g



#
#	advance-mac.asp
#
s/>MAC Address</>MAC 位址</g
s/title: 'Wireless Interface '/title: '路由器 WLAN MAC 位址:'/g


#
#	advanced-routing.asp
#
s/title: 'Efficient Multicast Forwarding'/title: '有效的多方傳播(Multicast)轉送'/g


#
#	advanced-wireless.asp
#
s/title: 'Afterburner(125HSM)'/title: 'Afterburner技術(125HSM)'/g
s/title: 'Interference Mitigation'/title: '干擾抑制'/g
s/title: 'Wireless Multicast Forwarding'/title: '無線多方傳播(Multicast)轉送'/g
s/>The default settings are indicated with an asterisk <b style='font-size: 1.5em'>\*<\/b> symbol.</>星號<b style='font-size: 1.5em'>\*<\/b>表示預設設定值.</g
s/>(range: 0 - 400, actual max depends on Country selected; use 0 for hardware default)</>(範圍: 0 - 400, 最大值將取決於所選擇的國家；0 為硬體預設值)</g
s/title\\'>Wireless Settings '/title\\'>無線網路設定 '/g



#
#	advanced-tor.asp
#
s/>TOR Settings</>TOR設定</g
s/title: 'Enable TOR'/title: '啟用 TOR'/g
s/title: 'Socks Port'/title: 'Socks 通訊埠'/g
s/title: 'Trans Port'/title: 'Trans 通訊埠'/g
s/title: 'DNS Port'/title: 'DNS 通訊埠'/g
s/title: 'Data Directory'/title: '資料目錄'/g
s/title: 'Redirect all users from'/title: '重定向所有用戶來自'/g
s/'custom','Only selected IP`s'/'custom','僅有以下所列 IP'/g
s/>Enable TOR<\/b> - Be patient. Starting the TOR client can take from several seconds to several minutes./>啟用 TOR<\/b> - 請耐心等候. 啟動 TOR 需時幾秒到幾分鐘的時間./g
s/>Only selected IP`s<\/b> - ex: 1.2.3.4,1.1.0\/24,1.2.3.1-1.2.3.4/>僅有以下所列 IP<\/b> - 例如: 1.2.3.4,1.1.0\/24,1.2.3.1-1.2.3.4/g
s/>•Only connections to destination port 80 are redirected to TOR./>只有到目的地通訊埠 80 的連線重定向到 TOR./g
s/>•Caution! - If your router only has 32MB of RAM, you'll have to use swap./>注意! 如果您的路由器只有32MB記憶體，您必須使用虛擬記憶體(swap)./g


#
#	basic-network.asp
#
s/title: 'Single Line MLPPP'/title: '單線 MLPPP'/g
s/title: 'Route Modem IP'/title: '路由數據機 IP 位址'/g
s/title: 'Bridge WAN port to primary LAN (br0)'/title: '橋接廣域網路到主要區網(br0)'/g
s/title: 'Use dnscrypt-proxy'/title: '使用 dnscrypt-proxy'/g
s/title: 'WINS <i>(for DHCP)<\/i>'/title: 'WINS <i>(使用 DHCP)<\/i>'/g
s/\['Bridge', 'STP', 'IP Address', 'Netmask', 'DHCP', 'IP&nbsp;Range&nbsp;<i>(first\/last)<\/i>', 'Lease&nbsp;Time&nbsp;<i>(mins)<\/i>']/\['橋接', 'STP', 'IP 位址', '子網遮罩', 'DHCP', 'IP 範圍 <i>(起始\/終止)<\/i>', '租期時間<i>(分鐘)<\/i>']/g
s/>(must be in different subnet to router, 0.0.0.0 to disable)</>(必須在不同的子網, 0.0.0.0 為關閉)</g
s/>Ethernet Ports State - Configuration</>乙太網路介面狀態 - 設定</g
s/title: 'Enable Ports State'/title: '顯示網路介面狀態'/g
s/title: 'Show Speed Info'/title: '顯示連線速度'/g
s/title: 'Invert Ports Order'/title: '網路介面反序'/g
s/title: 'Redial Interval'/title: '重撥間隔'/g
s/title: 'LCP Echo Interval'/title: 'LCP 回應間隔'/g
s/title: 'LCP Echo Link fail limit'/title: 'LCP 回應連線失敗限制'/g
s/>(range: 1 - 10; default: 5)</>(範圍: 1 - 10; 預設: 5)</g
s/title: 'Local Port'/title: '本地端口'/g
s/title: 'Startup Parameters'/title: '啟動參數'/g
s/title: 'PPTP Gateway'/title: 'PPTP 閘道器'/g
s/title: 'Modem device'/title: '數據機裝置'/g
s/title: 'PIN Code'/title: '密碼(PIN Code)'/g
s/title: 'Modem init string'/title: '數據機初始字串'/g
s/title: 'Enable DNSSEC'/title: '啟用 DNSSEC'/g
s/(must be supported by the upstream nameservers)/(必須由上層域名伺服器的支援)/g


#
#	admin-sched.asp
#
s/>Custom 4</>自訂 4</g
s/>Custom 5</>自訂 5</g


#	IPv6 forward-basic-ipv6.asp
#
s/>IPv6 Configuration</>IPv6 設定</g
s/title: 'IPv6 Service Type'/title: 'IPv6 服務型態'/g
s/\['', 'Disabled']/\['', '關閉']/g
s/title: 'IPv6 WAN Interface'/title: 'IPv6 WAN 介面'/g
s/title: 'Assigned \/ Routed Prefix'/title: '指定 \/ 路由前置碼'/g
s/title: 'Prefix Length'/title: '前置碼長度(Prefix)'/g
s/title: 'Router IPv6 Address'/title: '路由器 IPv6 位址'/g
s/name: 'f_ipv6_rtr_addr_auto'/name: 'f_ipv6_rtr_addr_auto'/g
s/name: 'f_ipv6_rtr_addr'/name: 'f_ipv6_rtr_addr'/g
s/title: 'Enable Router Advertisements'/title: '啟用路由器通告(Advertisements)'/g
s/title: 'Accept RA from'/title: '接受遠端連線自(RA)'/g
s/title: 'Tunnel Remote Endpoint (IPv4 Address)'/title: '通道遠端端點位址 (IPv4 位址)'/g
s/title: 'Relay Anycast Address'/title: 'Relay Anycast Address'/g
s/title: 'Tunnel Client IPv6 Address'/title: '通道客戶端的 IPv 6位址'/g
s/name: 'ipv6_tun_addr'/name: 'ipv6_tun_addr'/g
s/name: 'ipv6_tun_addrlen'/name: 'ipv6_tun_addrlen'/g
s/title: 'Tunnel MTU'/title: '通道 MTU'/g
s/title: 'Tunnel TTL'/title: '通道 TTL'/g
s/title: 'Other ISP Config.'/title: 'ISP 特殊參數.'/g
s/>IPv6 Port Forwarding</>IPv6 通訊埠轉送設定(Port Forwarding)</g
s/\['On', 'Proto', 'Src Address', 'Dest Address', 'Dest Ports', 'Description']/['啟用', '通訊協定', '來源位址', '目的位址', '目的通訊埠', '註解']/g
s/>Dest Address</>目的位址</g
s/>Dest Ports</>目的通訊埠</g
s/>Other ISP Configuration<\/b> - Check it for some ISP's, Snap (NZ), Internode (AU).</>其他 ISP 特殊參數<\/b> - 確認 ISP 業者額外的參數配置.</g
s/\['other','Other (Manual Configuration)']/\['other','其他 (手動設定)']/g


#
#	advanced-vlan.asp
#
s/>VLAN</>VLAN</g
s/\['VLAN', 'VID', 'Port 1', 'Tagged', 'Port 2', 'Tagged', 'Port 3', 'Tagged', 'Port 4', 'Tagged', 'WAN Port', 'Tagged', 'Default', 'Bridge']/\['VLAN', 'VID', 'Port 1', '標籤', 'Port 2', '標籤', 'Port 3', '標籤', 'Port 4', '標籤', 'WAN Port', '標籤', '預設', '橋接']/g
s/title: ('Bridge ' + wl_ifaces\[uidx]\[0] + ' to'/title: ('橋接 ' + wl_ifaces\[uidx]\[0] + ' 到'/g
s/>VLAN<\/b> - Unique identifier of a VLAN.</>VLAN<\/b> - Unique identifier of a VLAN.</g
s/>Wireless<\/b> - Assignments of wireless interfaces to different LAN briges. You should probably be using and\/or check things on <a href=advanced-wlanvifs.asp>Advanced\/Virtual Wireless<\/a> and <a href=basic-network.asp>Basic\/Network<\/a>.</>Wireless<\/b> - Assignments of wireless interfaces to different LAN briges. You should probably be using and\/or check things on <a href=advanced-wlanvifs.asp>Advanced\/Virtual Wireless<\/a> and <a href=basic-network.asp>Basic\/Network<\/a>.</g

#
#	advance-access.asp
#
s/>LAN Access</>區域網路控制(LAN Access)</g
s/\['On', 'Src', 'Src Address', 'Dst', 'Dst Address', 'Description'])/['啟用', '來源', '來源位址', '目的', '目的位址', '註解'])/g
s/>Src</>來源</g
s/>Src Address</>來源位址</g
s/>Dst</>目的</g
s/>Dst Address</>目的位址</g
s/> - Source LAN bridge.</> - 來源區域網路橋接.</g
s/Source address allowed. Ex:/可被允許的來源位址，例如:/g
s/> - Destination LAN bridge.</> - 目的區域網路橋接.</g
s/> - Destination address inside the LAN.</> - 區域網路內的目的地址.</g
s/'Source and Destination interfaces must be different'/'來源和目的介面必須是不同的'/g



#
#	advanced-wlanvifs.asp
#
s/>Virtual Wireless Interfaces</>虛擬無線網路介面</g
s/>Wireless Interfaces Details/>無線網路介面資訊/g
s/\['Interface', 'Enabled', 'SSID', 'Mode', 'Bridge']/\['介面', '啟用', 'SSID', '模式', '橋接']/g
s/>Notes/>說明/g
s/title: 'Enable Interface'/title: '啟用虛擬無線網路介面'/g
s/title: 'Virtual Interfaces'/title: '虛擬介面'/g
s/\['overview', 'Overview']/\['overview', '概觀']/g
s/'Overview' : 'Save'/'概觀' : '儲存'/g
s/value != 'Save'/value != '儲存'/g
s/Interface<\/b> - Wireless VIF name./介面<\/b> - 虛擬無線網路介面名稱./g
s/Enabled<\/b> - If this VIF should be active and brought online./啟用<\/b> - 將虛擬無線網路介面執行啟用運作./g
s/SSID<\/b> - Wireless Service Set Identifier./SSID<\/b> - 無線網路服務設定識別碼./g
s/Mode<\/b> - Interface mode: Access Point, WDS, Wireless Client, etc.../模式<\/b> - 介面模式: 如 Access Point, WDS, Wireless Client 模式等等.../g
s/Bridge<\/b> - Which LAN bridge this VIF should be assigned./橋接<\/b> - 將虛擬無線網路介面橋接至區網介面./g


#
#	forward-dmz.asp
#
s/title: 'Destination Interface'/title: '目的端介面'/g
s/title: 'Leave Remote Access'/title: '保留遠端存取'/g
s/(Redirect remote access ports for SSH and HTTP(s) to router)/(SSH及HTTP(s)遠端存取重新導向到路由器)/g


#
#	forward-upnp.asp
#
s/title: 'Listen on'/title: '聽取(Listen on)'/g


#
#	nas-usb.asp
#
s/title: 'SD\/MMC Card Support'/title: 'SD\/MMC 卡支援'/g
s/title: 'USB 3.0 Support'/title: 'USB 3.0 支持'/g
s/title: 'NTFS Driver'/title: 'NTFS 驅動模式'/g



#
#	nas-ftp.asp
#
s/\['User Name', 'Password', 'Access', 'Root Directory\*']/\['帳號', '密碼', '存取權限', '根目錄\*']/g
s/When no Root Directory is specified for the user, the default "Public Root Directory" is used./當帳號不指定根目錄時, 將使用預設的"公用根目錄"./g
s/(for authenticated users access, if not specified for the user)/(已認證的用戶都可以連線)/g



#
#	nas-ups.asp nas-samba.asp nas-bittorrent.asp
#
s/title: 'HDD Spindown'/title: '啟用外接式硬碟休眠'/g
s/>Spin down each HDD when idle. No need to use with flashdrive.</>當外接式硬碟閒置時休眠，對於一般隨身碟無需使用此選項.</g
s/title: 'USB 3G Modem support'/title: '支持 USB 3G 網卡'/g
s/>Before disconnecting 3G Modem from USB port, remember to uncheck box. If modem used usbserial module, you have to reboot router before unplug modem.</>從 USB 端口移除 3G 網卡之前，記得先取消勾選框. 如果3G網卡使用usbserial 模組, 則您必須重新啟動路由器.</g
s/>APC UPS Status/>APC 不斷電系統狀態/g
s/>APC UPS Response/>APC 不斷電系統回應/g
s/>Additional Shares List/>共用資料夾/g
s/>When no shares are specified and auto-sharing is disabled, <i>\/mnt<\/i> directory is shared in Read Only mode.</>如果沒有指定共享目錄，<i>\/mnt<\/i> 將會作為預設唯讀共用資料夾.</g


#
#	nas-media.asp
#
s/>(range: 0 - 65535; default (random) set 0)</>(範圍: 0 - 65535; 預設值 (隨機) 設 0)</g



#
#	nas-bittorrent.asp
#
s/title: 'Enable torrent client'/title: '啟用 BT 客戶端'/g
s/title: 'Transmission binary path'/title: 'Transmission 主程式路徑'/g
s/title: 'Keep alive'/title: '保持運作'/g
s/title: 'Check alive every'/title: '檢查活動週期'/g
s/title: 'Delay at startup'/title: '啟動時延遲秒數'/g
s/title: 'Listening port'/title: '監聽通訊埠'/g
s/title: 'Download directory'/title: '下載資料夾'/g
s/title: 'Use .incomplete\/'/title: '使用 .incomplete\/ 資料夾'/g
s/>Remote Access</>遠端連線</g
s/title: 'Enable GUI'/title: '啟用WEB管理界面'/g
s/title: 'Listening GUI port'/title: 'WEB 管理介面通訊埠'/g
s/title: 'Authentication required'/title: '啟用安全認證'/g
s/title: 'Allow remote access'/title: '允許遠端連線'/g
s/title: 'Download limit'/title: '下載限速'/g
s/title: 'Upload limit'/title: '上傳限速'/g
s/title: 'Stop seeding at ratio'/title: '停止做種分享率'/g
s/title: 'Stop seeding if idle for'/title: '閒置多少時間則停止做種'/g
s/title: 'Global peer limit'/title: '全域最大連接數'/g
s/title: 'Peer limit per torrent'/title: '每一種子最大下載連接數'/g
s/title: 'Upload slots per torrent'/title: '每一種子最大上傳連接數'/g
s/>Queue torrents</>BT 佇列設置</g
s/title: 'Downloads queuing'/title: '下載佇列'/g
s/title: 'Seeds queuing'/title: '做種佇列'/g
s/>Advanced Settings</>進階設定</g
s/title: 'Find more peers using'/title: '找到更多的下載節點'/g
s/title: 'Message level'/title: '日誌輸出'/g
s/title: 'Save settings location'/title: '設定檔存檔路徑'/g
s/title: 'Blocklist'/title: '限制名單'/g
s/Enable torrent client<\/b> - Caution! - If your router only has 32MB of RAM, you'll have to use swap./啟用BT客戶端<\/b> - 注意！- 如果路由器只有32MB的記憶體,您必須啟用虛擬記憶體(SWAP)./g
s/Transmission binary path<\/b> Path to the directory containing transmission-daemon etc./Transmission 主程式的路徑<\/b> Transmission 伺服器端執行程式的所在路徑./g 
s/Keep alive<\/b> - If enabled, transmission-daemon will be checked at the specified interval and will re-launch after a crash./保持運作<\/b> - 如果啟用，Transmission 伺服器將於指定的時間內檢查並在掛點當機後自動重新啟動./g
s/Listening port<\/b> - Port used for torrent client. Make sure this port is not in use./監聽通訊埠<\/b> - BT客戶端的通訊埠,請確保此通訊埠未被使用./g
s/Listening GUI port<\/b> - Port used for Transmission GUI. Make sure this port is not in use./WEB管理界面通訊埠<\/b> - WEB端管理介面的通訊埠,請確保此通訊埠未被使用. /g
s/Authentication required<\/b> - Authentication is <b><i>highly recomended<\/i><\/b>. GUI will prompt for user\/pass./啟用身份驗證<\/b> - <b><i>強烈建議<\/i><\/b> 啟用身份驗證功能(需要輸入帳號及密碼)./g
s/Allow remote access<\/b> - This option will open the Transmission GUI port from the WAN side and allow the GUI to be accessed from the internet./允許遠端連線<\/b> - 此選項將允許您從遠端 internet 連線和 WEB 管理界面./g
s/Downloads queuing<\/b> - If enabled, this option will limit how many torrents can be downloaded at once./下載佇列<\/b> - 如果勾選，將限制多少個任務可同時下載./g
s/Seeds queuing<\/b> - If enabled, this option will limit how many torrents can be uploaded\/seeded at once./做種佇列<\/b> - 如果勾選，將限制多少個種子同時可上傳\/做種./g
s/\[Click here to open Transmission GUI]/\[開啟 WEB 管理介面]/g
s/>seconds (range: 1 - 60; default: 10)</>秒 (範圍: 1 - 60; 預設值: 10)</g
s/>minutes (range: 1 - 55; default: 15)</>分鐘 (範圍: 1 - 55; 預設值: 15)</g
s/>minutes (range: 1 - 55; default: 30)</>分鐘 (範圍: 1 - 55; 預設值: 30)</g
s/>(range: 10 - 1000; default: 150)</>(範圍: 10 - 1000; 預設值: 150)</g
s/>(range: 1 - 200; default: 30)</>(範圍: 1 - 200; 預設值: 30)</g
s/>(range: 1 - 50; default: 10)</>(範圍: 1 - 50; 預設值: 10)</g
s/>(range: 1 - 30; default: 5)/>(範圍: 1 - 30; 預設值: 5)/g


#
#	VPN
#
s/Server Configuration/伺服器設定/g
s/Client Configuration</客戶端設定</g
s/\['server1', 'Server 1'],\['server2', 'Server 2']/\['server1', '伺服器1'],\['server2', '伺服器2']/g
s/\['client1', 'Client 1'],\['client2', 'Client 2']/\['client1', '客戶端1'],\['client2', '客戶端2']/g
s/\['basic', 'Basic'],\['advanced', 'Advanced'],\['keys','Keys'],\['status','Status']/\['basic', '基本設定'],\['advanced', '進階設定'],\['keys','金鑰設定'],\['status','狀態']/g
s/\['basic', 'Basic'],\['advanced', 'Advanced'],\['keys','Keys'],\['policy','Routing Policy'],\['status','Status']/\['basic', '基本設定'],\['advanced', '進階設定'],\['keys','金鑰設定'],\['policy','路由規則'],\['status','狀態']/g
s/title: 'Start with WAN'/title: '同 WAN 一起啟動'/g
s/title: 'Interface Type'/title: '介面類型'/g
s/title: 'Protocol'/title: '協定'/g
s/title: 'Port'/title: '通訊埠'/g
s/title: 'Firewall'/title: '防火牆'/g
s/title: 'Authorization Mode'/title: '授權模式'/g
s/title: 'Extra HMAC authorization (tls-auth)'/title: '附加HMAC授權(tls-auth)'/g
s/title: 'VPN subnet\/netmask'/title: 'VPN 子網\/遮罩'/g
s/title: 'Client address pool'/title: 'Client address pool'/g
s/title: 'Local\/remote endpoint addresses'/title: '本地\/遠端端點位址'/g
s/title: 'Poll Interval'/title: '輪詢間隔'/g
s/title: 'Push LAN to clients'/title: '推送 LAN 至客戶端'/g
s/title: 'Direct clients to<br>redirect Internet traffic'/title: '指引VPN客戶端<br>重定向 Internet 流量'/g
s/title: 'Respond to DNS'/title: '回應 DNS'/g
s/title: 'Advertise DNS to clients'/title: '通報 DNS 至客戶端'/g
s/title: 'Encryption cipher'/title: '加密模式'/g
s/title: 'Compression'/title: '壓縮'/g
s/title: 'TLS Renegotiation Time'/title: 'TLS 重新協商時間'/g
s/title: 'Manage Client-Specific Options'/title: '管理客戶端特定的選項'/g
s/title: 'Allow Client<->Client'/title: '允許客戶端互連'/g
s/title: 'Allow Only These Clients'/title: '只允許這些客戶端'/g
s/title: 'Custom Configuration'/title: '自定設定'/g
s/title: 'Static Key'/title: '靜態金鑰'/g
s/title: 'Certificate Authority'/title: '認證中心'/g
s/title: 'Server Certificate'/title: '伺服器憑證'/g
s/title: 'Server Key'/title: '伺服器金鑰'/g
s/title: 'Diffie Hellman parameters'/title: 'Diffie Hellman 參數'/g
s/title: 'Server Address\/Port'/title: '伺服器位址\/通訊埠'/g
s/title: 'Server is on the same subnet'/title: '伺服器在同一子網段'/g
s/title: 'Create NAT on tunnel'/title: '建立通道 NAT'/g
s/title: 'Tunnel address\/netmask'/title: '通道位址\/遮罩'/g
s/title: 'Redirect Internet traffic'/title: '重定向 Internet 流量'/g
s/title: 'Accept DNS configuration'/title: '接受DNS設定'/g
s/title: 'Connection retry'/title: '連線重試'/g
s/title: 'Client Certificate'/title: '客戶端憑證'/g
s/title: 'Client Key'/title: '客戶端金鑰'/g
s/'Local IP Address\/Netmask/'本地IP地址\/遮罩/g
s/'Remote IP Address Range/'遠端 IP 地址範圍/g
s/'Broadcast Relay Mode/'廣播中繼模式/g
s/>PPTP User List/>PPTP 帳號清單/g
s/>PPTP Users Online/>PPTP 線上連線用戶/g
s/\['Username', 'Password']/\['帳號', '密碼']/g
s/\['Interface', 'Username', 'Online Since', 'VPN IP Address', 'Source IP Address', 'Action']/\['介面', '帳號', '連線時間', 'VPN IP位址', '來源IP位址', '活動']/g
s/? 'Stop' : 'Start') + ' Now"/? '立即停止' : '立即啟用') + '"/g
s/>For help generating keys, refer to the OpenVPN </>對於如何產生金鑰的方式，請參考 OpenVPN 的 </g
s/>Server is not running or status could not be read.</>伺服器尚未啟用或狀態無法讀取.</g
s/>Client is not running or status could not be read.</>客戶端尚未啟用或狀態無法讀取.</g
s/>Refresh Status</>更新狀態</g
s/title: 'Server Address'/title: '伺服器位址'/g
s/title: 'Username: '/title: '帳號: '/g
s/title: 'Password: '/title: '密碼: '/g
s/title: 'Remote subnet \/ netmask'/title: '遠端子網路 \/ 遮罩'/g
s/title: 'Stateless MPPE connection'/title: 'Stateless MPPE 連線'/g
s/title: 'Client address pool'/title: '客戶端位址區段'/g
s/title: 'Username\/Password Authentication'/title: '帳號\/密碼認證'/g
s/title: 'Username Authen. Only',/title: '僅用帳號認證',/g
s/>Warning: Must define Certificate Authority.</>注意：必須定義認證中心.</g
s/title: 'Verify server certificate (tls-remote)'/title: '確認伺服器憑證 (tls-remote)'/g
s/title: 'DNS Servers'/title: 'DNS 伺服器'/g
s/title: 'WINS Servers'/title: 'WINS 伺服器'/g
s/> Common Name:/> 通用名稱(Common Name):/g
s/title: 'Allow User\/Pass Auth'/title: '允許自訂帳號密碼授權'/g
s/title: 'Allow Only User\/Pass(Without cert) Auth'/title: '允許自訂帳號密碼授權(無須憑證)'/g
s/title: 'Redirect through VPN'/title: '重定向穿透 VPN'/g
s/'From Source IP', 'To Destination IP', 'To Domain'/'自來源 IP', '至目的 IP', '至網域'/g
s/\[1, 'From Source IP'],\[2, 'To Destination IP'],\[3,'To Domain']/\[1, '自來源 IP'],\[2, '至目的 IP'],\[3,'至網域']/g
s/>Type -> From Source IP<\/b> - Ex: "1.2.3.4" or "1.2.3.0\/24"./>型態 -> 自來源 IP<\/b> - 例: "1.2.3.4" or "1.2.3.0\/24"./g
s/>Type -> To Destination IP<\/b> - Ex: "1.2.3.4" or "1.2.3.0\/24"./>型態 -> 至目的 IP<\/b> - 例: "1.2.3.4" or "1.2.3.0\/24"./g
s/>Type -> To Domain<\/b> - Ex: "domain.com". Please enter one domain per line'/>型態 -> 至網域<\/b> - 例: "domain.com". 一行輸入一個網域名稱'/g
s/'Enable', 'Type', 'Value'/'啟用', '型態', '數值'/g

#
#	vpn-server.asp
#
s/>Data current as of </>即時數據 </g
s/>Client List</>連線清單</g
s/>Routing Table</>路由表</g
s/>General Statistics</>綜合統計</g
s/>(in minutes, 0 to disable)</>(分鐘, 0 為關閉)</g
s/>(in seconds, -1 for default)</>(秒, -1 設定預設值)</g



#
#	vpn-client.asp
#
s/>(in seconds; -1 for infinite)</>(秒; -1 設定無限)</g



#
#	vpn-tinc.asp
#
s/>Tinc Configuration</>Tinc 服務設定</g
s/title: 'Start With WAN '/title: '同 WAN 一起啟動'/g
s/title: 'VPN Netmask'/title: 'VPN 網路遮罩'/g
s/title: 'Host Name',/title: '主機名稱',/g
s/title: 'Firewall Rules'/title: '防火牆規則'/g
s/title: 'Ed25519 Private Key/title: 'Ed25519 私鑰/g
s/title: 'Ed25519 Public Key/title: 'Ed25519 公鑰/g
s/title: 'RSA Private Key/title: 'RSA 私鑰/g
s/title: 'RSA Public Key/title: 'RSA 公鑰/g
s/title: 'tinc-up creation'/title: 'tinc 啟動方式'/g
s/title: 'tinc-up'/title: 'tinc 啟動'/g
s/title: 'tinc-down'/title: 'tinc 關閉'/g
s/title: 'host-up'/title: '主機啟動'/g
s/title: 'host-down'/title: '主機關閉'/g
s/title: 'subnet-up'/title: '子網路建立'/g
s/title: 'subnet-down'/title: '子網路關閉'/g
s/W('Tinc is currently '+(!tincup ? 'stopped.' : 'running.')/W('Tinc 服務已經 '+(!tincup ? '停止.' : '啟動.')/g
s/\['config', 'Config'],\['hosts', 'Hosts'],\['scripts', 'Scripts'],\['keys', 'Generate Keys'],\['status', 'Status']/\['config', '設定'],\['hosts', '主機'],\['scripts', '程序'],\['keys', '產生金鑰'],\['status', '狀態']/g
s/value=\\'Generate Keys\\'/value=\\'產生金鑰\\'/g
s/>The netmask for the entire VPN network.</>VPN 子網路遮罩.</g
s/>Must also be defined in the \\'Hosts\\' area.</>必須定義在\\'主機\\'區.</g
s/title: 'Custom'/title: '自行定義'/g
s/> Only required to create legacy connections with tinc1.0 nodes.</> 只用來建立舊式 tinc 1.0 節點的連線.</g
s/'ConnectTo', 'Name', 'Address', 'Port', 'Compression', 'Subnet'/'連線至', '主機', 'IP位址', '通訊埠', '壓縮', '子網路'/g
s/>ConnectTo<\/b> - Tinc will try to establish a meta-connection to the host. Requires the Address field');/>連線至<\/b> - Tinc 將嘗試建立一個中繼連線到主機');/g
s/>Name<\/b> - Name of the host. There must be an entry for this host.');/>主機<\/b> - 必須有此主機的名稱.');/g
s/>Address<\/b> <i>(可空白)<\/i> - Must resolve to the external IP address where the host can be reached.');/>IP位址<\/b> <i>(可空白)<\/i> - 必須可解析的外部主機IP位址.');/g
s/>Port<\/b> <i>(可空白)<\/i> - The port the host listens on. If empty the default value (655) is used.');/>通訊埠<\/b> <i>(可空白)<\/i> - 主機使用的通訊端口. 如果空白預設值是(655).');/g
s/>Compression<\/b> - The level of compression used for UDP packets. Possible values are ');/>壓縮<\/b> - UDP 封包壓縮等級. 可用的數值為 ');/g
s/W('0 (off), 1 (fast zlib) and any integer up to 9 (best zlib), 10 (fast lzo) and 11 (best lzo).');/W('0 (關閉), 1 (fast zlib) 及最高到 9 (best zlib), 10 (fast lzo) 及 11 (best lzo).');/g
s/>Subnet<\/b> - The subnet which the host will serve.');/>子網路<\/b> - 該主機使用的子網路.');/g
s/value=\\'Edges\\'/value=\\'邊緣\\'/g
s/value=\\'Subnets\\'/value=\\'子網路\\'/g
s/value=\\'Connections\\'/value=\\'連線\\'/g
s/value=\\'Nodes\\'/value=\\'節點\\'/g
s/value=\\'Info\\'/value=\\'資訊\\'/g




#
#	admin-debug.asp
#
s/>Download Ip6tables Dump</>下載 Ip6tables 傾印檔</g




#
#	admin-access.asp
#
s/\['Status', 'status'], \['Bandwidth', 'bwm'], \['IP Traffic', 'ipt'], \['Tools', 'tools'], \['Basic', 'basic']/\['系統狀態', 'status'], \['頻寬監控', 'bwm'], \['IP 流量監控', 'ipt'], \['診斷工具', 'tools'], \['基本設定', 'basic']/g
s/\['Advanced', 'advanced'], \['Port Forwarding', 'forward'], \['QoS', 'qos']/\['進階設定', 'advanced'], \['通訊埠轉送', 'forward'], \['Qo S管理', 'qos']/g
s/\['USB and NAS', 'nas']/\['USB 與 NAS', 'nas']/g
s/\['VPN Tunneling', 'vpn']/\['VPN 通道', 'vpn']/g
s/\['Administration', 'admin']/\['路由器管理', 'admin']/g
s/>IP Traffic Monitoring/>IP 流量監控/g
s/title: 'Extended MOTD'/title: '延伸 MOTD'/g
s/title: 'Directory with GUI files'/title: '網頁路徑'/g
s/>Username \/ Password</>使用者名稱 \/ 密碼</g
s/title: 'Allow web login as "root"'/title: '允許使用"root"名稱登入'/g
s/>NFS Server/>NFS 伺服器/g


#
#	admin-jffs.asp
#
s/' (not mounted)'/' (無掛載)'/g

#
#	admin-log.asp
#
s/>(make sure the directory exists and is writable)</>(請確認路徑是否存在及寫入權限)</g
s/>(0 to disable)</>(0 為關閉)</g
s/title: 'Daily Backup'/title: '每日備份'/g
s/>(every day at midnight)</>(每日零點)</g
s/title: 'Clear Data After Backup'/title: '備份後清除資料'/g
s/title: 'Backup Directory'/title: '備份路徑'/g


#
#	forward-basic-ipv6.asp
#
s/Opens access to ports on machines inside the LAN, but does <b>not<\/b> re-map ports./開放對區域網內機器的通訊埠連線，但是<b>不<\/b>重映射通訊埠./g
s/- The ports to be opened for forwarding. Ex:/- 轉送需要打開的通訊埠，例如:/g


#
#	IP Traffic ipt-detials.asp
#
s/>IP Traffic Details</>IP 流量監控資訊</g
s/>IP Traffic Daily History</>每日 IP 流量統計</g
s/>IP Traffic Monthly History</>每月 IP 流量統計</g
s/> minute window, </> 分鐘視窗, </g
s/> second interval)</> 秒鐘取樣)</g
s/>Options/>選項/g
s/\['Host', 'Download (bytes\/s)', 'Upload (bytes\/s)', 'TCP IN\/OUT (pkt\/s)', 'UDP IN\/OUT (pkt\/s)', 'ICMP IN\/OUT (pkt\/s)', 'TCP Connections', 'UDP Connections']/\['主機', '下載 (bytes\/s)', '上傳 (bytes\/s)', 'TCP IN\/OUT (pkt\/s)', 'UDP IN\/OUT (pkt\/s)', 'ICMP IN\/OUT (pkt\/s)', 'TCP 連線數', 'UDP 連線數']/g
s/title: 'Only these IPs'/title: '只篩選這些 IP'/g
s/title: 'List only these IPs'/title: '只篩選這些 IP'/g
s/title: 'Exclude these IPs'/title: '排除這些 IP'/g
s/title: 'Scale'/title: '單位'/g
s/title: 'Ignore inactive hosts'/title: '忽略不活動的 IP'/g
s/title: 'Show hostnames'/title: '顯示主機名稱'/g
s/title: 'Show shortcuts'/title: '顯示快捷方式'/g
s/title: 'Date Range'/title: '日期區間'/g
s/title: 'Date Format'/title: '日期格式'/g
s/title: 'Show known hostnames'/title: '顯示已知的主機名稱'/g
s/title: 'Show subnet totals'/title: '顯示子網段總和'/g
s/title: 'Hide IPs without traffic'/title: '隱藏無流量 IP'/g
s/(Comma separated list)</(逗點隔開)</g
s/\['Date', 'Host', 'Download', 'Upload', 'Total']/\['日期', '主機', '下載', '上傳', '合計']/g
s/title: 'IPs currently on graphic'/title: '目前顯示的 IP'/g
s/(Click\/select a device from this list to hide it)/(選取要隱藏的 IP)/g
s/title: 'Hidden addresses'/title: '目前隱藏的 IP'/g
s/(Click\/select to show it again)/(選取要顯示的 IP)/g
s/(Click here to show)/(顯示細節)/g
s/(Click here to hide)/(隱藏細節)/g
s/(Not considered when calculating total traffic on the last line)/(不考慮最後一行的總流量)/g



#
#	admin-iptraffic.asp
#
s/title: 'Excluded IPs'/title: '排除的 IP'/g
s/title: 'Included IPs'/title: '包含的 IP'/g
s/title: 'Enable Auto-Discovery'/title: '啟用自動偵測 IP'/g
s/(automatically include new IPs in monitoring as soon as any traffic is detected)/(自動偵測新加入的 IP,如果有流量的立即開始監控)/g
s/title: 'Labels on graphics'/title: '加註圖形標籤'/g



s/title: 'Total \/ Free NVRAM:'/title: 'NVRAM 總計\/可用:'/g
s/title: 'Total \/ Free NVRAM'/title: 'NVRAM 總計\/可用'/g
s/>SNMP Settings</>SNMP 設定</g
s/title: 'Enable SNMP'/title: '啟用 SNMP'/g
s/title: 'Remote access'/title: '遠端存取(Remote access)'/g
s/title: 'Location'/title: '實體位置(Location)'/g
s/title: 'Contact'/title: '聯絡人(Contact)'/g
s/title: 'RO Community'/title: '唯讀社群(RO Community)'/g
s/title: 'Max size before rotate'/title: '最大覆寫空間'/g
s/title: 'Number of rotated logs to keep'/title: '保存覆寫日誌數量'/g
s/title: 'Custom Log File Path'/title: '自訂日誌存放路徑'/g


#
#	advance-firewall.asp bwlimit.asp
#
s/>Bandwidth Limiter for LAN (br0)</>頻寬限制 LAN (br0)</g
s/title: 'Enable Limiter'/title: '啟用限速'/g
s/\['IP | IP Range | MAC Address', 'DLRate', 'DLCeil', 'ULRate', 'ULCeil', 'Priority', 'TCP Limit', 'UDP Limit']/\['IP位址 | IP區間 | MAC位址', '下載保證頻寬', '下載最大頻寬', '上傳保證頻寬', '上傳最大頻寬', '優先', 'TCP限制', 'UDP限制']/g
s/title: 'Max Available Download <br><small>(same as used in QoS)<\/small>'/title: '最大可下載頻寬 <br><small>(與QoS使用的相同)<\/small>'/g
s/title: 'Max Available Upload <br><small>(same as used in QoS)<\/small>'/title: '最大可上傳頻寬 <br><small>(與QoS使用的相同)<\/small>'/g
s/title: 'Download rate'/title: '下載保證頻寬'/g
s/title: 'Download ceil'/title: '下載最大頻寬'/g
s/title: 'Upload rate'/title: '上傳保證頻寬'/g
s/title: 'Upload ceil'/title: '上傳最大頻寬'/g
s/title: 'TCP Limit'/title: 'TCP限制'/g
s/title: 'UDP limit'/title: 'UDP限制'/g
s/title: 'Priority'/title: '優先'/g
s/\['0', 'no limit']/\['0', '不限制']/g
s/\['0','nolimit']/\['0','不限制']/g
s/\['0','Highest'],\['1','High'],\['2','Normal'],\['3','Low'],\['4','Lowest']/\['0','最高'],\['1','高'],\['2','正常'],\['3','低'],\['4','最低']/g
s/>Default Class for unlisted MAC \/ IP's in/>未列出的 MAC\/IP 地址的預設分類:/g
s/>Default Class</>預設分類</g
s/>Default Class for/>預設分類:/g
s/>The bandwitdh will be shared by all hosts in/>所有主機將共享頻寬:/g
s/IP \/ MAC's non included in the list will take the Default Rate\/Ceiling setting/未包含在列表中的IP\/MAC地址將使用預設的頻寬設定/g
s/>The bandwitdh will be shared by all unlisted hosts in/>所有未列出的主機將共享頻寬:/g
s/>IP Address \/ IP Range:</>IP位址 \/ IP區間:</g
s/Example: 192.168.1.5 for one IP./例如: 192.168.1.5 是單一IP./g
s/Example: 192.168.1.4-7 for IP 192.168.1.4 to 192.168.1.7/例如: 192.168.1.4-7 代表IP區間 192.168.1.4 到 192.168.1.7/g
s/Example: 4-7 for IP Range .4 to .7/例如: 4-7 代表IP區間 .4 到 .7/g
s/>The IP Range devices will share the Bandwidth</>IP區間內的裝置共享頻寬</g
s/Example: 00:2E:3C:6A:22:D8/例如: 00:2E:3C:6A:22:D8/g
s/title: 'Limits per second'/title: '限制每秒鐘回應數量'/g
s/> request per second</> 每秒鐘回應數量</g

#
#	status-overview.asp
#
s/>System </>系統(System) </g
s/>WAN </>廣域網路(WAN) </g
s/>LAN </>區域網路(LAN) </g
s/title\\'>Wireless'/title\\'>無線網路'/g
s/value=\\'Enable\\'/value=\\'啟用\\'/g
s/value=\\'Disable\\'/value=\\'關閉\\'/g
s/(hide)/(隱藏)/g
s/(show)/(顯示)/g
s/title: 'IPv6 Address'/title: 'IPv6 位址'/g
s/title: 'IPv6 Link-local Address'/title: 'IPv6 Link-local 位址'/g
s/title: 'Interface Status'/title: '介面狀態'/g
s/title: 'Flash Size'/title: 'Flash 容量'/g
s/title: 'Router IP Addresses'/title: '路由器 IP 位址'/g
s/>!! Attention !!</>!! 注意 !!</g
s/>You did not configure <b>TomatoAnon project<\/b> setting./>您尚未完成 <b>TomatoAnon 計劃<\/b> 設定./g
s/>Please go to </>請到 </g
s/>TomatoAnon configuration page<\/a> and make a choice.</>TomatoAnon 設定頁<\/a> 進行設定.</g
s/>Ethernet Ports State</>乙太網路介面狀態</g
s/"Unplugged"/"未接"/g
s/title: 'CPU Usage'/title: 'CPU 使用率'/g
s/title: 'CPU Temperature'/title: 'CPU 溫度'/g
s/title: 'Wireless Temperature'/title: '無線模組溫度'/g



#
#	status-device.asp
#
s/>Noise Floor (/>背景雜訊 (/g


#
#	status-webmon.asp
#
s/>Web Monitoring disabled.</>上網監控功能已停用.</g
s/>Clear</>清除</g



#
#	QoS
#
s/>Outbound Rates \/ Limits</>上傳速率 \/ 限制</g
s/>Inbound Class Limits</>下載等級限制</g
s/>Inbound Rates \/ Limits</>下載速率 \/ 限制</g
s/>QOS Class Names </>QOS 優先等級 </g
s/title: 'Max Bandwidth Limit'/title: '最大頻寬限制'/g
s/title: 'Max Available Bandwidth <small>(this is NOT an overall limit!)<\/small>'/title: '最大可用頻寬 <small>(這不是整體的限制!)<\/small>'/g
s/\['-','Priority Class 1', 'Priority Class 2', 'Priority Class 3', 'Priority Class 4', 'Priority Class 5', 'Priority Class 6', 'Priority Class 7', 'Priority Class 8', 'Priority Class 9', 'Priority Class 10']/\['-','優先等級 1', '優先等級 2', '優先等級 3', '優先等級 4', '優先等級 5', '優先等級 6', '優先等級 7', '優先等級 8', '優先等級 9', '優先等級 10']/g
s/>(Maximum 10 characters, no spaces)</>(最多10個字元,不允許中文及空白)</g
s/\['Match Rule', 'Class', 'Description', '#']/\['符合規則', '類別', '註解', '#']/g
s/\['Proto', 'Source', 'S Port', 'Destination', 'D Port', 'Class', 'Rule', 'Bytes Out', 'Bytes In']/\['協定', '來源', '來源埠', '目的', '目的埠', '等級', '規則', '上傳 Bytes', '下載 Bytes']/g
s/\['Proto', 'Source', 'S Port', 'Destination', 'D Port', 'UL Rate', 'DL Rate']/\['協定', '來源', '來源埠', '目的', '目的埠', '上傳速率', '下載速率']/g
s/>View Details:/>詳細資訊:/g
s/>Filters: </>過濾條件: </g
s/(Toggle Visibility)/(顯示細節)/g
s/title: 'Show only these IPs'/title: '只篩選這些IP'/g
s/title: 'Exclude gateway traffic'/title: '不包含閘道器流量'/g
s/title: 'Exclude IPv4 broadcast'/title: '不包含IPv4廣播(broadcast)'/g
s/title: 'Exclude IPv4 multicast'/title: '不包含IPv4多點傳播(multicast)'/g
s/title: 'Auto resolve addresses'/title: '自動解析位址'/g
s/title: 'Ignore inactive connections'/title: '忽略不活動的連線'/g
s/>Transfer Rates:/>傳輸速率:/g
s/>Settings for DSL only</>僅用於DSL的設置</g
s/title: 'DSL Overhead Value - ATM Encapsulation Type'/title: 'DSL Overhead 數值 - ATM封裝類型'/g
s/>(Network Congestion Control)</>(網路擁塞控制)</g

#
#	NFS
#
s/title: 'Enable NFS Server'/title: '啟用 NFS 伺服器'/g
s/\['Directory', 'IP Address\/Subnet', 'Access', 'Sync', 'Subtree Check', 'Other Options']/\['目錄', 'IP 位址\/子網路', '存取權限', '同步', 'Subtree 檢查', '其他選項']/g
s/>Exports</>Exports 設定</g
s/>NFS Client</>NFS 客戶端</g
s/More information about NFS configuration you can find on /關於 NFS 設定相關資訊,您可以參考 /g
s/>You can find more information on proper NFS configuration at the following website: </>關於 NFS 設定相關資訊,您可以參考: </g
s/If you want mount a NFS share from other NFS Server, you can use mount.nfs tool via telnet\/ssh./如果您想掛載其他 NFS 伺服器上的資源,您可以透過 telnet\/ssh 使用 mount.nfs 工具/g
s/>If you want to mount an NFS share from other NFS Server, you can use the mount.nfs tool via telnet\/ssh./>如果您想掛載其他 NFS 伺服器上的資源,您可以透過 telnet\/ssh 使用 mount.nfs 工具./g




#
#	admin-tomatoanon.asp
#
s/>About TomatoAnon Project</>關於 TomatoAnon 計劃</g
s/>TomatoAnon Settings </>TomatoAnon 設定 </g
s/title: 'Do you know what TomatoAnon doing ?'/title: '您知道 TomatoAnon 是蝦米碗糕了嗎?'/g
s/'0','No, i don`t. Have to read all information, before i will make a choice'/'0','不, 我不知道. 等了解所有來龍去脈之後再做決定'/g
s/'1','Yes, i do and want to make a choice'/'1','是的, 我知道而且我將自行決定'/g
s/title: 'Do you want enable TomatoAnon ?'/title: '您要開啟 TomatoAnon 功能嗎?'/g
s/\['-1','I`m not sure right now'], \['1','Yes, i`m sure i do'], \['0','No, i definitely wont enable it']/\['-1','我現在還不想決定'], \['1','是的, 我心甘情願要開啟這個功能'], \['0','不, 我打死也不想開啟這個功能']/g
s/title: 'Send every'/title: '更新狀態, 間隔時間'/g
s/' <small>hours (range: 1 - 12; default: 6)<\/small>'/' <small>小時 (間隔: 1 - 12; 預設: 6)<\/small>'/g
s/>\[Checkout my router]</>\[查看我的路由器]</g
s/<b>Hello,<\/b><br>/<b>大家好,<\/b><br>/g
s/I would like to present you with a new project I've been working on, called TomatoAnon.<br>/我想向大家介紹一個我一直在推動的新計劃 - TomatoAnon.<br>/g
s/The TomatoAnon script will send (to a database) information about your router's model and installed version of Tomato.<br>/TomatoAnon 會蒐集您使用的路由器的型號、Tomato 安裝版本等資訊上傳至網路資料庫.<br>/g
s/The information submitted is 100% anonymous and will ONLY be used for statistical purposes.<br>/這些資訊完全是匿名蒐集，而且僅是做為統計用途.<br>/g
s/<b>This script does NOT send any private or personal information whatsoever (like MAC`s, IP`s etc)!<\/b><br>/<b>這個蒐集程式並不會傳送任何私人的資訊(例如 MAC、IP 等資訊)!<\/b><br>/g
s/Script is fully open, and written in bash. Anyone is free to look at the content that is submitted to the database.<br>/蒐集程式是以 bash 所寫的公開程式碼,任何人都可以檢視哪些資訊會被傳送至資料庫.<br>/g
s/The submitted results can be viewed on the/您可以到 /g
s/<\/a> page.<br>/<\/a> 網站查看結果.<br>/g
s/This information may help you when choosing the best and most popular router available in your country.<br>/這些資訊可以幫助您在您所在的國家裡，哪些路由器是最好、最受歡迎的選擇.<br>/g
s/You can check which version of Tomato is most commonly used and which one is the most stable.<br>/您也可以藉此了解哪一個 Tomato 版本最常被使用，哪一個版本最為穩定.<br>/g
s/If you don't agree with this script, or do not wish to use it, you can simply disable it.<br>/如果您不同意或不希望執行這個程式，您可以把這個功能關閉.<br>/g
s/You can always re-enable it at any time.<br>/您也可以隨時再啟用這個功能.<br>/g
s/Sended information:<br>/蒐集的資訊如下：<br>/g
s/The following data is sent by TomatoAnon:<br>/TomatoAnon 蒐集的資訊如下：:<br>/g
s/- MD5SUM of WAN+LAN MAC addresses - this will identify a router. Ex: 1c1dbd4202d794251ec1acf1211bb2c8<br>/- WAN+LAN MAC 位址的 MD5SUM 運算碼- 這是做為路由器的識別碼. 例如: 1c1dbd4202d794251ec1acf1211bb2c8<br>/g
s/- Model of router. Ex: Asus RT-N66U<br>/- 路由器型號. 例如: Asus RT-N66U<br>/g
s/- Installed version of Tomato. Ex: 102 K26 USB<br>/- Tomato 安裝版本. 例如: 102 K26 USB<br>/g
s/- Builtype. Ex: Mega-VPN-64K<br>/- Builtype. 例如: Mega-VPN-64K<br>/g
s/- Country. Ex: POLAND<br>/- 國家. 例如: POLAND<br>/g
s/- ISO Country code. Ex: PL<br>/- ISO 國家代碼. 例如: PL<br>/g
s/- Uptime of your router. Ex: 3 days<br>/- 您的路由器已運行時間. 例如: 3 days<br>/g
s/That`s it !!<br>/以上!!<br>/g
s/Thank You for read that and please make a right choice.<br>/謝謝您的閱讀，請作出正確的選擇.<br>/g
s/Thank you for reading and please make the right choice to help this project.<br>/謝謝您的閱讀，請作出正確的選擇以協助這個計劃的推動.<br>/g
s/<b>Best Regards!<\/b>/<b>此致最高敬意!<\/b>/g
s/>Tomato Update Notification System</>Tomato 版本更新通知</g
s/>When new tomato version will be available, you will be notified about this on status-overview page./>當有新版本推出時, 您會在系統狀態版面收到更新通知./g


#
#	web-nginx.asp
#
s/section-title'>Status</section-title'>狀態</g
s/W('NGINX is currently '+(!nginxup ? 'stopped' : 'running')+' ');/W('NGINX 服務已經 '+(!nginxup ? '關閉' : '啟動')+' ');/g
s/title: 'Enable Server on Start'/title: '開機時啟用服務'/g
s/title: 'Enable PHP support'/title: '啟用 PHP 支援'/g
s/title: 'Run As'/title: '執行權限'/g
s/title: 'Keep Config Files'/title: '保留設定檔案'/g
s/title: 'Web Server Port'/title: 'Web 伺服器通訊埠'/g
s/title: 'Upload file size limit'/title: '上傳檔案大小限制'/g
s/title: 'Allow Remote Access'/title: '允許遠端存取'/g
s/title: 'Web Server Name'/title: 'Web 伺服器名稱'/g
s/title: 'Server Root Path'/title: '伺服器根路徑'/g
s/title: 'Server Priority'/title: '伺服器優先權重'/g
s/title: 'Use user config file'/title: '使用自訂設定檔'/g
s/> User config file will be used, some of GUI settings will be ignored</> 使用自訂設定檔, 部份網頁設定將被忽略</g
s/title: 'User config file path'/title: '自訂設定檔路徑'/g
s/> default: 85</> 預設: 85</g
s/> Max. Perfor: -20, Min.Perfor: 19, default: 10</> 範圍: -20 到 19; 預設: 10</g
s/<b> Status Button:<\/b> Quick Start-Stop Service. Enable Web Server must be checked to modify settings.<br>/<b> 狀態按鈕:<\/b> 快速啟動或停止服務. 啟用 Web 伺服器必須進行確認各項設定.<br>/g
s/<b> Enable Server on Start:<\/b> To activate the Web Server tick and save this screen.<br>/<b> 於開機時啟用服務:<\/b> 於開機時自動啟動 Web 伺服器.<br>/g
s/<b> Enable PHP support:<\/b> To activate the PHP support (php-cgi) tick and save this screen.<br>/<b> 啟用 PHP 支援:<\/b> 對 PHP(php-cgi) 的支援.<br>/g
s/<b> Run As:<\/b> Select user used to start nginx and php-cgi daemon.<br>/<b> 執行權限:<\/b> 選擇執行 nginx 及 php-cgi 服務權限.<br>/g
s/<b> Keep Config Files:<\/b> Have you modified the configuration file manually? Tick this box and changes will be maintained.<br> /<b> 保留設定檔案:<\/b> 保留自訂設定檔案, 若有自訂設定參數務必勾選這個選項.<br>/g
s/<b> Web Server Port:<\/b> The Port used by the Web Server to be accessed. Check conflict when the port is used by other services.<br>/<b> Web 伺服器通訊埠:<\/b> 指定 Web 伺服器使用通訊埠.<br>/g
s/<b> Allow remote access:<\/b> This option will open the Web Server GUI port from the WAN side. Service will be accessed from the internet. <br>/<b> 允許遠端存取:<\/b> 允許遠端(Wan port)存取 Web 伺服器. <br>/g
s/<b> Web Server Name:<\/b> Name that will appear on top of your Internet Browser.<br>/<b> Web 伺服器名稱:<\/b> Web 伺服器名稱, 此名稱會顯示於瀏覽器.<br>/g
s/<b> Document Root Path:<\/b> The path in your router where documents are stored.<br>/<b> 伺服器根路徑:<\/b> Web 網頁文件指定路徑.<br>/g
s/<b> Examples:<br><\/b>/<b> 範例:<br><\/b>/g
s/\/tmp\/mnt\/HDD\/www as you can find in USB mount path.<br>/\/tmp\/mnt\/HDD\/www (USB 掛載路徑下).<br>/g
s/<b> NGINX Custom Configuration:<\/b> You can add other values to nginx.conf to suit your needs.<br>/<b> NGINX 自訂設定:<\/b> 您可以依據您的需求額外自訂設定參數於 nginx.conf .<br>/g
s/<b> Server Priority:<\/b> Sets the service priority over other processes running on the router.<br><br>/<b> 伺服器優先權重:<\/b> 設置服務優先於路由器上其他運行的程式.<br><br>/g
s/> NGINX HTTP Section Custom Configuration:<\/b> You can add other values to nginx.conf in declaration of http {} to suit your needs.</> NGINX HTTP Section Custom 自訂設定:<\/b> 您可以自訂 http {} 宣告參數於 nginx.conf 以滿足您的需求.</g
s/> NGINX SERVER Section Custom Configuration:<\/b> You can add other values to nginx.conf in declaration of server {} to suit your needs.</> NGINX SERVER Section Custom 自訂設定:<\/b> 您可以自訂 server {} 宣告參數於 nginx.conf 以滿足您的需求.</g
s/> PHP Custom Configuration:<\/b> You can add other values to php.ini to suit your needs.</> PHP 自訂設定:<\/b> 您可以自訂 PHP 參數於 php.ini 以滿足您的需求.</g
s/The operating system kernel has priority -5.<br>/作業系統內核優先權重為 -5.<br>/g
s/Never select a lower value than the kernel uses. Do not use the service test page to adjust the<br>/請勿設定低於內核權重的數值. 不要使用該服務的測試頁面調整<br>/g
s/server performance, it's performance is lower than the definitive media where files will be <br>/伺服器效能，它的效能低於主流儲存媒體中的文件<br>/g
s/located, i.e; USB Stick, Hard Drive or SSD./例如：USB 隨身碟，硬碟或SSD./g



#
#	web-mysql.asp
#
s/title: 'Enable MySQL server'/title: '啟用 MySQL 伺服器'/g
s/title: 'MySQL binary path'/title: 'MySQL 主程式路徑'/g
s/title: 'MySQL listen port'/title: 'MySQL 伺服器通訊埠'/g
s/title: 'Allow Anyhost to access'/title: '允許任何主機連線'/g
s/title: 'Re-init priv. table'/title: '重置權限表(privileges table)'/g
s/title: 'Re-init root password'/title: '重置管理者(root)密碼'/g
s/title: 'root user name'/title: '管理者(root)名稱'/g
s/title: 'root password'/title: '管理者(root)密碼'/g
s/title: 'Enable USB Partition'/title: '啟用 USB 磁碟分區'/g
s/title: 'Data dir.'/title: 'Data 資料夾'/g
s/title: 'Tmp dir.'/title: 'Tmp 資料夾'/g
s/<b>Enable MySQL server<\/b> - Caution! - If your router only has 32MB of RAM, you'll have to use swap./<b>啟用 MySQL 伺服器<\/b> - 注意! 如果您的路由器只有32MB記憶體，您必須使用虛擬記憶體(swap)./g
s/<b>MySQL binary path<\/b> - Path to the directory containing mysqld etc. Not include program name "\/mysqld"/<b>MySQL 主程式路徑<\/b> - MySQL 伺服器端執行程式的所在路徑. 路徑不包含程式名稱 "\/mysqld"./g
s/<b>Keep alive<\/b> - If enabled, mysqld will be checked at the specified interval and will re-launch after a crash./<b>保持運作<\/b> - 如果啟用，MySQL 伺服器將於指定的時間內檢查並在掛點當機後自動重新啟動./g
s/<b>Data and tmp dir.<\/b> - Attention! Must not use NAND for datadir and tmpdir./<b>Data 及 tmp 資料夾.<\/b> - 注意! 不可以使用快閃記憶體./g
s/>Not include "\/mysqld"</>路徑不包含程式名稱 "\/mysqld"</g
s/>minutes (range: 1 - 55; default: 1)</>分鐘 (範圍: 1 - 55; 預設: 1)</g
s/>seconds (range: 1 - 60; default: 2)</>秒 (範圍: 1 - 60; 預設: 2)</g
s/> default: 3306</> 預設: 3306</g
s/>Allowed any hosts to access database server.</>允許任何主機連線資料庫.</g
s/>If checked, privileges table will be forced to re-initialize by mysql_install_db.</>如果勾選, 權限表(privileges table)將被 mysql_install_db 強制重置.</g
s/>If checked, root password will be forced to re-initialize.</>如果勾選, 管理者(root)密碼將被重置為預設值.</g
s/>user name connected to server.(default: root)</>連線至資料庫帳號.(預設: root)</g
s/>not allowed NULL.(default: admin)</>不允許空白.(預設: admin)</g
s/>Directory name under mounted partition.</>掛載的分區下的目錄名稱.</g
s/>MySQL Server custom config.<\/b> - input like:  param=value   e.g.  connect_timeout=10/>MySQL Server custom config.<\/b> - 輸入格式:  參數=數值   例如：connect_timeout=10/g
s/\[Click here to manage MySQL]</\[開啟 MySQL 管理工具]</g


