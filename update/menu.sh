#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
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
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
IPVPS=$(curl -s ipinfo.io/ip )
DOMAIN=$(cat /etc/xray/domain)
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
jam=$(date +"%T")
hari=$(date +"%A")
tnggl=$(date +"%d-%B-%Y")
 cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
 cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
 freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
 tram=$( free -m | awk 'NR==2 {print $2}' )
 swap=$( free -m | awk 'NR==4 {print $2}' )
 up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
echo -e ""
echo -e "$y════════════════════════════════════════════════════════════════$wh"
echo -e "⭐️ $bl  \e[36;1m• ISP Name          :\e[0m$bd $ISP"
echo -e "⭐️ $bl  \e[36;1m• City              :\e[0m$bd $CITY"
echo -e "⭐️ $bl  \e[36;1m• CPU Model         :\e[0m$bd$cname"
echo -e "⭐️ $bl  \e[36;1m• Number Of Cores   :\e[0m$bd $cores"
echo -e "⭐️ $gl  \e[36;1m• CPU Frequency     :\e[0m$bd$freq MHz"
echo -e "⭐️ $gl  \e[36;1m• Total RAM         :\e[0m$bd $tram MB"
echo -e "⭐️ $gl  \e[36;1m• Waktu             :\e[0m$bd $jam"
echo -e "⭐️ $mg  \e[36;1m• Hari              :\e[0m$bd $hari"
echo -e "⭐️ $mg  \e[36;1m• Tanggal           :\e[0m$bd $tnggl"
echo -e "⭐️ $mg  \e[36;1m• IP VPS            :\e[0m$bd $IPVPS"
echo -e "⭐️ $mg  \e[36;1m• Domain            :\e[0m$bd $DOMAIN"
echo -e "$y════════════════════════════════════════════════════════════════$wh"
echo -e "$y             PREMIUM AUTO SCRIPT BY WAAN STORE" | lolcat
echo -e "$y              Thank You For Using Our Autosc" | lolcat
echo -e "$y════════════════════════════════════════════════════════════════$wh"
echo -e
echo -e
echo -e "$y════════════════════════════════════════════════════════════════$wh"
echo -e "$y                         MENU ALL VPN $wh" | lolcat
echo -e "$y════════════════════════════════════════════════════════════════$wh"
echo -e "$yy 01$y.  Menu SSH & OpenVPN"
echo -e "$yy 02$y.  Menu V2ray Vmess"
echo -e "$yy 03$y.  Menu Xray Vless"
echo -e "$yy 04$y.  Menu Trojan GFW"
echo -e "$yy 05$y.  Menu Trojan GO WS"
echo -e "$yy 06$y.  Menu Xray GRPC"
echo -e "$yy 07$y.  Menu L2TP"
echo -e "$yy 08$y.  Menu Shadowsock"
echo -e "$yy 09$y.  Menu Shadowsock R"
echo -e "$yy 10$y.  Menu SSTP"
echo -e "$yy 11$y.  Menu Wireguard"
echo -e "$y════════════════════════════════════════════════════════════════$wh"
echo -e
echo -e "$y                         MENU SYSTEM$wh" | lolcat
echo -e "$y════════════════════════════════════════════════════════════════$wh"
echo -e "$yy 12$y.  Add Or Change Subdomain Host For VPS"
echo -e "$yy 13$y.  Change Port Of Some Service"
echo -e "$yy 14$y.  Autobackup Data VPS"
echo -e "$yy 15$y.  Backup Data VPS"
echo -e "$yy 16$y.  Restore Data VPS"
echo -e "$yy 17$y.  Webmin Menu"
echo -e "$yy 18$y.  Limit Bandwith Speed Server"
echo -e "$yy 19$y.  Check Usage of VPS Ram"
echo -e "$yy 20$y.  Reboot VPS"
echo -e "$yy 21$y.  Speedtest VPS"
echo -e "$yy 22$y.  Displaying System Information"
echo -e "$yy 23$y.  Info Script Auto Install"
echo -e "$yy 24$y.  Cek Status Service"
echo -e "$yy 25$y.  Fix SSH WS Jika Erorr"
echo -e "$yy 26$y.  Update Menu"
echo -e "$yy 27$y.  Cert Ulang"
echo -e "$y════════════════════════════════════════════════════════════════$wh"
read -p "Select Options[ 1 - 30 ] : " menu
case $menu in
1)
sshovpnmenu
;;
2)
vmessmenu
;;
3)
vlessmenu
;;
4)
trmenu
;;
5)
trgomenu
;;
6)
grpcmenu2
;;
7)
l2tpmenu
;;
8)
ssmenu
;;
9)
ssrmenu
;;
10)
sstpmenu
;;
11)
wgmenu
;;
12)
addhost
;;
13)
changeport
;;
14)
autobackup
;;
15)
backup
;;
16)
restore
;;
17)
wbmn
;;
18)
limitspeed
;;
19)
ram
;;
20)
reboot
;;
21)
speedtest
;;
22)
info
;;
23)
about
;;
24)
running
;;
25)
sl-fix
;;
26)
updatemenu
;;
27)
certv2ray
;;
*)
menu
;;
esac
