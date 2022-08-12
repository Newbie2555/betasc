#!/bin/bash
# ==========================================
# ==========================================
# 
cd

cd /usr/bin

wget -O addgrpc "https://raw.githubusercontent.com/Newbie2555/betasc/main/xray/addgrpc.sh"
wget -O cekgrpc "https://raw.githubusercontent.com/Newbie2555/betasc/main/xray/cekgrpc.sh"
wget -O delgrpc "https://raw.githubusercontent.com/Newbie2555/betasc/main/xray/delgrpc.sh"
wget -O renewgrpc "https://raw.githubusercontent.com/Newbie2555/betasc/main/xray/renewgrpc.sh"


chmod +x addgrpc
chmod +x delgrpc
chmod +x cekgrpc
chmod +x renewgrpc

cd
