#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                 SHADOWSOCKS R $wh"
echo -e "$y-------------------------------------------------------------$wh" | lolcat
echo -e "$yy 1$y. Create Account SSR"
echo -e "$yy 2$y. Delete Account SSR"
echo -e "$yy 3$y. Extending Account SSR Active Life"
echo -e "$yy 4$y. Show Other SSR Menu"
echo -e "$yy 5$y. Menu"
echo -e "$yy 6$y. Exit"
echo -e "$y-------------------------------------------------------------$wh" | lolcat
read -p "Select From Options [ 1 - 6 ] : " menu
echo -e ""
case $menu in
1)
addssr
;;
2)
delssr
;;
3)
renewssr
;;
4)
ssr
;;
5)
clear
menu
;;
6)
clear
exit
;;
*)
clear
menu
;;
esac
