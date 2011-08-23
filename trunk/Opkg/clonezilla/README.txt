==================
clonezilla 套件使用說明
==================

版本: 1.2.9-19
檔案: clonezilla_1.2.9-19_tomato-k26_pxe.opk
功能: 電腦硬碟備份與還原

安裝(Telnet/SSH):
	# opkg info clonezilla
	# opkg install clonezilla

設定檔:
	/opt/tftpboot/pxelinux.cfg/default
	1. 將Clonezilla來源的預設IP: 192.168.1.1, 改為路由器的LAN IP.
	2. Clonezilla的載入優先順序: NFS > FTP > TFTP, 視所使用的Toamto韌體內建功能而定.

暫存下載檔:
	/opt/tmp/clonezilla-live-1.2.9-19-amd64.zip
	/opt/tmp/clonezilla-live-1.2.9-19-i486.zip
	/opt/tmp/clonezilla-live-1.2.9-19-i686-pae.zip

問題反應:
	http://digiland.tw/viewtopic.php?id=1678