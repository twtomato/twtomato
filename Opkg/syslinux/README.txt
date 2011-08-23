=================
syslinux 套件使用說明
=================

版本: 4.04
檔案: syslinux_4.04_tomato-k26_pxe.opk
功能: 電腦網路開機(PXE boot)

安裝(Telnet/SSH):
	# opkg info syslinux
	# opkg install syslinux

選單設定檔:
	/opt/tftpboot/pxelinux.cfg/default

暫存下載檔:
	/opt/tmp/syslinux-4.04.tar.bz2

電腦設定:
	1. 電腦內建網路卡, BIOS設定啟用PXE boot; 或網路卡安裝Boot ROM, 支援PXE boot.
	2. 電腦BIOS設定開機啟動順序, 網路啟動優先.

問題反應:
	http://digiland.tw/viewtopic.php?id=1678