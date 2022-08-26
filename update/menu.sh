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
[01] SSH & OVPN
[02] XRAY VMESS
[03] XRAY TROJAN
[${green}00${NC}]${color1} •${color3}$bd Back to exit Menu \033[1;32m<\033[1;33m<\033[1;31m<\033[1;31m"
echo ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[41;1;39m                       ⇱ WAAN STORE ⇲                         \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e  ""
 read -p "  Select menu 1 - 14 :  " menu
echo -e   ""
case $menu in
1)
sshovpnmenu
;;
2)
wgmenu
;;
3)
pptpmenu
;;
4)
l2tpmenu
;;
5)
vmessmenu
;;
6)
ssrmenu
;;
7)
ssmenu
;;
8)
trgomenu
;;
9)
trmenu
;;
10)
changeport
;;
11)
running
;;
12)
setmenu
;;
13)
contohmenuinfo
;;
14)
info
;;
0 | 00)
menu
;;
*)
exit
;;
esac
