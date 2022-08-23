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
[${green}01${NC}]${color1} •${color3}$bd PANEL SSH & OVPN (${color2}menu-ssh${color3})
[${green}02${NC}]${color1} •${color3}$bd PANEL WIREGUARD (${color2}menu-wireguard${color3})
[${green}03${NC}]${color1} •${color3}$bd PANEL PPTP (${color2}menu-pptp${color3})
[${green}04${NC}]${color1} •${color3}$bd PANEL L2TP (${color2}menu-l2tp${color3})
[${green}05${NC}]${color1} •${color3}$bd PANEL VMESS & VLESS (${color2}menu-v2ray${color3})
[${green}06${NC}]${color1} •${color3}$bd PANEL SHADOWSOCKS R (${color2}menu-ssr${color3})
[${green}07${NC}]${color1} •${color3}$bd PANEL SHADOWSOCKS (${color2}menu-ss${color3})
[${green}08${NC}]${color1} •${color3}$bd PANEL TROJAN GO (${color2}menu-trojan-go${color3})
[${green}09${NC}]${color1} •${color3}$bd PANEL TROJAN GFW (${color2}menu-trojan-gfw${color3})
[${green}10${NC}]${color1} •${color3}$bd GANTI PORT ALL SERVICE (${color2}menu-port${color3})
[${green}11${NC}]${color1} •${color3}$bd CEK STATUS LAYANAN (${color2}running${color3})
[${green}12${NC}]${color1} •${color3}$bd MENU TOOLS SCRIPT (${color2}tools${color3})
[${green}13${NC}]${color1} •${color3}$bd MENU WEBMIN (${color2}webmin${color3})
[${green}14${NC}]${color1} •${color3}$bd INFO SCRIPT PREMIUM (${color2}info${color3})
 
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
