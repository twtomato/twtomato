<!DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.0//EN'>
<!--
 Tomato GUI
 Copyright (C) 2006-2007 Jonathan Zarate
 http://www.polarcloud.com/tomato/
 
 For use with Tomato Firmware only.
 No part of this file may be used without permission.
-->
<!--
 Edited by PsychoWood
 Tested on Tomato 1.06
-->
 
<html>
<head>
<script type="text/javascript"><% nvram("QoS,aa0,action_service,ag0,autofw_port0,block_loopback,block_wan,boardflags2,boardflags,boardnum,boardrev,boardtype,boot_ver,boot_wait,bootnv_ver,brau_state,btn_override,btn_reset,ccode,cctl,cifs1,cifs2,clkfreq,console_loglevel,ct_max,ct_tcp_timeout,ct_udp_timeout,ddnsx0,ddnsx0_cache,ddnsx1,ddnsx1_cache,debug_clkfix,debug_cprintf,debug_cprintf_file,debug_keepfiles,debug_nocommit,dhcp_domain,dhcp_lease,dhcp_num,dhcp_start,dhcpc_minpkt,dhcpd_dmdns,dhcpd_slt,dhcpd_static,dl_ram_addr,dmz_enable,dmz_ipaddr,dns_addget,dnsmasq_custom,dr_lan_rx,dr_lan_tx,dr_setting,dr_wan_rx,dr_wan_tx,env_path,eou_configured,eou_device_id,eou_private_key,eou_public_key,et0macaddr,et0mdcport,et0phyaddr,filter,filter_client0,filter_maclist,filter_macmode,gpio2,gpio3,gpio4,hb_server_domain,hb_server_ip,http_enable,http_lanport,http_passwd,http_username,http_wanport,https_enable,il0macaddr,jffs2_exec,jffs2_format,jffs2_on,jffs2_size,l2tp_get_ip,l2tp_server_ip,lan_dhcp,lan_domain,lan_gateway,lan_hwaddr,lan_hwnames,lan_ifname,lan_ifnames,lan_ipaddr,lan_lease,lan_netmask,lan_proto,lan_route,lan_stp,lan_wins,led_override,log_crond,log_file,log_in,log_limit,log_mark,log_out,log_remote,log_remoteip,log_remoteport,mac_wan,mac_wl,manual_boot_nv,mtu_enable,multicast_pass,nf_h323,nf_l7in,nf_pptp,nf_rtsp,nf_ttl,ntp_kiss,ntp_kiss_ignore,ntp_server,ntp_tdod,ntp_updates,opo,os_date,os_flash_addr,os_name,os_ram_addr,os_version,pa0b0,pa0b1,pa0b2,pa0itssit,pa0maxpwr,pmon_ver,port_flow_control_1,port_flow_control_2,port_flow_control_3,port_flow_control_4,port_priority_1,port_priority_2,port_priority_3,port_priority_4,port_rate_limit_1,port_rate_limit_2,port_rate_limit_3,port_rate_limit_4,portforward,ppp_ac,ppp_demand,ppp_get_ac,ppp_get_srv,ppp_idletime,ppp_keepalive,ppp_mru,ppp_mtu,ppp_passwd,ppp_redialperiod,ppp_service,ppp_static,ppp_static_ip,ppp_username,pppoe_ac,pppoe_demand,pppoe_idletime,pppoe_ifname0,pppoe_ifname,pppoe_keepalive,pppoe_passwd,pppoe_pid0,pppoe_service,pppoe_static,pppoe_static_ip,pppoe_username,pptp_get_ip,pptp_server_ip,qos_ack,qos_burst0,qos_burst1,qos_default,qos_enable,qos_ibw,qos_icmp,qos_inuse,qos_irates,qos_method,qos_obw,qos_orates,qos_orules,qos_reset,qos_sticky,remote_management,remote_mgt_https,restore_defaults,router_name,routes_static,routes_static_saved,rrule0,rruleN,rrules_activated,rrules_radio,rrulewp,rstats_colors,rstats_data,rstats_enable,rstats_exclude,rstats_offset,rstats_path,rstats_stime,scratch,script_brau,script_fire,script_init,script_shut,script_wanup,sdram_config,sdram_init,sdram_ncdl,sdram_refresh,security_mode2,security_mode,security_mode_last,ses_client_join,ses_count,ses_enable,ses_event,ses_led_assertlvl,ses_sw_btn_status,sesx_b0,sesx_b1,sesx_b2,sesx_b3,sesx_led,sesx_script,sromrev,sshd_authkeys,sshd_eas,sshd_hostkey,sshd_pass,sshd_port,sshd_remote,sshd_rport,t_cafree,t_feat,t_features,t_hidelr,t_model,t_model_name,t_model_x,t_noise,telnetd_eas,telnetd_port,tm_dst,tm_sel,tm_tz,trigforward,upnp_config,upnp_enable,upnp_max_age,upnp_mnp,upnp_ssdp_interval,vlan0hwname,vlan0ports,vlan1hwname,vlan1ports,wait_time,wan_dns,wan_domain,wan_gateway,wan_gateway_buf,wan_get_dns,wan_get_domain,wan_hostname,wan_hwaddr,wan_hwname,wan_iface,wan_ifname,wan_ifnames,wan_ipaddr,wan_ipaddr_buf,wan_lease,wan_mtu,wan_netmask,wan_primary,wan_proto,wan_run_mtu,wan_speed,wan_unit,wan_wins,watchdog,wds_enable,wds_save,web_css,web_favicon,web_svg,web_wl_filter,wk_mode,wl0_active_mac,wl0_afterburner,wl0_akm,wl0_antdiv,wl0_ap_isolate,wl0_auth,wl0_auth_mode,wl0_bcn,wl0_channel,wl0_closed,wl0_corerev,wl0_country,wl0_country_code,wl0_crypto,wl0_dtim,wl0_frag,wl0_frameburst,wl0_gmode,wl0_gmode_protection,wl0_hwaddr,wl0_ifname,wl0_infra,wl0_key1,wl0_key2,wl0_key3,wl0_key4,wl0_key,wl0_lazywds,wl0_mac_deny,wl0_mac_list,wl0_maclist,wl0_macmode,wl0_maxassoc,wl0_mode,wl0_mrate,wl0_net_mode,wl0_net_reauth,wl0_passphrase,wl0_phytype,wl0_phytypes,wl0_plcphdr,wl0_radio,wl0_radioids,wl0_radius_ipaddr,wl0_radius_key,wl0_radius_port,wl0_rate,wl0_rateset,wl0_rts,wl0_ssid,wl0_txant,wl0_txpwr,wl0_unit,wl0_wds,wl0_wds_timeout,wl0_wep,wl0_wep_bit,wl0_wep_buf,wl0_wep_gen,wl0_wep_last,wl0_wme,wl0_wme_ap_be,wl0_wme_ap_bk,wl0_wme_ap_vi,wl0_wme_ap_vo,wl0_wme_no_ack,wl0_wme_sta_be,wl0_wme_sta_bk,wl0_wme_sta_vi,wl0_wme_sta_vo,wl0_wpa_gtk_rekey,wl0_wpa_psk,wl0gpio2,wl0gpio3,wl0id,wl_active_mac,wl_afterburner,wl_akm,wl_antdiv,wl_ap_isolate,wl_auth,wl_auth_mode,wl_bcn,wl_channel,wl_closed,wl_corerev,wl_country,wl_country_code,wl_crypto,wl_dtim,wl_frag,wl_frameburst,wl_gmode,wl_gmode_protection,wl_hwaddr,wl_ifname,wl_infra,wl_key1,wl_key2,wl_key3,wl_key4,wl_key,wl_lazywds,wl_mac_deny,wl_mac_list,wl_maclist,wl_macmode,wl_maxassoc,wl_mode,wl_mrate,wl_net_mode,wl_net_reauth,wl_passphrase,wl_phytype,wl_phytypes,wl_plcphdr,wl_radio,wl_radioids,wl_radius_ipaddr,wl_radius_key,wl_radius_port,wl_rate,wl_rateset,wl_rts,wl_ssid,wl_txant,wl_txpwr,wl_unit,wl_wds,wl_wds_timeout,wl_wep,wl_wep_bit,wl_wep_buf,wl_wep_gen,wl_wep_last,wl_wme,wl_wme_ap_be,wl_wme_ap_bk,wl_wme_ap_vi,wl_wme_ap_vo,wl_wme_no_ack,wl_wme_sta_be,wl_wme_sta_bk,wl_wme_sta_vi,wl_wme_sta_vo,wl_wpa_gtk_rekey,wl_wpa_psk,wlx_n4n_sleep"); %> </script>
<script type="text/javascript">document.write('<base href="http://'+nvram.lan_ipaddr+'/">')</script>
<meta http-equiv='content-type' content='text/html;charset=utf-8'>
<meta name='robots' content='noindex,nofollow'>
<title>[<% ident(); %>] 診斷工具: NVRAM 內容</title>
<link rel='stylesheet' type='text/css' href='tomato.css'>
<script type="text/javascript">document.write('<link rel=\'stylesheet\' type=\'text/css\' href="'+nvram.web_css+'.css">')</script>
<script type='text/javascript' src='tomato.js'></script>
 
 
</head>
<body>
<form id='_fom' action='javascript:{}'>
<table id='container' cellspacing=0>
<tr><td colspan=2 id='header'>
 <div class='title'>蕃茄(Tomato)</div>
 <div class='version'>(繁體/正體)中文版 <% version(); %></div>
</td></tr>
<tr id='body'><td id='navi'><script type='text/javascript'>navi()</script></td>
<td id='content'>
<div id='ident'><% ident(); %></div>
 
 
 
<div class='section-title'>NVRam 內容</div>
<div class='section'>
<script type='text/javascript'>
 
String.prototype.wordWrap = function(m, b, c){
 var i, j, s, r = this.split("\n");
 if(m > 0) for(i in r){
 for(s = r[i], r[i] = ""; s.length > m;
 j = c ? m : (j = s.substr(0, m).match(/\S*$/)).input.length - j[0].length
 || m,
 r[i] += s.substr(0, j) + ((s = s.substr(j)).length ? b : "")
 );
 r[i] += s;
 }
 return r.join("\n");
};
 
for (x in nvram)
{
createFieldTable('', [{ title: x, text: '<tt>'+nvram[x].wordWrap(80,"\n",true).replace(/</g,"&lt;")+'</tt>' }]);
}
</script>
</div>
 
 
 
</td></tr>
<tr><td id='footer' colspan=2>&nbsp;</td></tr>
</table>
</form>
</body>
</html>
