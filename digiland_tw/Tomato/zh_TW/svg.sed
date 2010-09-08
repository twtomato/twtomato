########################################
#		Tomato GUI
#		Copyright (C) 2006-2009 Jonathan Zarate
#		http://www.polarcloud.com/tomato/
#
#		For use with Tomato Firmware only.
#		No part of this file may be used without permission.	
#--------------------------------------------------------
#		Tomato GUI 中文化(zh_TW.UTF-8)
#		版本: 1.28
#		版權: GNU General Public License v2
#		http://code.google.com/p/twtomato/
#		http://digiland.tw/
########################################

#
#	bwm-graph.svg
#
:a $!N;s/text {\(\n\)	font: 11px monospace;/text {\1	font-family: "Trebuchet MS", "Lucida Sans", Arial, monospace;font-size: 0.9em;/
s/\['Sun','Mon','Tue','Wed','Thu','Fri','Sat']/['星期日','星期一','星期二','星期三','星期四','星期五','星期六']/g
s/' am'/' 上午'/g
s/' pm'/' 下午'/g

#
#	qos-graph.svg
#
:a $!N;s/#info {\(\n\)	font: 11px sans-serif;/#info {\1	font-family: "Trebuchet MS", "Lucida Sans", Arial, sans-serif;font-size: 0.9em;/
:a $!N;s/#tip-text {\(\n\)	font: 11px sans-serif;/#tip-text {\1	font-family: "Trebuchet MS", "Lucida Sans", Arial, sans-serif;font-size: 0.9em;/
s/\['Unclassified', 'Highest', 'High', 'Medium', 'Low', 'Lowest', 'Class A', 'Class B', 'Class C', 'Class D', 'Class E']/['未分等', '最高等級', '高等級', '中等級', '低等級', '最低等級', 'Ａ等級', 'Ｂ等級', 'Ｃ等級', 'Ｄ等級', 'Ｅ等級']/g