#!/bin/bash
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m'
yl='\e[32;1m'
bl='\e[36;1m'
gl='\e[32;1m'
rd='\e[31;1m'
mg='\e[0;95m'
blu='\e[34m'
op='\e[35m'
or='\033[1;33m'
bd='\e[1m'
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
clear

echo -e ""
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
DOMAIN=$(cat /etc/xray/domain)
MYIP=$(curl -s ipinfo.io/ip )
CITY=$(curl -s ipinfo.io/city )
up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
tram=$( free -m | awk 'NR==2 {print $2}' )
echo -e ""
echo -e "${GREEN} This script has been modified by WaanStore\033[0m${NC}"
echo -e "${GREEN} Good luck with our script\033[0m${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[41;1;39m                     ⇱ INFORMASI VPS ⇲                        \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e " ⭐ $bd  ISP Name         ${color1} •${color3}$bd $ISP"
echo -e " ⭐ $bd City              ${color1} •${color3}$bd $CITY"
echo -e " ⭐ $bd Total RAM         ${color1} •${color3}$bd $tram MB"
echo -e " ⭐ $bd IP VPS            ${color1} •${color3}$bd $MYIP"
echo -e " ⭐ $bd DOMAIN VPS        ${color1} •${color3}$bd $DOMAIN"
echo -e " ⭐ $bd Waktu Aktif       ${color1} •${color3}$bd $up"
echo -e " ⭐ $bd Client Name       ${color1} •${color3}$bd WAAN STORE"
echo -e " ⭐ $bd Expiry script     ${color1} •${color3}$bd LIFETIME"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[41;1;39m                     ⇱ MENU  OPTIONS ⇲                        \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "
[01] SSH & OVPN                [07] TOOLS SCRIPT
[02] V2RAY VMESS               [08] INFO AUTOSCRIPT
[03] TROJAN GFW                [09] RUNNING SERVICE
[04] TROJAN GO                 [10] GANTI PORT SERVICE
[05] SHADOWSOCK R              [11] INFO PORT SERVICE
[06] SHADOWSOCK                [12] FIX SSH WS SSL"
echo ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[41;1;39m                       ⇱ WAAN STORE ⇲                         \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e  ""
 read -p "  Select menu 1 - 12 :  " menu
echo -e   ""
case $menu in
1)
sshovpnmenu
;;
2)
vmessmenu
;;
3)
trmenu
;;
4)
trgomenu
;;
5)
ssrmenu
;;
6)
ssmenu
;;
7)
setmenu
;;
8)
about
;;
9)
running
;;
10)
changeport
;;
11)
info
;;
12)
sl-fix
;;
0 | 00)
menu
;;
*)
exit
;;
esac
