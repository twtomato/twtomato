########################################
#		Tomato GUI
#		Copyright (C) 2006-2009 Jonathan Zarate
#		http://www.polarcloud.com/tomato/
#
#		For use with Tomato Firmware only.
#		No part of this file may be used without permission.	
#--------------------------------------------------------
#		Tomato GUI いゅて(zh_TW.UTF-8)
#		セ: 1.27
#		舦: GNU General Public License v2
#		http://code.google.com/p/twtomato/
#		http://digiland.tw/
########################################

:a $!N;s/text {\(\n\)	font: 11px monospace;/text {\1	font-family: "Trebuchet MS", "Lucida Sans", Arial, monospace;font-size: 0.9em;/
s/var week = \['Sun','Mon','Tue','Wed','Thu','Fri','Sat'\];/var week = \['琍戳ら','琍戳','琍戳','琍戳','琍戳','琍戳き','琍戳せ'\];/g
:a $!N;s/#info {\(\n\)	font: 11px sans-serif;/#info {\1	font-family: "Trebuchet MS", "Lucida Sans", Arial, sans-serif;font-size: 0.9em;/
:a $!N;s/#tip-text {\(\n\)	font: 11px sans-serif;/#tip-text {\1	font-family: "Trebuchet MS", "Lucida Sans", Arial, sans-serif;font-size: 0.9em;/
s/var abc = \['Unclassified', 'Highest', 'High', 'Medium', 'Low', 'Lowest', 'Class A', 'Class B', 'Class C', 'Class D', 'Class E'\];/var abc = \['ぃだ单', '程蔼单', '蔼单', 'い单', '单', '程单', '⑾单', '⑿单', '⒀单', '⒁单', '⒂单'\];/g
s/z += ' am';/z += ' と';/g
s/z += ' pm';/z += ' と';/g