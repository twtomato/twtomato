=======================
systemrescuecd 套件使用說明
=======================

版本: 2.3.0
檔案: systemrescuecd_2.3.0_tomato-k26_pxe.opk
功能: 電腦系統救援

BT種子下載:
	http://twtomato.googlecode.com/files/systemrescuecd_2.3.0_tomato-k26_pxe.opk.torrent

安裝(Telnet/SSH):
	# opkg install systemrescuecd_2.3.0_tomato-k26_pxe.opk
	因檔案很大, 安裝約30分鐘.

設定檔:
	/opt/tftpboot/pxelinux.cfg/default
	1. 將SystemRescueCd來源的預設IP: 192.168.1.1, 改為路由器的LAN IP.
	2. SystemRescueCd的載入優先順序: NFS > TFTP
	3. TFTP載入, 電腦需較多記憶體.

問題反應:
	http://digiland.tw/viewtopic.php?id=1678