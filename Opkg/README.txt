=================
Opkg 套件庫使用說明
=================

軟硬體需求:
	1. 已安裝Tomato K26(核心)衍生版本韌體(泰迪熊, 土司超人...)的路由器.
	2. 已安裝Optware ddwrt套件庫.

安裝(Telnet):
	# ipkg-opt install http://twtomato.googlecode.com/files/opkg_0.1.8_mipsel.ipk

開機設定(WebUI):
	http://192.168.1.1/admin-scripts.asp
	Init:
		ln -s /opt/opkg/etc/opkg /etc/opkg

問題反應:
	http://digiland.tw/viewtopic.php?id=1678