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
#	admin-access.asp
#
s/\] Admin: Access</\] 路由器管理設定：密碼\/遠端連線</g
s/("Unsaved changes will be lost. Continue anyway?")/("設定尚未儲存將會遺失. 是否繼續執行?")/g
s/'Warning: Web Admin is about to be disabled. If you decide to re-enable Web Admin at a later time, it must be done manually via Telnet, SSH or by performing a hardware reset. Are you sure you want to do this?'/'請注意：手動關閉 WebGUI 介面，若關閉、只能使用 Telnet 和 SSH 登入或從硬體 Reset 機器，您確定要這樣做嗎?'/g
s/'The local http\/https must also be enabled when using remote access.'/'關閉 HTTP 和 HTTPS 將只能從遠端管理此機器'/g
s/, 'Invalid SSH key.',/, '錯誤的 SSH 金鑰',/g
s/, 'Both passwords must match.',/, '兩次輸入的密碼不同',/g
s/, 'Password must not be empty.',/, '請輸入密碼',/g

#
#	about.asp
#
s/\] About</\] 關於 Tomato</g
s/>Tomato</>蕃茄(Tomato)</g
s/>Version </>(繁體\/正體)中文版 </g
s/Tomato Firmware v</蕃茄(Tomato)韌體版本</g
s/Built on </於 </g
s/<b>Thanks to everyone who risked their routers, tested, reported bugs, made/非常感謝您冒險測試您的路由器，回報問題、建議和促成這個企劃 ^ _ ^<\/b><br><h4>版本發佈地點:<br><a href="http:\/\/code.google.com\/p\/twtomato\/downloads\/list" target="_blank">http:\/\/code.google.com\/p\/twtomato\/downloads\/list<\/a><br><br>相關討論主題:<br><a href="http:\/\/www.pczone.com.tw\/vbb3\/thread\/16\/139180\/" target="_blank">【討論】Tomato Firmware 中文化for Buffalo\&Linksys<\/a>　PCZONE<br><a href="http:\/\/www.mobile01.com\/topicdetail.php?f=110\&t=511542\&last=5065482" target="_blank">[中文化] 繁體\/正體 Tomato Firmwar 韌體載點<\/a>　@Mobile01<br>註: 在此聲明本 <b>中文化版本, 獨立由<br>bv2lk@PCZONE<br>bx2aa@PCZONE <a href="http:\/\/twtomato.googlecode.com\/files\/Script.rar">加快中文化 Tomato WebGUI Script<\/a> 作者<br>tomato.taiwan@Mobile01<br><\/b><\/h4><h3>協助完成.<\/h3><br><br><marquee>當您能看到此訊息，表示此蕃茄(Tomato)韌體 版本<% version(1); %>之 WebGUI 使用 ＢＸ２ＡＡ 所製作的 Script 產生<\/marquee><br>/g
s/suggestions and contributed to this project. ^ _ ^<\/b><br>/<\/b>/g

#
#	admin-access.asp
#
s/>Web Admin</>路由器管理設定</g
s/title: 'Local Access',/title: '區域端登入模式',/g
s/options: \[\[0,'Disabled'\],\[1,'HTTP'\],\[2,'HTTPS'\],\[3,'HTTP \&amp; HTTPS'\]\],/options: \[\[0,'關閉'\],\[1,'HTTP'\],\[2,'HTTPS'\],\[3,'HTTP \&amp; HTTPS'\]\],/g
s/title: 'HTTP Port',/title: 'HTTP 通訊埠',/g
s/title: 'HTTPS Port',/title: 'HTTPS 通訊埠',/g
s/title: 'SSL Certificate',/title: 'SSL 憑證',/g
s/title: 'Common Name (CN)',/title: '一般名稱 (CN)',/g
s/>(optional; space separated)</>(非必填; 以空隔區分)</g
s/title: 'Regenerate',/title: '重新產生',/g
s/title: 'Save In NVRAM',/title: '儲存至 NVRAM',/g
s/title: 'Remote Access',/title: '遠端登入',/g
s/options: \[\[0,'Disabled'\],\[1,'HTTP'\],\[2,'HTTPS'\]\],/options: \[\[0,'關閉'\],\[1,'HTTP'\],\[2,'HTTPS'\]\],/g
s/title: 'Port',/title: '通訊埠',/g
s/title: 'Allow Wireless Access',/title: '允許\無線網路-登入管理',/g
s/title: 'Color Scheme',/title: '風格',/g
s/options: \[\['red','Tomato'\],\['black','Black'\],\['blue','Blue'\],\['bluegreen','Blue \&amp; Green (Lighter)'\],\['bluegreen2','Blue \&amp; Green (Darker)'\],\['cyan','Cyan'\],\['olive','Olive'\],\['pumpkin','Pumpkin'\],\['ext\/custom','Custom (ext\/custom.css)'\]\],/options: \[\['red','蕃茄紅'\],\['black','黑色'\],\['blue','藍色'\],\['bluegreen','藍色 \&amp; 綠色 (較淺)'\],\['bluegreen2','藍色 \&amp; 綠色 (較深)'\],\['cyan','青綠色'\],\['olive','橄欖色'\],\['pumpkin','南瓜色'\],\['ext\/custom','自定 (ext\/custom.css)'\]\],/g
s/options: \[\['red','Tomato'\],\['black','Black'\],\['blue','Blue'\],\['bluegreen','Blue \&amp; Green (Lighter)'\],\['bluegreen2','Blue \&amp; Green (Darker)'\],\['brown','Brown'\],\['cyan','Cyan'\],\['olive','Olive'\],\['pumpkin','Pumpkin'\],\['ext\/custom','Custom (ext\/custom.css)'\]\],/\['red','蕃茄紅'\],\['black','黑色'\],\['blue','藍色'\],\['bluegreen','藍色 \&amp; 綠色 (較淺)'\],\['bluegreen2','藍色 \&amp; 綠色 (較深)'\],\['brown','棕色'\],\['cyan','青綠色'\],\['olive','橄欖色'\],\['pumpkin','南瓜色'\],\['ext\/custom','自定 (ext\/custom.css)'\]\],/g
s/title: 'Show Browser Icon',/title: '顯示在工具列',/g
s/>SSH Daemon</>SSH 守護程式</g
s/title: 'Enable at Startup',/title: '開機時開啟',/g
s/title: 'Remote Access',/title: '遠端登入',/g
s/title: 'Remote Port',/title: '遠端登入的通訊埠',/g
s/title: 'Port',/title: '通訊埠',/g
s/title: 'Allow Password Login',/title: '登入密碼',/g
s/title: 'Authorized Keys',/title: '授權金鑰',/g
s/(sdup ? 'Stop' : 'Start')/(sdup ? '關閉' : '開啟')/g
s/>Remote Web\/SSH Admin Restriction</>遠端 Web\/SSH 登入限制</g
s/title: 'Allowed IP Address',/title: '遠端登入的IP',/g
s/>(optional; ex: "1.1.1.1", "1.1.1.0\/24" or "1.1.1.1 - 2.2.2.2")</>("空白" 不限制,可單一IP或範圍;例: "1.1.1.1", "1.1.1.0\/24" 或 "1.1.1.1 - 2.2.2.2")</g
s/>Telnet Daemon</>Telnet 守護程式</g
s/title: 'Enable at Startup',/title: '開機自動開啟',/g
s/title: 'Port',/title: '通訊埠',/g
s/(tdup ? 'Stop' : 'Start')/(tdup ? '關閉' : '開啟')/g
s/>Password</>變更密碼</g
s/title: 'Password',/title: '密碼',/g
s/title: '<i>(re-enter to confirm)<\/i>',/title: '(確認密碼)',/g
s/' value='Save' id='/' value='儲存' id='/g
s/' value='Cancel' id='/' value='取消' id='/g

#
#	admin-buttons.asp
#
s/\] Admin: Buttons</\] 路由器管理設定：按\鈕\功\能\ \/ LED</g
s/>SES\/AOSS Button</>SES\/AOSS 按鈕</g
s/a = \[\[0,'Do Nothing'\],\[1,'Toggle Wireless'\],\[2,'Reboot'\],\[3,'Shutdown'\],\[4,'Run Custom Script'\]]\;/a = \[\[0,'不做任何事'\],\[1,'開\/關 無線網路'],\[2,'重開機'\],\[3,'關機'\],\[4,'執行自訂 Script'\]\];/g
s/title: "When Pushed For..."/title: "按AOSS鈕的時間啟動..."/g
s/title: '0-2 Seconds',/title: '0-2 秒',/g
s/title: '4-6 Seconds',/title: '4-6 秒',/g
s/title: '8-10 Seconds',/title: '8-10 秒',/g
s/title: '12+ Seconds',/title: '12+ 秒',/g
s/title: '12-14 Seconds',/title: '12-14 秒',/g
s/title: '16+ Seconds',/title: '16+ 秒',/g
s/title: 'Custom Script',/title: '自訂 Script',/g
s/title: 'Custom Script 1',/title: '自訂 Script 1',/g
s/title: 'Custom Script 2',/title: '自訂 Script 2',/g
s/>Bridge-Auto Switch</>橋接開關</g
s/>Startup LED</>開啟 LED 指示燈</g
s/) W('<i>This feature is not supported on this router.<\/i>')/) W('硬體不支援此功\能')/g

#
#	admin-bwm.asp
#
s/\] Admin: Bandwidth Monitoring</\] 路由器管理設定：頻寬監控設定</g
s/alert('Invalid filename');/alert('檔案名稱錯誤');/g
s/alert('Incorrect filename. Expecting a ".cfg" file.');/alert('檔案名稱錯誤. 必須是".cfg"的檔案');/g
s/(!confirm('Are you sure?')) return;/(!confirm('確定嗎 ?')) return;/g
s/('WARNING: Erasing the NVRAM on a ' + nvram.t_model_name + ' router may be harmful. It may not be able to re-setup the NVRAM correctly after a complete erase. Proceeed anyway?')) return;/('請注意: 清除 NVRAM 的 ' + nvram.t_model_name + ' 路由器可能會損毀.完全清除之後 可能無法正確設定 NVRAM. 是否繼續執行 ?')) return;/g
s/alert('Incorrect filename. Expecting a ".gz" file.');/alert('檔案名稱錯誤. 正確的副檔名 為 ".gz"');/g
s/('Restore data from ' + name + '?')/('是否從 ' + name + '恢復?')/g
s/(eUser, 'Please start at the \/ root directory.', quiet)/(eUser, 'Please start at the \/ root directory.', quiet)/g
s/(eLoc, 'JFFS2 is not enabled.', quiet)/(eLoc, 'JFFS2 未開啟。', quiet)/g
s/(eLoc, 'CIFS #' + RegExp.$1 + ' is not enabled.', quiet)/(eLoc, 'CIFS #' + RegExp.$1 + ' 尚未開啟.', quiet)/g
s/('Frequent saving to NVRAM or JFFS2 is not recommended. Continue anyway?')/('不建議對 NVRAM 或 JFFS2 頻繁的存取 是否繼續?')/g
s/('Note: ' + path + ' will be treated as a file. If this is a directory, please use a trailing \/. Continue anyway?')/('注意: ' + path + ' 將會被視為一個檔案. 如果這是一個目錄，請使用 \/. 是否繼續?')/g
s/>Bandwidth Monitoring</>頻寬監控設定</g
s/title: 'Enable',/title: '開啟',/g
s/title: 'Save History Location',/title: '選擇儲存空間',/g
s/title: 'Save Frequency',/title: '儲存的頻\率',/g
s/\[1,'Every Hour'\],\[2,'Every 2 Hours'\],\[3,'Every 3 Hours'\],\[4,'Every 4 Hours'\],\[5,'Every 5 Hours'\],\[6,'Every 6 Hours'\],/\[1,'每小時'\],\[2,'每2小時'\],\[3,'每3小時'\],\[4,'每4小時'\],\[5,'每5小時'\],\[6,'每6小時'\],/g
s/\[9,'Every 9 Hours'\],\[12,'Every 12 Hours'\],\[24,'Every 24 Hours'\],\[48,'Every 2 Days'\],\[72,'Every 3 Days'\],\[96,'Every 4 Days'\],/\[9,'每9小時'\],\[12,'每12小時'\],\[24,'每天'\],\[48,'每兩天'\],\[72,'每三天'\],\[96,'每四天'\],/g
s/\[120,'Every 5 Days'\],\[144,'Every 6 Days'\],\[168,'Every Week'\]\] },/\[120,'每五天'\],\[144,'每六天'\],\[168,'每週'\]\] },/g
s/title: 'Save On Shutdown',/title: '關機時儲存',/g
s/title: 'Create New File \/<br>Reset Data',/title: '建立新檔案 \/<br>清除資料',/g
s/>(note: enable if this is a new file)</>(note: enable if this is a new file)</g
s/title: 'First Day Of The Month',/title: '每月第一天為',/g
s/title: 'Excluded Interfaces',/title: '排除的介面',/g
s/>(comma separated list)</>(用逗號分隔介面)</g
s/>Backup</>備份</g
s/' value='Backup'/' value='備份'/g
s/>Restore</>恢復</g
s/' value='Restore'/' value='恢復'/g
s/Settings saved. Some services are being restarted.../Settings saved. Some services are being restarted.../g

#
#	admin-cifs.asp
#
s/\] Admin: CIFS Client</\] 路由器管理設定：網路芳鄰設定</g
s/ferror.set(e, 'Invalid ' + name, quiet);/ferror.set(e, '錯誤的 ' + name, quiet);/g
s/ferror.set(unc, 'Invalid UNC', quiet);/ferror.set(unc, '錯誤的 UNC 路徑', quiet);/g
s/>CIFS Client</>網路芳鄰</g
s/title: 'UNC',/title: 'UNC 路徑',/g
s/title: 'Username',/title: '使用者名稱',/g
s/title: 'Domain',/title: '網域',/g
s/title: 'Execute When Mounted',/title: '掛載',/g
s/title: 'Total \/ Free Size',/title: '總容量\/可用空間',/g
s/'(not mounted)'/'(未掛載)'/g

#
#	admin-config.asp
#
s/\] Admin: Configuration</\] 路由器管理設定：出廠預設值</g
s/>Backup Configuration</>備份設定檔</g
s/>Restore Configuration</>恢復預設值</g
s/Select the configuration file to restore:</選擇所要恢復的設定檔:</g
s/>Restore Default Configuration</>恢復出廠預設值</g
s/>Select...</>請選擇...</g
s/>Restore default router settings (normal)</>恢復TOMATO預設值 (一般)</g
s/>Erase all data in NVRAM memory (thorough)</>清除NVRAM全部資料 (徹底清除)</g
s/' value='OK'/' value='確定'/g

#
#	admin-debug.asp
#
s/\] Admin: Debugging</\] 路由器管理設定：除錯</g
s/>Debugging</>除錯</g
s/title: 'Avoid performing an NVRAM commit',/title: '避免寫入NVRAM',/g
s/title: 'Do not erase some intermediate files',/title: '不清除某些暫存檔',/g
s/title: 'Enable cprintf output to console',/title: 'Enable cprintf output to console',/g
s/title: 'Enable cprintf output to \/tmp\/cprintf',/title: 'Enable cprintf output to \/tmp\/cprintf',/g
s/title: 'Enable DDNS output to \/tmp\/mdu-\*',/title: '將 DDNS 輸出至 \/tmp\/mdu-\*',/g
s/title: 'Count cache memory as free memory',/title: '快取記憶體算成可用的記憶體',/g
s/title: 'Avoid displaying LAN to router connections',/title: '不顯示本地連線',/g
s/title: 'Console log level',/title: 'Console log level',/g
s/>Clear Cookies</>清除 Cookies</g
s/>NVRAM Commit</>寫入NVRAM</g
s/>Reboot</>重開機</g
s/>Shutdown</>關機</g
s/>Download CFE</>\下載 CFE</g
s/>Download Iptables Dump</>\下載 Iptables 傾印檔</g
s/>Download Logs</>\下載日誌記錄檔</g
s/>Download NVRAM Dump</>\下載 NVRAM 傾印檔</g
s/<b>Warning<\/b>: The NVRAM Dump text file may contain information like wireless/<b>請注意<\/b>: NVRAM 傾印所得到的檔案,包含私人資料.如 帳號 密碼 等, 若要交予他人, 請檢視和編輯清除重要資訊後, 再進行傳送.<br>/g
s/encryption keys and usernames\/passwords for the router, ISP and DDNS. Please//g
s/review \&amp; edit this file before sharing it with//g
s/^anyone.<br>//g

#
#	admin-jffs2.asp
#
s/\] Admin: JFFS2</\] 路由器管理設定：JFFS2</g
s/("Format the JFFS2 partition?")/("格式化 JFFS2 partition?")/g
s/" value="Format \/ Erase..."/" value="格式化 \/ 清除..."/g
s/>Please wait for </>請稍候 </g
s/>about 60 seconds</>約1分鐘</g

#
#	admin-log.asp
#
s/\] Admin: Logging</\] 路由器管理設定：日誌紀錄</g
s/>Syslog</>系統日誌</g
s/title: 'Log Internally',/title: '日誌記錄檔',/g
s/title: 'Log to Remote System',/title: '至遠端系統的日誌紀錄',/g
s/title: 'IP Address \/ Port',/title: 'IP 位址 \/ 通訊埠',/g
s/title: 'Mark Interval',/title: '間隔標籤',/g
s/>(minutes \/ 0 to disable)</>(分鐘 \/ 0 關閉)</g
s/title: 'Events Logged'/title: '事件日誌紀錄'/g
s/title: 'Access Restriction De\/Activiation',/title: '瀏覽網路(限制\/允許\)',/g
s/title: 'Cron',/title: 'Cron',/g
s/title: 'DHCP Client',/title: '記錄 DHCP 連線',/g
s/title: 'NTP',/title: '記錄 NTP',/g
s/title: 'Scheduler',/title: '記錄 定時重開機\/連線',/g
s/title: 'Connection Logging'/title: '連接日誌紀錄'/g
s/title: 'Inbound Connection',/title: '對內連線',/g
s/\[\[0,'Disabled (recommended)'\],\[1,'If Blocked By Firewall'\],\[2,'If Allowed By Firewall'\],\[3,'Both'\]\]/\[\[0,'關閉 (建議)'\],\[1,'被防火牆拒絕'\],\[2,'被防火牆允\許\'\],\[3,'拒絕與允\許\都記錄'\]\]/g
s/title: 'Outbound Connection',/title: '對外連線',/g
s/title: 'Limit Logging',/title: '限制日誌紀錄',/g
s/>(messages per minute \/ 0 for unlimited)</>(每分鐘 ? 則 \/ 0 取消限制)</g

#
#	admin-sched.asp
#
s/\] Scheduler</\] 定時重開機\/連線</g
s/weeks = \['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'\];/weeks = \['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'\];/g
s/weeksShort = \['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'\];/weeksShort = \['日', '一', '二', '三', '四', '五', '六'\];/g
s/var dowNames = \['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'\];/var dowNames = \['週日', '週一', '週二', '週三', '週四', '週五', '週六'\];/g
s/\[-1, 'Every minute'\], \[-3, 'Every 3 minutes'\], \[-5, 'Every 5 minutes'\], \[-15, 'Every 15 minutes'\], \[-30, 'Every 30 minutes'\],/\[-1, '每分鐘'\], \[-3, '每隔 3 分鐘'\], \[-5, '每隔 5 分鐘'\], \[-15, '每隔 15 分鐘'\], \[-30, '每隔 30 分鐘'\],/g
s/\[-60, 'Every hour'\], \[-(12 \* 60), 'Every 12 hours'\], \[-(24 \* 60), 'Every 24 hours'\],/\[-60, '每小時'\], \[-(12 \* 60), '每隔 12 小時'\], \[-(24 \* 60), '每隔 24 小時'\],/g
s/	\['e', 'Every...'\]);/        \['e', '每隔..(自訂)'\]);/g
s/title: 'Time',/title: '時間',/g
s/>minutes</>分鐘</g
s/suffix: ' Sun \&nbsp; ',/suffix: ' 星期日 \&nbsp; ',/g
s/suffix: ' Mon \&nbsp; ',/suffix: ' 星期一 \&nbsp; ',/g
s/suffix: ' Tue \&nbsp; ',/suffix: ' 星期二 \&nbsp; ',/g
s/suffix: ' Wed \&nbsp; ',/suffix: ' 星期三 \&nbsp; ',/g
s/suffix: ' Thu \&nbsp; ',/suffix: ' 星期四 \&nbsp; ',/g
s/suffix: ' Fri \&nbsp; ',/suffix: ' 星期五 \&nbsp; ',/g
s/suffix: ' Sat', value: (rule/suffix: ' 星期六', value: (rule/g
s/suffix: ' Sat \&nbsp; \&nbsp;',/suffix: ' 星期六 \&nbsp; ',/g
s/suffix: ' Everyday',/suffix: ' 每日 \&nbsp; ',/g
s/title: 'Command',/title: '指令',/g
s/>Scheduled Reboot</>定時重新啟動</g
s/>Reconnect</>定時重新連線</g
s/>Custom 1</>自訂 1</g
s/>Custom 2</>自訂 2</g
s/>Custom 3</>自訂 3</g

#
#	admin-scripts.asp
#
s/\] Admin: Scripts</\] 路由器管理設定：Scripts</g
s/\[\['as-init', 'Init'\],\['as-shut', 'Shutdown'\],\['as-fire','Firewall'\],\['as-wanup', 'WAN Up'\]\]/\[\['as-init', '初始化'\],\['as-shut', '關機時'\],\['as-fire','防火牆'\],\['as-wanup', '當 WAN 連線'\]\]/g
s/' script is too long. Maximum allowed is ' + x + ' bytes.');/' script 太大. 請勿超過 ' + x + ' 位元組。');/g
s/+ '> Word Wrap');/+ '> 自動換行');/g
s/>Cannot upgrade if JFFS2 is enabled.</> JFFS2 開啟時無法更新.</g
s/An upgrade may overwrite the JFFS2 partition currently in use. Before upgrading,/升級時會覆蓋\目前 JFFS2 使用中的分區, 更新前請先備份 JFFS2 的資料. 關閉 JFFS2 並重開 ROUTER.<br>/g
s/please backup the contents of the JFFS2 partition, disable it, then reboot the router.<br>//g
s/>Disable \&raquo;</>關閉 \&raquo;</g
s/Please wait while the firmware is uploaded \&amp; flashed.<br>/請稍候...直到軔體更新完成.<br>/g
s/>Warning:<\/b> Do not interrupt this browser or the router!</>請注意:<\/b> 請勿關閉瀏覽器或中斷電源!</g
s/\] Advanced: Conntrack \/ Netfilter</\] 進階設定: 連接跟蹤 \/ 過濾</g
s/' in this state)</' 個連線在這種狀態)</g
s/' connections currently tracked)';/' 個連線數目前使用中)';/g
s/e.value = 'Expire Scheduled... ' + expireTime;/e.value = '正在清除... ' + expireTime;/g
s/return v_range('_ct_max', quiet, 128, 10240);/return v_range('_ct_max', quiet, 128, 65535);/g
s/>Connections</>連線數</g
s/title: 'Maximum Connections',/title: '最大連線數量',/g
s/>\[ count current... \]</>\[ 顯示目前的連線數 \]</g
s/value: fixInt(nvram.ct_max || 2048, 128, 10240, 2048) }/value: fixInt(nvram.ct_max || 2048, 128, 65535, 2048) }/g
s/' value='Drop Idle'/' value='清除逾時'/g
s/>TCP Timeout</>TCP 逾時</g
s/>UDP Timeout</>UDP 逾時</g
s/>Tracking \/ NAT Helpers</>Tracking \/ NAT 增強模組</g
s/>Miscellaneous</>其他</g
s/title: 'TTL Adjust',/title: 'TTL 調整',/g
s/title: 'Inbound Layer 7',/title: '下載時開啟應用層過濾',/g

#
#	advanced-dhcpdns.asp
#
s/\] Advanced: DHCP \/ DNS</\] 進階設定：DHCP \/ DNS</g
s/>DHCP \/ DNS Server</>DHCP \/ DNS 伺服器</g
s/title: 'Use Internal Caching DNS Forwarder',/title: '開啟 DNS 快取轉發',/g
s/title: 'Use Received DNS With Static DNS',/title: '使用 固定DNS 伺服器',/g
s/title: 'Intercept DNS Port<br>(UDP 53)',/title: '中斷 DNS 埠(UDP 53)',/g
s/title: 'Maximum Active DHCP Leases',/title: 'DHCP 最大用戶數量',/g
s/title: 'Static Lease Time',/title: '固定租約時間',/g
s/>(minutes)</>(分)</g
s/options: \[\[0,'Same as normal lease time'\],\[-1,'Infinite'\],\[1,'Custom'\]\],/options: \[\[0,'正常'\],\[-1,'不限制'\],\[1,'自訂'\]\],/g
s/>Dnsmasq<\/a><br>Custom Configuration',/>Dnsmasq<\/a><br>自定設定',/g
s/Note: The file \/etc\/dnsmasq.custom is also added to the end of Dnsmasq's configuration file if it exists./備註: \/etc\/dnsmasq.custom 也會附加到 Dnsmasq 的設定檔案的末端, 若檔案存在的話./g
s/>DHCP Client (WAN)</>DHCP 用戶端 (WAN)</g
s/title: 'Reduce Packet Size',/title: '壓縮封包',/g
s/\] Advanced: Firewall</\] 進階設定：防火牆</g

#
#	advanced-firewall.asp
#
s/>Firewall</>防火牆</g
s/title: 'Respond To ICMP Ping',/title: '允許\回應 ICMP Ping',/g
s/title: 'Allow Multicast',/title: '允許\多點傳播',/g
s/options: \[\[0,'All'\],\[1,'Forwarded Only'\],\[2,'Disabled'\]\],/options: \[\[0,'全部'\],\[1,'只有被轉送的封包'\],\[2,'關閉'\]\],/g
s/title: 'NAT Loopback',/title: 'NAT Loopback',/g
s/options: \[\[0,'Enabled'\],\[1,'Forwarded Only'\],\[2,'Disabled'\]\],/options: \[\[0,'開啟'\],\[1,'轉發'\],\[2,'關閉'\]\],/g
s/\] Advanced: MAC Address</\] 進階設定： MAC 位址</g
s/('_f_mac_wan', 'Addresses must be unique', quiet)/('_f_mac_wan', '位址不能重覆', quiet)/g
s/("Warning: Changing the MAC address may require that you reboot all devices, computers or modem connected to this router. Continue anyway?")/("警告: 改變 MAC Address 有可能需要把連線到這台路由器的設備, 電腦或數據機重新開機. 不論如何繼續執行?")/g

#
#	advanced-mac.asp
#
s/>MAC Address</>實體位址(MAC Address)</g
s/" value="Default"/" value="預設值"/g
s/" value="Random"/" value="亂數"/g
s/" value="Clone PC"/" value="複製 PC 的MAC"/g
s/title: 'WAN Port',/title: 'WAN 的 MAC',/g
s/title: 'Wireless Interface',/title: 'Wireless 的 MAC',/g
s/>Router's MAC Address:</>路由器 MAC:</g
s/>Computer's MAC Address:</>PC網卡 MAC:</g

#
#	advanced-misc.asp
#
s/\] Advanced: Miscellaneous</\] 進階設定：其他設定</g
s/title: 'Boot Wait Time \*',/title: 'Boot_Wait 時間 \*',/g
s/title: 'WAN Port Speed \*',/title: 'WAN 連線速度 \*',/g
s/options: \[\[0,'10Mb Full'\],\[1,'10Mb Half'\],\[2,'100Mb Full'\],\[3,'100Mb Half'\],\[4,'Auto'\]\],/options: \[\[0,'10Mb 全雙工'\],\[1,'10Mb 半雙工'\],\[2,'100Mb 全雙工'\],\[3,'100Mb 半雙工'\],\[4,'自動選擇'\]\],/g
s/>\* Not all models support these options.</>\* 非所有廠牌型號皆支援此功\能.</g

#
#	advanced-routing.asp
#
s/\] Advanced: Routing</\] 進階設定：路由表</g
s/\['Destination', 'Gateway', 'Subnet Mask', 'Metric', 'Interface'\]/\['目的地', '閘道', '子網路遮罩', '路徑開銷', '介面'\]/g
s/\['Destination', 'Gateway', 'Subnet Mask', 'Metric', 'Interface', 'Description'\]/\['目的地', '閘道', '子網路遮罩', '路徑開銷', '介面', '描述'\]/g
s/>Current Routing Table</>路由表</g
s/>Static Routing Table</>固定路由表</g
s/title: 'Mode',/title: '模式',/g
s/title: 'RIPv1 \&amp; v2',/title: 'RIPv1 \&amp; v2',/g
s/title: 'Spanning-Tree Protocol',/title: '擴張樹協定(STP)',/g
s/options: \[\['gateway','Gateway'\],\['router','Router'\]\],/options: \[\['gateway','閘道'\],\['router','路由'\]\],/g
s/options: \[\[0,'Disabled'\],\[1,'LAN'\],\[2,'WAN'\],\[3,'Both'\]\],/options: \[\[0,'取消'\],\[1,'區域網路'\],\[2,'廣域網路'\],\[3,'兩者'\]\],/g

#
#	advanced-wireless.asp
#
s/\] Advanced: Wireless</\] 進階設定：無線網路參數</g
s/title: 'Afterburner',/title: 'Afterburner',/g
s/options: \[\['auto','Auto'\],\['on','Enable'\],\['off','Disable \*'\]\],/options: \[\['auto','自動'\],\['on','開'\],\['off','關 \*'\]\],/g
s/title: 'AP Isolation',/title: '禁止用戶端相互連線',/g
s/options: \[\['0','Disable \*'\],\['1','Enable'\]\],/options: \[\['0','關 \*'\],\['1','開'\]\],/g
s/title: 'Authentication Type',/title: '認證方式',/g
s/options: \[\['0','Auto \*'\],\['1','Shared Key'\]\],/options: \[\['0','自動 \*'\],\['1','共用金鑰'\]\],/g
s/title: 'Basic Rate',/title: '基本傳輸速\率',/g
s/options: \[\['default','Default \*'\],\['12','1-2 Mbps'\],\['all','All'\]\],/options: \[\['default','預設 \*'\],\['12','1-2 Mbps'\],\['all','All'\]\],/g
s/title: 'Beacon Interval',/title: '示標訊號間隔',/g
s/suffix: ' <small>(range: 1 - 65535; default: 100)</suffix: ' <small>(範圍: 1 - 65535; 預設值: 100)</g
s/title: 'CTS Protection Mode',/title: 'CTS 保護模式',/g
s/options: \[\['off','Disable \*'\],\['auto','Auto'\]\],/options: \[\['off','關 \*'\],\['auto','自動'\]\],/g
s/title: 'Distance \/ ACK Timing',/title: '距離 \/ ACK 調整',/g
s/suffix: ' <small>meters<\/small>\&nbsp;\&nbsp;<small>(range: 0 - 99999; 0 = use default)</suffix: ' <small>meters<\/small>\&nbsp;\&nbsp;<small>(範圍: 0 - 99999; 0 = 使用預設值)</g
s/title: 'DTIM Interval',/title: 'DTIM 間隔',/g
s/suffix: ' <small>(range: 1 - 255; default: 1)</suffix: ' <small>(範圍: 1 - 255; 預設值: 1)</g
s/title: 'Fragmentation Threshold',/title: 'Fragmentation Threshold',/g
s/suffix: ' <small>(range: 256 - 2346; default: 2346)</suffix: ' <small>(範圍: 256 - 2346; 預設值: 2346)</g
s/title: 'Frame Burst',/title: 'Frame Burst',/g
s/options: \[\['off','Disable \*'\],\['on','Enable'\]\],/options: \[\['off','關 \*'\],\['on','開'\]\],/g
s/title: 'HP',/title: '高功\率',/g
s/title: 'Amplifier',/title: '功\率放大器',/g
s/options: \[\['0','Disable'\],\['1','Enable \*'\]\],/options: \[\['0','關'\],\['1','開 \*'\]\],/g
s/title: 'Enhanced RX Sensitivity',/title: '增強接收感度',/g
s/options: \[\['0','Disable'\],\['1','Enable \*'\]\],/options: \[\['0','關'\],\['1','開 \*'\]\],/g
s/title: 'Maximum Clients',/title: '無線用戶端數量',/g
s/suffix: ' <small>(range: 1 - 255; default: 128)</suffix: ' <small>(範圍: 1 - 255; 預設值: 128)</g
s/title: 'Multicast Rate',/title: '多點傳播速\率',/g
s/options: \[\['0','Auto \*'\],\['1000000','1 Mbps'\],\['2000000','2 Mbps'\],\['5500000','5.5 Mbps'\],\['6000000','6 Mbps'\],\['9000000','9 Mbps'\],\['11000000','11 Mbps'\],\['12000000','12 Mbps'\],\['18000000','18 Mbps'\],\['24000000','24 Mbps'\],\['36000000','36 Mbps'\],\['48000000','48 Mbps'\],\['54000000','54 Mbps'\]\],/options: \[\['0','自動 \*'\],\['1000000','1 Mbps'\],\['2000000','2 Mbps'\],\['5500000','5.5 Mbps'\],\['6000000','6 Mbps'\],\['9000000','9 Mbps'\],\['11000000','11 Mbps'\],\['12000000','12 Mbps'\],\['18000000','18 Mbps'\],\['24000000','24 Mbps'\],\['36000000','36 Mbps'\],\['48000000','48 Mbps'\],\['54000000','54 Mbps'\]\],/g
s/title: 'Preamble',/title: 'Preamble',/g
s/options: \[\['long','Long \*'\],\['short','Short'\]\],/options: \[\['long','長 \*'\],\['short','短'\]\],/g
s/title: 'RTS Threshold',/title: 'RTS Threshold',/g
s/suffix: ' <small>(range: 0 - 2347; default: 2347)</suffix: ' <small>(範圍: 0 - 2347; 預設值: 2347)</g
s/title: 'Receive Antenna',/title: '接收天線',/g
s/options: \[\['3','Auto \*'\],\['1','A'\],\['0','B'\]\],/options: \[\['3','自動 \*'\],\['1','A'\],\['0','B'\]\],/g
s/title: 'Transmit Antenna',/title: '發射天線',/g
s/options: \[\['3','Auto \*'\],\['1','A'\],\['0','B'\]\],/options: \[\['3','自動 \*'\],\['1','A'\],\['0','B'\]\],/g
s/title: 'Transmit Power',/title: '發射功\率',/g
s/>mW (before amplification)</>mW (前端功\率放大器)</g
s/>(range: 1 - 251; default: 10)</>(範圍: 1 - 251; 預設值: 10)</g
s/>(range: 1 - 251; default: 42)</>(範圍: 1 - 251; 預設值: 42)</g
s/title: 'Transmission Rate',/title: '傳輸速\率',/g
s/options: \[\['0','Auto \*'\],\['1000000','1 Mbps'\],\['2000000','2 Mbps'\],\['5500000','5.5 Mbps'\],\['6000000','6 Mbps'\],\['9000000','9 Mbps'\],\['11000000','11 Mbps'\],\['12000000','12 Mbps'\],\['18000000','18 Mbps'\],\['24000000','24 Mbps'\],\['36000000','36 Mbps'\],\['48000000','48 Mbps'\],\['54000000','54 Mbps'\]\],/options: \[\['0','自動 \*'\],\['1000000','1 Mbps'\],\['2000000','2 Mbps'\],\['5500000','5.5 Mbps'\],\['6000000','6 Mbps'\],\['9000000','9 Mbps'\],\['11000000','11 Mbps'\],\['12000000','12 Mbps'\],\['18000000','18 Mbps'\],\['24000000','24 Mbps'\],\['36000000','36 Mbps'\],\['48000000','48 Mbps'\],\['54000000','54 Mbps'\]\],/g
s/title: 'WMM',/title: '無線多媒體',/g
s/options: \[\['off','Disable \*'\],\['on','Enable'\]\],/options: \[\['off','關 \*'\],\['on','開'\]\],/g
s/title: 'No ACK',/title: 'No ACK',/g
s/options: \[\['off','Disable \*'\],\['on','Enable'\]\],/options: \[\['off','關 \*'\],\['on','開'\]\],/g
s/>The default settings are indicated with the asterisk </> 選項後有 </g
s/> symbol.</> 符號 為預設值.</g

#
#	basic-ddns.asp
#
s/] Basic: DDNS</] 一般設定：DDNS</g
s/'Username';/'帳號';/g
s/'Password';/'密碼';/g
s/'Hostname';/'主機名稱';/g
s/>Dynamic DNS</>動態名稱伺服器</g
s/title: 'IP Address',/title: 'IP 位址',/g
s/, 'Use WAN IP Address '/, '使用 WAN IP 位址 '/g
s/' (recommended)'\],/' (建議)'\],/g
s/, 'Use External IP Address Checker (every 10 minutes)'],/, '使用外部IP 位址(每十分鐘檢查)'],/g
s/\['custom', 'Custom IP Address...'\]/\['custom', '自訂 IP 位址...'\]/g
s/title: 'Custom IP Address',/title: '自訂 IP 位址',/g
s/>Dynamic DNS '/>動態名稱伺服器 '/g
s/title: 'Service',/title: '伺服器',/g
s/title: 'URL',/title: 'URL',/g
s/>\* This service determines the IP address using its own method.</>\* This service determines the IP address using its own method.</g
s/title: 'Hostname',/title: '主機名稱',/g
s/title: 'URL',/title: 'URL',/g
s/'(Use @IP for the current IP address)',/'(Use @IP for the current IP address)',/g
s/title: 'Wildcard',/title: '通用字元',/g
s/title: 'MX',/title: 'MX',/g
s/title: 'Backup MX',/title: 'Backup MX',/g
s/title: 'Use as DNS',/title: 'Use as DNS',/g
s/title: 'Token \/ URL',/title: 'Token \/ URL',/g
s/title: 'Force Next Update',/title: 'Force Next Update',/g
s/title: 'Last IP Address',/title: '前一個IP位址',/g
s/title: 'Last Result',/title: '目前更新狀況',/g

#
#	basic-ident.asp
#
s/] Basic: Identification</\] 一般設定：路由器基本資料</g
s/>Router Identification</>路由器基本資料</g
s/title: 'Router Name',/title: '路由器名稱',/g
s/title: 'Domain Name',/title: '網域名稱',/g

#
#	basic-network.asp
#
s/\] Basic: Network</\] 一般設定：網路</g
s/e.value = 'Scan '/e.value = '掃瞄 '/g
s/e.value = 'Scan';/e.value = '掃瞄';/g
s/ferror.set(e, 'Invalid WEP key, ', quiet);/ferror.set(e, '錯誤的 WEP key, ', quiet);/g
s/ferror.set('_wan_proto', 'Wireless Client mode requires a valid WAN setting (usually DHCP).', quiet);/ferror.set('_wan_proto', '無線連線模式需要正確的設定 WAN (通常是選 DHCP).', quiet);/g
s/ferror.set('_security_mode2', 'WPA2 is supported only in AP mode.', quiet);/ferror.set('_security_mode2', 'WPA2 只支援 AP 模式.', quiet);/g
s/ferror.set('_wl_wpa_psk', 'Invalid pre-shared key. Please enter at least 8 characters or 64 hexadecimal digits.', quiet);/ferror.set('_wl_wpa_psk', '公用金鑰錯誤. 請輸入至少 8 個字元或64個十六進制數字.', quiet);/g
s/ferror.set('_f_wds_0', 'WDS MAC address required.', quiet);/ferror.set('_f_wds_0', 'WDS 需要 MAC 位址.', quiet);/g
s/>WAN \/ Internet</>廣域網路(WAN)設定</g
s/>Wireless Ethernet Bridge Mode</>無線網路橋接模式</g
s/title: 'Type',/title: '連線類型',/g
s/options: \[\['dhcp','DHCP'\],\['pppoe','PPPoE'\],\['static','Static'\],\['pptp','PPTP'\],\['l2tp','L2TP'\],\['disabled','Disabled'\]\],/options: \[\['dhcp','DHCP獲得IP'\],\['pppoe','PPPoE 撥接'\],\['static','固定 IP'\],\['pptp','PPTP'\],\['l2tp','L2TP'\],\['disabled','關閉'\]\],/g
s/title: 'Service Name',/title: '連線名稱',/g
s/title: 'L2TP Server',/title: '連接 L2TP 伺服器',/g
s/title: 'Subnet Mask',/title: '子網路遮罩',/g
s/title: 'Gateway',/title: '閘道',/g
s/title: 'Connect Mode',/title: '連線模式',/g
s/options: \[\['1', 'Connect On Demand'\],\['0', 'Keep Alive'\]\],/options: \[\['1', '需要時連線'\],\['0', '永久連線'\]\],/g
s/title: 'Max Idle Time',/title: '逾時時間',/g
s/>(minutes)</>(分)</g
s/>(seconds)</>(秒)</g
s/title: 'Check Interval',/title: '重連時間',/g
s/title: 'MTU',/title: '最大傳輸單位 MTU',/g
s/options: \[\['0', 'Default'\],\['1','Manual'\]\],/options: \[\['0', '預設'\],\['1','手動'\]\],/g
s/>LAN</>區域網路(LAN)設定</g
s/title: 'Router IP Address',/title: '路由器 IP 位址',/g
s/title: 'Default Gateway',/title: '預設閘道',/g
s/title: 'Static DNS',/title: 'DNS 伺服器',/g
s/title: 'DHCP Server',/title: 'DHCP 伺服器',/g
s/title: 'Start',/title: '啟始位址',/g
s/title: 'End',/title: '結束位址',/g
s/title: 'IP Address Range',/title: 'IP 位址範圍',/g
s/title: 'Lease Time',/title: '租約時間',/g
s/title: 'WINS',/title: 'WINS',/g
s/>Wireless</>Wireless 設定</g
s/title: 'Enable Wireless',/title: '開啟無線上網',/g
s/options: \[\['0','Link With...'\],\['1','Automatic'\]\],/options: \[\['0','Link With...'\],\['1','Automatic'\]\],/g
s/title: 'MAC Address',/title: 'MAC 位址',/g
s/title: 'Wireless Mode',/title: '無線模式',/g
s/options: \[\['ap', 'Access Point'\],\['apwds', 'Access Point + WDS'\],\['sta', 'Wireless Client'\],\['wet', 'Wireless Ethernet Bridge'\],\['wds', 'WDS'\]\],/options: \[\['ap', 'Access Point'\],\['apwds', 'Access Point + WDS'\],\['sta', 'Wireless Client'\],\['wet', 'Wireless Ethernet Bridge'\],\['wds', 'WDS'\]\],/g
s/title: 'B\/G Mode',/title: 'B\/G Mode',/g
s/options:\[\['mixed','Mixed'\],\['b-only','B Only'\],\['g-only','G Only'\]\] },/options:\[\['mixed','混合'\],\['b-only','僅802.11b'\],\['g-only','僅802.11g'\]\] },/g
s/" value="Scan" onclick="/" value="掃瞄" onclick="/g
s/title: 'SSID',/title: 'SSID',/g
s/title: 'Broadcast',/title: 'SSID 廣播',/g
s/title: 'Channel',/title: '頻道',/g
s/title: 'Security',/title: '加密方式',/g
s/options: \[\['disabled','Disabled'\],\['wep','WEP'\],\['wpa_personal','WPA Personal'\],\['wpa_enterprise','WPA Enterprise'\],\['wpa2_personal','WPA2 Personal'\],\['wpa2_enterprise','WPA2 Enterprise'\],\['wpaX_personal','WPA \/ WPA2 Personal'\],\['wpaX_enterprise','WPA \/ WPA2 Enterprise'\],\['radius','Radius'\]\],/options: \[\['disabled','關閉'\],\['wep','WEP'\],\['wpa_personal','WPA Personal'\],\['wpa_enterprise','WPA Enterprise'\],\['wpa2_personal','WPA2 Personal'\],\['wpa2_enterprise','WPA2 Enterprise'\],\['wpaX_personal','WPA \/ WPA2 Personal'\],\['wpaX_enterprise','WPA \/ WPA2 Enterprise'\],\['radius','Radius'\]\],/g
s/title: 'Encryption',/title: '編碼方式',/g
s/options: \[\['tkip','TKIP'\],\['aes','AES'\],\['tkip+aes','TKIP \/ AES'\]\],/options: \[\['tkip','TKIP'\],\['aes','AES'\],\['tkip+aes','TKIP \/ AES'\]\],/g
s/title: 'Shared Key',/title: '公用金鑰',/g
s/title: 'Group Key Renewal',/title: '金鑰轉動間隔',/g
s/title: 'Radius Server',/title: 'Radius Server',/g
s/title: 'Radius Server',/title: 'Radius Server',/g
s/options: \[\['128','128-bits'\],\['64','64-bits'\]\],/options: \[\['128','128-bits'\],\['64','64-bits'\]\],/g
s/title: 'Encryption',/title: 'WEP加密',/g
s/title: 'Passphrase',/title: '通行碼',/g
s/" value="Generate"/" value="產生"/g
s/title: 'WDS',/title: 'WDS',/g
s/options: \[\['0','Link With...'\],\['1','Automatic \/ Lazy'\]\],/options: \[\['0','使用遠端MAC清單'\],\['1','允\許\匿名連接'\]\],/g
s/: 'MAC Address'/: '遠端MAC清單'/g

#
#	basic-static.asp
#
s/] Basic: Static DHCP</\] 一般設定：DHCP MAC 綑綁 IP</g
s/ferror.set(f\[0\], 'Duplicate MAC address', quiet);/ferror.set(f\[0\], '重覆的 MAC 位址', quiet);/g
s/ferror.set(f\[1\], 'Invalid IP address', quiet);/ferror.set(f\[1\], 'IP 位址錯誤', quiet);/g
s/ferror.set(f\[1\], 'Duplicate IP address', quiet);/ferror.set(f\[1\], '重覆的 IP 位址', quiet);/g
s/ferror.set(f\[2\], 'Invalid name. Only characters "A-Z 0-9 . - _" are allowed.', quiet);/ferror.set(f\[2\], '錯誤的字元組合. 僅接受. "A-Z 0-9 . - _" 等字元.', quiet);/g
s/ferror.set(f\[2\], 'Duplicate name.', quiet);/ferror.set(f\[2\], '主機名稱重覆', quiet);/g
s/s = 'Both MAC address and name fields must not be empty.';/s = 'Both MAC address and name fields must not be empty.';/g
s/\['MAC Address', 'IP Address', 'Hostname'\]/\['MAC 位址', 'IP 位址', '主機名稱'\]/g
s/>Static DHCP</>DHCP MAC 綑綁 IP</g

#
#	basic-time.asp
#
s/\] Basic: Time</\] 一般設定：時間設定</g
s/\['custom', 'Custom...'\],/\['custom', '自定'\],/g
s/\['', 'Default'\],/\['', '預設'\],/g
s/\['africa', 'Africa'\],/\['africa', '非洲'\],/g
s/\['asia', 'Asia'\],/\['asia', '亞洲'\],/g
s/\['europe', 'Europe'\],/\['europe', '歐洲'\],/g
s/\['oceania', 'Oceania'\],/\['oceania', '大洋洲'\],/g
s/\['north-america', 'North America'\],/\['north-america', '北美洲'\],/g
s/\['south-america', 'South America'\],/\['south-america', '南美洲'\],/g
s/\['us', 'US'\]/\['us', '美國'\]/g
s//\['custom', 'Custom'\],/g
s/>Time</>系統時間</g
s/title: 'Router Time',/title: '現在時間',/g
s/title: 'Time Zone',/title: '時區',/g
s/ferror.set('_f_ntp_1', 'At least one NTP server is required', quiet);/ferror.set('_f_ntp_1', '至少需要一台 NTP 伺服器', quiet);/g
s/\['custom','Custom...'\],/\['custom','自訂時區'\],/g
s/\['UTC12','UTC-12:00 Kwajalein'\],/\['UTC12','UTC-12:00 太平洋\/誇賈林島'\],/g
s/\['UTC11','UTC-11:00 Midway Island, Samoa'\],/\['UTC11','UTC-11:00 中途島, 美屬薩摩亞'\],/g
s/\['UTC10','UTC-10:00 Hawaii'\],/\['UTC10','UTC-10:00 夏威夷'\],/g
s/\['NAST9NADT,M3.2.0\/2,M11.1.0\/2','UTC-09:00 Alaska'\],/\['NAST9NADT,M3.2.0\/2,M11.1.0\/2','UTC-09:00 阿拉斯加'\],/g
s/\['PST8PDT,M3.2.0\/2,M11.1.0\/2','UTC-08:00 Pacific Time'\],/\['PST8PDT,M3.2.0\/2,M11.1.0\/2','UTC-08:00 美國太平洋標準時間'\],/g
s/\['UTC7','UTC-07:00 Arizona'\],/\['UTC7','UTC-07:00 亞利桑那'\],/g
s/\['MST7MDT,M3.2.0\/2,M11.1.0\/2','UTC-07:00 Mountain Time'\],/\['MST7MDT,M3.2.0\/2,M11.1.0\/2','UTC-07:00 美國西部山脈時間'\],/g
s/\['UTC6','UTC-06:00 Mexico'\],/\['UTC6','UTC-06:00 墨西哥'\],/g
s/\['CST6CDT,M3.2.0\/2,M11.1.0\/2','UTC-06:00 Central Time'\],/\['CST6CDT,M3.2.0\/2,M11.1.0\/2','UTC-06:00 美國中部標準時間'\],/g
s/\['UTC5','UTC-05:00 Colombia, Panama'\],/\['UTC5','UTC-05:00 哥倫比亞,巴拿馬'\],/g
s/\['EST5EDT,M3.2.0\/2,M11.1.0\/2','UTC-05:00 Eastern Time'\],/\['EST5EDT,M3.2.0\/2,M11.1.0\/2','UTC-05:00 美國東部標準時間'\],/g
s/\['UTC4','UTC-04:00 Bolivia, Venezuela'\],/\['UTC4','UTC-04:00 玻利維亞,委內瑞拉'\],/g
s/\['VET4:30','UTC-04:30 Venezuela'\],/\['VET4:30','UTC-04:30 委內瑞拉'\],/g
s/\['BOT4','UTC-04:00 Bolivia'\],/\['BOT4','UTC-04:00 玻利維亞'\],/g
s/\['AST4ADT,M3.2.0\/2,M11.1.0\/2','UTC-04:00 Atlantic Time'\],/\['AST4ADT,M3.2.0\/2,M11.1.0\/2','UTC-04:00 大西洋時間'\],/g
s/\['BRWST4BRWDT,M10.3.0\/0,M2.5.0\/0','UTC-04:00 Brazil West'\],/\['BRWST4BRWDT,M10.3.0\/0,M2.5.0\/0','UTC-04:00 巴西西部'\],/g
s/\['NST3:30NDT,M3.2.0\/0:01,M11.1.0\/0:01','UTC-03:30 Newfoundland'\],/\['NST3:30NDT,M3.2.0\/0:01,M11.1.0\/0:01','UTC-03:30 加拿大紐芬蘭'\],/g
s/\['WGST3WGDT,M3.5.6\/22,M10.5.6\/23','UTC-03:00 Greenland'\],/\['WGST3WGDT,M3.5.6\/22,M10.5.6\/23','UTC-03:00 格陵蘭'\],/g
s/\['BRST3BRDT,M10.3.0\/0,M2.5.0\/0','UTC-03:00 Brazil East'\],/\['BRST3BRDT,M10.3.0\/0,M2.5.0\/0','UTC-03:00 巴西東部'\],/g
s/\['UTC3','UTC-03:00 Guyana'\],/\['UTC3','UTC-03:00 蓋\亞那'\],/g
s/\['UTC2','UTC-02:00 Mid-Atlantic'\],/\['UTC2','UTC-02:00 大西洋中部'\],/g
s/\['STD1DST,M3.5.0\/2,M10.5.0\/2','UTC-01:00 Azores'\],/\['STD1DST,M3.5.0\/2,M10.5.0\/2','UTC-01:00 大西洋\/亞速爾群島'\],/g
s/\['UTC0','UTC+00:00 Gambia, Liberia, Morocco'\],/\['UTC0','UTC+00:00 甘比亞, 賴比瑞亞, 摩洛哥'\],/g
s/\['GMT0BST,M3.5.0\/2,M10.5.0\/2','UTC+00:00 England'\],/\['GMT0BST,M3.5.0\/2,M10.5.0\/2','UTC+00:00 英國'\],/g
s/\['UTC-1','UTC+01:00 Tunisia'\],/\['UTC-1','UTC+01:00 突尼西亞'\],/g
s/\['STD-1DST,M3.5.0\/2,M10.5.0\/2','UTC+01:00 France, Germany, Italy, Sweden'\],/\['STD-1DST,M3.5.0\/2,M10.5.0\/2','UTC+01:00 法國,德國,義大利,瑞典'\],/g
s/\['CET-1CEST,M3.5.0\/2,M10.5.0\/3','UTC+01:00 France, Germany, Italy, Poland, Sweden'\],/\['CET-1CEST,M3.5.0\/2,M10.5.0\/3','UTC+01:00 法國,德國,義大利,波蘭,瑞典'\],/g
s/\['EET-2EEST-3,M3.5.0\/3,M10.5.0\/4','UTC+02:00 Finland'\],/\['EET-2EEST-3,M3.5.0\/3,M10.5.0\/4','UTC+02:00 芬蘭'\],/g
s/\['UTC-2','UTC+02:00 South Africa'\],/\['UTC-2','UTC+02:00 南非'],/g
s/\['STD-2DST,M3.5.0\/2,M10.5.0\/2','UTC+02:00 Greece, Ukraine, Romania, Turkey'\],/\['STD-2DST,M3.5.0\/2,M10.5.0\/2','UTC+02:00 希臘,烏克蘭,羅馬尼亞,土耳其'\],/g
s/\['STD-2DST,M3.5.0\/2,M10.5.0\/2','UTC+02:00 Greece, Ukraine, Romania, Turkey, Latvia'\],/\['STD-2DST,M3.5.0\/2,M10.5.0\/2','UTC+02:00 希臘,烏克蘭,羅馬尼亞,土耳其,拉脫維亞'\],/g
s/\['UTC-3','UTC+03:00 Iraq, Jordan, Kuwait'\],/\['UTC-3','UTC+03:00 伊拉克,約旦,科威特'\],/g
s/\['EET-2EEST-3,M3.5.0\/3,M10.5.0\/4','UTC+03:00 Finland'\],/\['EET-2EEST-3,M3.5.0\/3,M10.5.0\/4','UTC+03:00 芬蘭'\],/g
s/\['MSK-3MSD,M3.5.0\/3,M10.5.0\/4','UTC+03:00 Moscow'\],/\['MSK-3MSD,M3.5.0\/3,M10.5.0\/4','UTC+03:00 莫斯科'\],/g
s/\['UTC-4','UTC+04:00 Armenia'\],/\['UTC-4','UTC+04:00 亞美尼亞'\],/g
s/\['UTC-5','UTC+05:00 Pakistan, Russia'\],/\['UTC-5','UTC+05:00 巴基斯坦, 俄羅斯'\],/g
s/\['UTC-5:30','UTC+05:30 Bombay, Calcutta, Madras, New Delhi'\],/\['UTC-5:30','UTC+05:30 孟買,加爾各答,千奈,新德里'\],/g
s/\['UTC-6','UTC+06:00 Bangladesh, Russia'\],/\['UTC-6','UTC+06:00 孟加拉,俄國'\],/g
s/\['UTC-7','UTC+07:00 Thailand, Russia'\],/\['UTC-7','UTC+07:00 泰國, 俄羅斯'\],/g
s/\['UTC-8','UTC+08:00 China, Hong Kong, Western Australia, Singapore, Taiwan'\],/\['UTC-8','UTC+08:00 臺灣, 中國, 香港, 澳洲西部, 新加坡'\],/g
s/\['UTC-9','UTC+09:00 Japan, Korea'\],/\['UTC-9','UTC+09:00 日本, 韓國'\],/g
s/\['CST-9:30CST,M10.5.0\/2,M4.1.0\/3', 'UTC+09:30 South Australia'\],/\['CST-9:30CST,M10.5.0\/2,M4.1.0\/3', 'UTC+09:30 南澳洲'\],/g
s/\['ACST-9:30ACDT,M10.1.0\/2,M4.1.0\/3', 'UTC+09:30 South Australia'\],/\['ACST-9:30ACDT,M10.1.0\/2,M4.1.0\/3', 'UTC+09:30 南澳洲'\],/g
s/\['UTC-10','UTC+10:00 Guam, Russia'\],/\['UTC-10','UTC+10:00 關島, 俄羅斯'\],/g
s/\['STD-10DST,M10.5.0\/2,M3.5.0\/2','UTC+10:00 Australia'\],/\['STD-10DST,M10.5.0\/2,M3.5.0\/2','UTC+10:00 澳洲'\],/g
s/\['UTC-11','UTC+11:00 Solomon Islands'\],/\['UTC-11','UTC+11:00 所羅門群島'\],/g
s/\['UTC-12','UTC+12:00 Fiji'\],/\['UTC-12','UTC+12:00 斐濟'\],/g
s/\['NZST-12NZDT,M9.5.0\/2,M4.1.0\/3','UTC+12:00 New Zealand'\]/\['NZST-12NZDT,M9.5.0\/2,M4.1.0\/3','UTC+12:00 紐西蘭'\]/g
s/title: 'Auto Daylight Savings Time',/title: '日光節約時間(夏令)',/g
s/title: 'Custom TZ String',/title: '自訂 時區 字串',/g
s/title: 'Auto Update Time',/title: '時間同步',/g
s/options: \[\[-1,'Never'\],\[0,'Only at startup'\],\[1,'Every hour'\],\[2,'Every 2 hours'\],\[4,'Every 4 hours'\],\[6,'Every 6 hours'\],\[8,'Every 8 hours'\],\[12,'Every 12 hours'\],\[24,'Every 24 hours'\]\],/options: \[\[-1,'不同步'\],\[0,'開啟時更新'\],\[1,'１小時'\],\[2,'２小時'\],\[4,'４小時'\],\[6,'６小時'\],\[8,'８小時'\],\[12,'１２小時'\],\[24,'每天一次'\]\],/g
s/title: 'Trigger Connect On Demand',/title: '需要時同步',/g
s/title: 'NTP Time Server',/title: 'NTP 伺服器',/g
s/^The following NTP servers have been automatically blocked by request from the server:$/下列的 NTP 伺服器已被伺服端自動封鎖:/g
s/<input type='button' value='Clear' onclick='save(1)'>/<input type='button' value='清除' onclick='save(1)'>/g

#
#	basic-wfilter.asp
#
s/\] Basic: Wireless Filter</\] 一般設定：無線 - 存取控制</g
s/\['MAC Address', 'Description'\]/\['MAC 位址', '註解'\]/g
s/>Wireless Client Filter</>無線 - 存取控制</g
s/>Disable filter</> 關閉</g
s/>Permit only the following clients</> 允\許\下列的 MAC 連線</g
s/>Block the following clients</> 拒絕\下列的 MAC 連線</g
s/\] Bandwidth: Last 24 Hours</\] 頻寬監控：過去24小時</g
s/= this.running ? 'Stop' : 'Start';/= this.running ? '關閉' : '開啟';/g
s/>(2 minute interval)</>[繪圖視窗 (每格一小時), 每 2 分鐘取樣\]</g
s/>(2 minute interval)</>(2分鐘更新)</g
s/Hours:\&nbsp;/單位(小時):\&nbsp;/g
s/Avg:\&nbsp;/平均:\&nbsp;/g
s/>Off</>Off</g
s/Max:\&nbsp;/最大值統計:\&nbsp;/g
s/>Uniform</>取最高值</g
s/Display:\&nbsp;/繪圖:\&nbsp;/g
s/>Per IF</>依介面顯示</g
s/>Solid</>填滿</g
s/>Line</>實線</g
s/Color:\&nbsp;/顏色:\&nbsp;/g
s/>\[reverse\]</>\[顏色反向\]</g
s/>Configure</>設定</g
s/>RX</>接收</g
s/>Avg</>平均值</g
s/>Peak</>最大值</g
s/>Total</>合計</g
s/>TX</>傳送</g
s/>Avg</>平均值</g
s/>Peak</>最大值</g
s/>Total</>合計</g
s/>Bandwidth monitoring disabled.</>頻寬監控已關閉.</g
s/>Enable \&raquo;</>開啟 \&raquo;</g
s/>The rstats program is not responding or is busy. Try reloading after a few seconds.</>程式繁忙或沒有回應. 請稍候再試.</g
s/' value='Delete All'/' value='全部刪除'/g
s/' value='Refresh'/' value='重新整理'/g
s/\] Bandwidth: Daily</\] 頻寬監控：每日流量</g
s/makeRow('header', 'Date', 'Download', 'Upload', 'Total');/makeRow('header', '日期', '\下載', '上傳', '合計');/g
s/makeRow('header', 'Date', 'Download', 'Upload', 'Total') +/makeRow('header', '日期', '\下載', '上傳', '合計') +/g
s/makeRow('footer', 'Total',/makeRow('footer', '合計',/g
s/), months\[mo\] + ' ' + da + ', ' + yr,/), yr + ' 年 ' + months\[mo\] + ' ' + da + ' 日',/g
s/>WAN Bandwidth - Daily</>WAN 每日流量</g
s/>yyyy-mm-dd</>年-月-日</g
s/>mm-dd-yyyy</>月-日-年</g
s/>mmm dd, yyyy</>月 日, 年</g
s/>dd.mm.yyyy</>日.月.年</g
s/>Scale</>單位切換</g
s/\] Bandwidth: Monthly</\] 頻寬監控：每月流量</g
s/, months\[mo\] + ' ' + yr,/, yr + ' 年 ' + months\[mo\],/g
s/>WAN Bandwidth - Monthly</>WAN 每月流量</g
s/>Date<\/b> <select onchange='changeDate(/>日期格式<\/b> <select onchange='changeDate(/g
s/>yyyy-mm</>年-月</g
s/>mm-yyyy</>月-年</g
s/>mmm yyyy</>月 年</g
s/>mm.yyyy</>月.年</g
s/>Scale</>單位切換</g
s/\] Bandwidth: Real-Time</\] 頻寬監控：即時流量</g
s/>(10 minute window, 2 second interval)</>\[繪圖視窗 (每格二分鐘), 每 2 秒鐘取樣\]</g
s/>Warning: 10 second timeout, restarting...\&nbsp;</>警告: 逾時 10 秒鐘, 重新繪圖中...\&nbsp;</g
s/\] Bandwidth: Weekly</\] 頻寬監控：每週流量</g
s/grid += '<b>' + dbeg + ' to ' + dend + '<\/b>' +/grid += '<b>' + dbeg + ' 至 ' + dend + '<\/b>' +/g
s/ds = months\[mo\] + ' ' + da + ', ' + yr + ' </ds = yr + ' 年 ' + months\[mo\] + ' ' + da + ' 日 </g
s/), weeks\[wk\] + ' <small>' + (mo + 1) + '-' + da + '</), (mo + 1) + ' 月 ' + da + ' 日 <small>' + weeks\[wk\] + '</g
s/>WAN Bandwidth - Weekly</>WAN 每週流量</g
s/>Show</>顯示方式</g
s/>Summary</>總和</g
s/>Full</>列表</g
s/>Start</>每週第一天</g
s/>Scale</>單位</g
s/>Sun</>日</g
s/>Mon</>一</g
s/>Tue</>二</g
s/>Wed</>三</g
s/>Thu</>四</g
s/>Fri</>五</g
s/>Sat</>六</g
s/>Scale</>單位切換</g
s/>Cookies Cleared</>Cookies 完全清除</g
s/'<li>no cookie found'/'<li>無 cookie'/g

#
#	forward-basic.asp
#
s/\] Forwarding: Basic</\] 通訊埠轉發: 一般設定</g
s/\['On', 'Proto', 'Src Address', 'Ext Ports', 'Int Port', 'Int Address', 'Description'\]/\['開啟', '協定', '來源位址', '通訊埠範圍', '本地通訊埠', '本地IP', '說明'\]/g
s/>Port Forwarding</>通訊埠轉送清單</g
s/>Src Address</>來源位址</g
s/>(optional)</>(非必填)</g
s/'Automatically retrying in ' + min + ' minutes)</+ min + '分鐘後！ 自動重試</g
s/> - Forward only if from this address. Ex: "/> - 轉發至設定的 IP範圍. 例: "/g
s/>Ext Ports</>通訊埠範圍</g
s/> - The ports to be forwarded, as seen from the WAN. Ex: "/> - 從 WAN對應進來的埠. 例: "/g
s/>Int Port</>本地通訊埠</g
s/> - The destination port inside the LAN. If blank, the destination port/> -  .若未填上 本地埠, 便自動對應 <i>通訊埠範圍<\/i>./g
s/is the same as <i>Ext Ports<\/i>//g
s/is the same as <i>通訊埠範圍<\/i>. Only one port per entry is supported when forwarding to a different internal/當本地埠與通訊埠範圍不同時,才須填入 本地埠./g
s/>Int Address</>本地IP</g
s/> - The destination address inside the LAN./> - 對應區域網路內的IP位址./g
s/^port.//g

#
#	forward-dmz.asp
#
s/\] Forwarding: DMZ</\] 通訊埠轉發: 虛擬非軍事區(DMZ)</g
s/>DMZ</>虛擬非軍事區(DMZ)</g
s/title: 'Enable DMZ',/title: '開啟 DMZ',/g
s/title: 'Destination Address',/title: '本地IP',/g
s/title: 'Source Address<br>Restriction',/title: '來源位址<br>指定範圍',/g
s/>(optional; ex: "/>(非必填; 例: "/g

#
#	forward-triggered.asp
#
s/\] Forwarding: Triggered</\] 通訊埠轉發： 觸發式轉發</g
s/\['On', 'Protocol', 'Trigger Ports', 'Forwarded Ports', 'Description'\]/\['開啟', '協定', '觸發通訊埠', '通訊埠轉發', '說明'\]/g
s/>Triggered Port Forwarding</>觸發式通訊埠轉發</g
s/<li>Use "-" to specify a range of ports (200-300)./<li>使用 "-" 指定通訊埠範圍 (200-300)./g
s/<li>Trigger Ports are the initial LAN to WAN "trigger"./<li>一旦偵測到./g
s/<li>Forwarded Ports are the WAN to LAN ports that are opened if the "trigger" is activated./<li>觸發程式通訊埠，送往指定內傳通訊埠號的上傳封包便會轉向您的電腦.<li>例: 巴哈姆特的 BBS 會使用 Port 113 做驗證.<br>在本例中, 連往 BBS 所用的 Port 為 23, 接收驗證的 Port 為 113, 所使用的通訊協定皆為 TCP.<br>所以我們要加入一條規則, 在 \[協定\] 中選則 \[TCP\]<br>\[觸發通訊埠\] 填入 \[23\]<br>\[轉送到通訊埠\] 填入 \[113\]<br>最後記得要按 \[新增\] 與 \[儲存\] 鈕<br>/g
s/<li>These ports are automatically closed after a few minutes of inactivity./<li>開啟的通訊埠若未使用,幾分鐘之後會自動關閉./g

#
#	forward-upnp.asp
#
s/\] Forwarding: UPnP</\] 通訊埠轉發： UPnP</g
s/(!confirm('Delete ' +/(!confirm('刪除 ' +/g
s/\['External', 'Internal', 'Internal Address', 'Protocol', 'Description'\]/\['外部通訊埠', '本地通訊埠', '本地IP', '協定', '說明'\]/g
s/.title = 'Click to delete';/.title = '點選刪除';/g
s/(!confirm('Delete all entries?')/(!confirm('全部刪除 ?')/g
s/>UPnP Forwarded Ports</>UPnP 清單</g
s/' value='Delete All'/' value='Delete All'/g
s/>Settings</>設定</g
s/title: 'Enable UPnP',/title: '開啟 UPnP',/g
s/title: 'Show In My Network Places',/title: '顯示在 [網路上的芳鄰] 中',/g



s/>Logout</>登出</g
s/>Select cancel when prompted for a username\/password./>清除此連線 帳號\/密碼./g
s/\] Measuring Noise...</\] 測量背景雜訊...</g
s/>Measuring radio noise floor...</>測量背景雜訊準位...</g
s/Wireless access has been temporarily disabled for </無線連線暫時斷訊 </g
s/>15 seconds</>15 秒</g

#
#	qos-classify.asp
#
s/\] QoS: Classification</\] QoS: 分等機制</g
s/\[0,'IPP2P (disabled)'\],\[0xFFF,'All IPP2P filters'\],\[1,'AppleJuice'\],\[2,'Ares'\],\[4,'BitTorrent'\],\[8,'Direct Connect'\],/\[0,'IPP2P (disabled)'\],\[0xFFF,'All IPP2P filters'\],\[1,'AppleJuice'\],\[2,'Ares'\],\[4,'BitTorrent'\],\[8,'Direct Connect'\],/g
s/\[16,'eDonkey'\],\[32,'Gnutella'\],\[64,'Kazaa'\],\[128,'Mute'\],\[256,'SoulSeek'\],\[512,'Waste'\],\[1024,'WinMX'\],\[2048,'XDCC'\]/\[16,'eDonkey'\],\[32,'Gnutella'\],\[64,'Kazaa'\],\[128,'Mute'\],\[256,'SoulSeek'\],\[512,'Waste'\],\[1024,'WinMX'\],\[2048,'XDCC'\]/g
s/options: \[\[0,'Any Address'\],\[1,'Dst IP'\],\[2,'Src IP'\],\[3,'Src MAC'\]\],/options: \[\[0,'Any Address'\],\[1,'Dst IP'\],\[2,'Src IP'\],\[3,'Src MAC'\]\],/g
s/>KB Transferred</>KB 已傳送</g
s/ferror.set(f\[7\], 'Invalid range', quiet);/ferror.set(f\[7\], '錯誤的範圍', quiet);/g
s/\['Match Rule', 'Class', 'Description'\]/\['規則', '等級', '註解'\]/g
s/>Outbound Direction</>上傳管理（對外）</g
s/>QoS disabled.</>頻寬管理QoS 未開啟.</g

#
#	qos-classify.asp
#
s/\] QoS: View Details</\] QoS: 連線詳細內容</g
s/\['Unclassified', 'Highest', 'High', 'Medium', 'Low', 'Lowest', 'Class A','Class B','Class C','Class D','Class E'\];/\['未分等', '最高等', '高等', '中等', '低等', '最低等', 'Ａ等','Ｂ等','Ｃ等','Ｄ等','Ｅ等'\];/g
s/\['Proto', 'Source', 'S Port', 'Destination', 'D Port', 'Class'\]/\['協定', '來源', '來源埠', '目的地', '目的埠', '類型'\]/g
s/>View Details</>詳細內容</g
s/.innerHTML = 'View Details: '/.innerHTML = '詳細內容: '/g
s/> Automatically Resolve Addresses/> 自動解析IP/g
s/>Loading...</>載入中...</g

#
#	qos-graphs.asp
#
s/\] QoS: View Graphs</\] 頻寬管理 QoS:圖形分析</g
s/var abc = \['Unclassified', 'Highest', 'High', 'Medium', 'Low', 'Lowest', 'Class A', 'Class B', 'Class C', 'Class D', 'Class E'\];/var abc = \['未分等', '最高等', '高等', '中等', '低等', '最低等', 'Ａ等', 'Ｂ等', 'Ｃ等', 'Ｄ等', 'Ｅ等'\];/g
s/var class1 = \[\[-1,'Disabled'\]\];/var class1 = \[\[-1,'關閉'\]\];/g
s/var abc = \['Highest', 'High', 'Medium', 'Low', 'Lowest', 'A','B','C','D','E'\];/var abc = \['最高等', '高等', '中等', '低等', '最低等', 'A等','B等','C等','D等','E等'\];/g
s/>Connections Distribution</>連接分佈圖表</g
s/>Bandwidth Distribution (Outbound)</>頻寬分佈圖表 (上傳)</g
s/] Rebooting...</] 重開機...</g
s/e.value = 'Continue';/e.value = '繼續';/g
s/Please wait while the router reboots... \&nbsp;/重新啟動中！  請稍候... \&nbsp;/g
s/\] Restoring Defaults...</\]恢復TOMATO預定值...</g
s/Please wait while the defaults are restored... \&nbsp;/重開機中！   請稍後... \&nbsp;/g
s/>The router will reset its address back to 192.168.1.1. You may need to renew your computer's DHCP or reboot your computer before continuing.</>路由器 IP 更改為 192.168.1.1. 請更新電腦 DHCP 取得的 IP (ipconfig \/release \/ ipconfig \/renew) 或是重開機 .</g
s/\] Access Restrictions</\] 網路瀏覽限制</g
s/s += '<br>' + timeString(v\[1\]) + ' to ' + timeString(v\[2\]);/s += '<br>' + timeString(v\[1\]) + ' 至 ' + timeString(v\[2\]);/g
s/\['Description', 'Schedule'\]/\['註解', '排程'\]/g
s/" value="Add"/" value="新增"/g
s/= 'Everyday';/= '每天';/g
s/>Disabled</>關閉</g

#
#	restrict.asp
#
s/>Access Restriction Overview</>存取控制清單</g
s/\] Edit Access Restrictions</\] 網路瀏覽限制列表</g
s/(f, 'Invalid MAC address or IP address\/range', quiet);/(f, '錯誤的 MAC 或 IP 位址\/範圍', quiet);/g
s/\['MAC \/ IP Address'\]/\['MAC \/ IP 位址'\]/g
s/(!confirm('Delete this rule?'))/(!confirm('刪除規則?'))/g
s/(e, 'No MAC or IP address was specified', 0);/(e, 'MAC 錯誤 或 IP 位址 已被指定', 0);/g
s/alert('This rule is too big. Please reduce by ' + (data.length - 2048) + ' characters.');/alert('規則內容太大. 請減少 ' + (data.length - 2048) + ' 字元.');/g
s/>Access Restriction</>網路瀏覽限制</g
s/title: 'Enabled',/title: '開啟',/g
s/title: 'Description',/title: '註解',/g
s/title: 'Schedule',/title: '排程',/g
s/suffix: ' All Day \&nbsp; ',/suffix: ' 全天 \&nbsp; ',/g
s/suffix: ' Everyday',/suffix: ' 每天',/g
s/title: 'Time',/title: '時間',/g
s/title: 'Days',/title: '週幾',/g
s/suffix: ' Sun \&nbsp; ',/suffix: ' 日 \&nbsp; ',/g
s/suffix: ' Mon \&nbsp; ',/suffix: ' 一 \&nbsp; ',/g
s/suffix: ' Tue \&nbsp; ',/suffix: ' 二 \&nbsp; ',/g
s/suffix: ' Wed \&nbsp; ',/suffix: ' 三 \&nbsp; ',/g
s/suffix: ' Thu \&nbsp; ',/suffix: ' 四 \&nbsp; ',/g
s/suffix: ' Fri \&nbsp; ',/suffix: ' 五 \&nbsp; ',/g
s/suffix: ' Sat',/suffix: ' 六',/g
s/title: 'Type',/title: '型式',/g
s/options: \[\[0,'Normal Restriction'\],\[1,'Disable Wireless'\]\],/options: \[\[0,'一般限制'],[1,'關閉無線'\]\],/g
s/title: 'Applies To',/title: '適用於',/g
s/options: \[\[0,'All Computers \/ Devices'\],\[1,'The Following...'\],\[2,'All Except...'\]\],/options: \[\[0,'所有的電腦 \/ 裝置'\],\[1,'以\下列表...'\],\[2,'排除以\下列表...'\]\],/g
s/title: 'Blocked Resources',',/title: '限制',/g
s/suffix: ' Block All Internet Access',/suffix: ' 限制所有的網際網路連線',/g
s/title: 'IP<br>Port<br>Application',/title: '通訊埠 \/<br>應用程式',/g
s/title: 'HTTP Request',/title: 'HTTP Request',/g
s/title: 'HTTP Requested Files',/title: '限制 HTTP 要求的檔案',/g
s/' value='Delete...'/' value='刪除...'/g



s/\] Tomato</\] 蕃茄(Tomato)</g
s/>Changes Saved...</>已儲存...</g
s/type="button" value="Continue" onclick="/type="button" value="繼續" onclick="/g
s/>Please Wait...</>請稍後...</g
s/] Restarting...</] 正在重開機...</g
s/The router's new IP address is </路由器位址已變更至 </g
s/>. You may need to release then renew your computer's DHCP lease before continuing./>. 需釋放電腦IP,並重新取得IP./g
s/Please wait while the router restarts... \&nbsp;/請稍後！重開機中..... \&nbsp;/g
s/\] Shutting down...</\] 關機中...</g
s/'You can now unplug the router.';/'您現在可以拔除路由器.';/g
s/>Please wait while the router shuts down... </>請耐心等待! 直到路由器關機... </g

#
#	status-devices.asp
#
s/] Status: Device List</] 系統狀態：連線設備列表</g
s/a.innerHTML = 'deleting...';/a.innerHTML = '刪除中...';/g
s/)" title="Delete Lease" id="/)" title="刪除租約" id="/g
s/)" title="Add Static Lease">/)" title="加入至 MAC 綑綁 IP">/g
s/' title='OUI Search'>/' title='搜尋 OUI 碼'>/g
s/\['Interface', 'MAC Address', 'IP Address', 'Name', 'RSSI &nbsp; &nbsp; ', 'Quality', 'Lease &nbsp; &nbsp; ']/\['介面', 'MAC 位址', 'IP 位址', '名稱', 'RSSI \&nbsp; \&nbsp; ', '品質', '剩餘租約 \&nbsp; \&nbsp; '\]/g
s/id='b_wl_enable' value='Enable'/id='b_wl_enable' value='開啟'/g
s/id='b_wl_disable' value='Disable'/id='b_wl_disable' value='關閉'/g
s/>Device List</>連線設備列表</g
s/>Noise Floor:</>背景雜訊:</g
s/" value="Measure"/" value="測量"/g

#
#	status-log.asp
#
s/\] Status: Logs</\] 系統狀態：日誌紀錄檔</g
s/>Logs</>日誌紀錄檔</g
s/>View Last 25 Lines</>查看最後  25 行</g
s/>View Last 50 Lines</>查看最後  50 行</g
s/>View Last 100 Lines</>查看最後 100 行</g
s/>View All</>全部顯示</g
s/>Download Log File</>\下載日誌記錄檔</g
s/" value="Find"/" value="搜尋"/g
s/>Logging Configuration</>日誌記錄管理</g
s/>Internal logging disabled.</>內部日誌紀錄關閉.</g

#
#	status-overview.asp
#
s/\] Status: Overview</\] 系統狀態：系統狀態</g
s/'Enabled' : '<b>Disabled<\/b>'/'開啟' : '<b>關閉<\/b>'/g
s/'Enabled' : '<b>關閉<\/b>'/'開啟' : '<b>關閉<\/b>'/g
s/>System</>系統資訊</g
s/title: 'Name',/title: '名稱',/g
s/title: 'Model',/title: '機型',/g
s/title: 'Time',/title: '時間',/g
s/title: 'Uptime',/title: '開機時間',/g
s/title: 'CPU Load <small>(1 \/ 5 \/ 15 mins)<\/small>',/title: 'CPU 負載 <small>(1 \/ 5 \/ 15 mins)<\/small>',/g
s/title: 'Total \/ Free Memory',/title: '總和\/剩餘 記憶體',/g
s/title: 'CPU Frequency',/title: 'CPU 頻\率',/g
s/>WAN</>廣域網路 (WAN)</g
s/title: 'Connection Type',/title: 'WAN 連線類型',/g
s/text: { 'dhcp':'DHCP', 'static':'Static IP', 'pppoe':'PPPoE', 'pptp':'PPTP', 'l2tp':'L2TP' }/text: { 'dhcp':'DHCP', 'static':'固定 IP', 'pppoe':'PPPoE', 'pptp':'PPTP', 'l2tp':'L2TP' }/g
s/title: 'IP Address',/title: 'WAN IP 位址',/g
s/title: 'Last WAN IP',/title: '前次的 WAN IP',/g
s/title: 'Subnet Mask',/title: '子網路遮罩',/g
s/title: 'Gateway',/title: '閘道',/g
s/title: 'DNS',/title: 'DNS 伺服器',/g
s/title: 'MTU',/title: '最大傳輸單位 MTU',/g
s/title: 'Status',/title: '連線狀態',/g
s/title: 'Connection Uptime',/title: '已連線時間',/g
s/title: 'Remaining Lease Time',/title: '剩餘租用時間',/g
s/onclick='dhcpc("renew")' value='Renew'/onclick='dhcpc("renew")' value='重新取得'/g
s/onclick='dhcpc("release")' value='Release'/onclick='dhcpc("release")' value='釋放'/g
s/' value='Connect'/' value='連線'/g
s/' value='Disconnect'/' value='斷線'/g
s/title: 'Router MAC Address',/title: '路由器 MAC 位址',/g
s/title: 'Router IP Address',/title: '路由器 IP 位址',/g
s/title: 'Subnet Mask',/title: '子網路遮罩',/g
s/title: 'Gateway',/title: '閘道',/g
s/title: 'DNS',/title: 'DNS 伺服器',/g
s/title: 'DHCP',/title: 'DHCP 伺服器',/g
s/title: 'B\/G Mode',/title: '無線網路模式',/g
s/title: 'Radio',/title: '無線電波',/g
s/title: 'SSID',/title: 'SSID',/g
s/title: 'Security',/title: '加密方式',/g
s/title: 'Channel',/title: '頻道',/g
s/title: 'RSSI',/title: 'RSSI',/g
s/title: 'Noise',/title: 'Noise',/g
s/title: 'Signal Quality',/title: 'Signal Quality',/g
s/onclick='wlenable(1)' id='b_wl_enable' value='Enable'/onclick='wlenable(1)' id='b_wl_enable' value='開啟'/g
s/onclick='wlenable(0)' id='b_wl_disable' value='Disable'/onclick='wlenable(0)' id='b_wl_disable' value='關閉'/g
s/'<b>Disabled<\/b>' : 'Enabled'/'<b>關閉<\/b>' : '開啟'/g
s/'<b>關閉<\/b>' : 'Enabled'/'<b>關閉<\/b>' : '開啟'/g

#
#	tools-ping.asp
#
s/\] Tools: Ping</\] 診斷工具： Ping</g
s/\['Seq', 'Address', 'RX Bytes', 'TTL', 'RTT (ms)', '+\/- (ms)'\]/\['序號', '位址', '接收位元組', '生存期限TTL', '回應時間RTT(ms)', '＋\/－(ms)'\]/g
s/stats = '   Packets: ' + RegExp.$1 + ' transmitted, ' + RegExp.$2 + ' received, ' + RegExp.$3 + ' lost<br>';/stats = '封包遺失\率: ' + RegExp.$1 + ' 發送, ' + RegExp.$2 + ' 接收, ' + RegExp.$3 + ' 遺失\率<br>';/g
s/stats = 'Round-Trip: ' + RegExp.$1 + ' min, ' + RegExp.$2 + ' avg, ' + RegExp.$3 + ' max (ms)<br>' + stats;/stats = '平均變化量: ' + RegExp.$1 + ' 最小, ' + RegExp.$2 + ' 平均, ' + RegExp.$3 + ' 最大 (ms)<br>' + stats;/g
s/title: 'Address',/title: '位址',/g
s/title: 'Ping Count',/title: 'Ping 的次數',/g
s/title: 'Packet Size',/title: '封包大小',/g
s/>(bytes)</>(位元組)</g
s/>Please wait... </>請稍後... </g

#
#	tools-survey.asp
#
s/\] Tools: Wireless Survey</\] 無線網路勘查</g
s/var dayOfWeek = \['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'\];/var dayOfWeek = \['週日','週一','週二','週三','週四','週五','週六'\];/g
s/>NEW (' + -m + 'm)</>新 (' + -m + 'm)</g
s/' added, '/' 個新增, '/g
s/' removed, ';/' 個移除, ';/g
s/' total.';/' 個AP可用.';/g
s/>Last updated: '/>更新於: '/g
s/\['Last Seen', 'SSID', 'BSSID', 'RSSI \&nbsp; \&nbsp; ', 'Noise \&nbsp; \&nbsp; ', 'Quality', 'Ch', 'Capabilities', 'Rates'\]/\['發現時間', '無線名稱 SSID', '無線 MAC 位址', 'RSSI \&nbsp; \&nbsp; ', '雜訊 \&nbsp; \&nbsp; ', '品質', 'Ch', 'Capabilities', '速\率'\]/g
s/>Wireless Site Survey</>無線網路勘查</g
s/'Auto Expire',/'自動停止',/g
s/'Auto Refresh',/'自動更新',/g
s/" value="Refresh"/" value="重新整理"/g
s/type='button' value='Refresh' onclick='/type='button' value='重新整理' onclick='/g
s/E('refreshb').value = running ? 'Stop' : 'Refresh';/E('refreshb').value = running ? '停止' : '重新整理';/g
s/>Warning: Wireless connections to this router may be disrupted while using this tool.</>請注意：使用此工具,無線用戶端連接到此路由器可\能會中斷.</g

#
#	tools-trace.asp
#
s/\] Tools: Trace</\] 診斷工具：路由追蹤</g
s/\['Hop', 'Address', 'Min (ms)', 'Max (ms)', 'Avg (ms)', '+\/- (ms)'\]/\['躍點', '位址', '最小 (ms)', '最大 (ms)', '平均 (ms)', '＋\/－ (ms)'\]/g
s/(e, 'Invalid address', quiet);/(e, '錯誤的位址', quiet);/g
s/>Traceroute</>路由追蹤</g
s/title: 'Address',/title: '位址',/g
s/" value="Trace" onclick="/" value="追蹤" onclick="/g
s/title: 'Maximum Hops',/title: '最大躍點數Hops',/g
s/title: 'Maximum Wait Time',/title: '最大等待時間',/g
s/>(seconds per hop)</>(每跳秒數)</g
s/>Please wait... </>請稍候... </g

#
#	tools-wol.asp
#
s/] Tools: WOL</] 診斷工具：網路喚醒 WOL</g
s/\['MAC Address', 'IP Address', 'Status', 'Name'\]/\['MAC 位址', 'IP 位址', '狀態', '名稱'\]/g
s/active = 'Active (In ARP)';/active = '使用中 (In ARP)';/g
s/'Click to wake up';/'點擊左鍵喚醒這台電腦';/g
s/, 'Active (In ARP)',/, '使用中 (In ARP)',/g
s/>Wake On LAN</>網路喚醒</g
s/title: 'MAC Address List',/title: '列表--MAC 位址',/g
s/' value='Wake Up'/' value='喚醒'/g

#
#	admin-upgrade.asp
#
s/\] Admin: Upgrade</\] 路由器管理設定:韌體更新</g
s/alert('Expecting a ".bin" or ".trx" file.');/alert('必須是 ".bin" or ".trx" 檔案格式。');/g
s/('Are you sure you want to upgrade using '/('確定要使用這個檔案更新 '/g
s/>Upgrade Firmware</>韌體更新</g
s/>Current Version:</>目前版本:</g
s/' value='Upgrade'/' value='升級'/g
s/Select the file to use:/選擇韌體:/g
s/Please wait while the firmware is uploaded \&amp; flashed.</更新中請耐心等待</g
s/>Warning:<\/b> Do not interrupt this browser or the router!</>請注意:<\/b> 請勿關閉瀏覽器或中斷電源!</g
s/>Free Memory:</>剩餘記憶體:</g
s/>(aprox. size that can be buffered completely in RAM)</>(剩餘記憶體空間必須大於韌體檔案)</g
s/(e, 'Expecting a URL -- http:\/\/... or https:\/\/...', quiet)/(e, '必須是 URL 路徑 -- http:\/\/... 或 https:\/\/...', quiet)/g
s/ferror.set(e, 'Invalid hash or URL', quiet)/ferror.set(e, '網址或 URL 路徑錯誤', quiet)/g
s/e.innerHTML = 'DDNS update is running. Please refresh after a few seconds.';/e.innerHTML = '稍待幾秒鐘後請重新整理!      DDNS 更新中.......';/g

#
#	qos-settings.asp
#
s/\] QoS: Basic Settings</\] 頻寬管理 QoS:一般設定</g
s/classNames = \['Highest', 'High', 'Medium', 'Low', 'Lowest', 'Class A', 'Class B', 'Class C', 'Class D', 'Class E'\];/classNames = \['最高等', '高等', '中等', '低等', '最低等', 'Ａ等', 'Ｂ等', 'Ｃ等', 'Ｄ等', 'Ｅ等'\];/g
s/>Basic Settings</>QoS 一般設定</g
s/title: 'Enable QoS',/title: '開啟頻寬管理QoS',/g
s/title: 'Prioritize small packets with these control flags',/title: '給予打標記封包優先權',/g
s/title: 'Prioritize ACK',/title: 'ACK 給予優先權',/g
s/title: 'Prioritize ICMP',/title: 'ICMP 給予優先權',/g
s/title: 'Re-classify all packets when changing settings',/title: '設定值改變時 自動更新 分等機制',/g
s/title: 'Default class',/title: '預設等級為',/g
s/title: 'Strict Rule Ordering',/title: '遵循 分等機制 ',/g
s/title: 'Reset Classification When Making Changes',/title: '設定值改變時 自動更新 分等機制',/g
s/title: 'Default Class',/title: '優先權預設為 (等級)',/g
s/>Outbound Rate \/ Limit</>上傳速\率 \/ 限制</g
s/title: 'Max Bandwidth',/title: '最大速\率',/g
s/>Inbound Limit</>\下載速\率 \/ 限制</g
s/>kbit\/s</>kbit\/s</g
s/\] Error</\] 錯誤</g
s/resmsg('Unknown error');/resmsg('未知的錯誤');/g
s/type='button' value='Back' onclick='/type='button' value='返回' onclick='/g