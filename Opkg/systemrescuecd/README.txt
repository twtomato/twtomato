=======================
systemrescuecd 套件使用說明
=======================

版本: 2.3.1
檔案: systemrescuecd_2.3.1_tomato-k26_pxe.opk
功能: 電腦系統救援

安裝(Telnet/SSH):
	# opkg info systemrescuecd
	# opkg install systemrescuecd

設定檔:
	/opt/tftpboot/pxelinux.cfg/default
	1. 將SystemRescueCd來源的預設IP: 192.168.1.1, 改為路由器的LAN IP.
	2. SystemRescueCd的載入優先順序: NFS > TFTP
	3. TFTP載入, 電腦需較多記憶體.

使用前:
	1. 下載iso: ftp://nchc.dl.sf.net/s/project/sy/systemrescuecd/sysresccd-x86/2.3.1/systemrescuecd-x86-2.3.1.iso
	2. 虛擬光碟掛載, 或Linux掛載iso
	3. 上傳必要檔案至/opt/tftpboot/SystemRescueCd/
		# mount.nfs 192.168.1.1:/opt/tftpboot/SystemRescueCd /mnt/nfs
		# mount -o loop systemrescuecd-x86-2.3.1.iso /mnt/iso
		# cd /mnt/iso
		# cp sysrcd.dat sysrcd.md5 /mnt/nfs
		# cd isolinux
		# altker32 altker64 rescuecd rescue64 initram.igz /mnt/nfs

問題反應:
	http://digiland.tw/viewtopic.php?id=1678