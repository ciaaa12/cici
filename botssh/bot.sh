#!/bin/bash
clear
#install
cp /media/cybervpn/var.txt /tmp
cp /root/cybervpn/var.txt /tmp
rm -rf cybervpn
apt update && apt upgrade -y
apt install python3 python3-pip -y
apt install sqlite3 -y
cd /media/
rm -rf cybervpn
wget https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/cybervpn.zip
unzip cybervpn.zip
cd cybervpn
rm var.txt
rm database.db
pip3 install -r requirements.txt
pip install pillow
pip install speedtest-cli
pip3 install aiohttp
pip3 install paramiko
#isi data
azi=$(cat /root/nsdomain)
domain=$(cat /etc/xray/domain)
clear
echo -e ""
echo -e ""
echo "INSTALL BOT CREATE SSH via TELEGRAM"
read -e -p "[*] Input Your Id Telegram :" admin
read -e -p "[*] Input Your bot Telegram :" token
read -e -p "[*] Input username Telegram :" user

cat > /media/cybervpn/var.txt << END
ADMIN="$admin"
BOT_TOKEN="$token"
DOMAIN="$domain"
DNS="$azi"
PUB="7fbd1f8aa0abfe15a7903e837f78aba39cf61d36f183bd604daa2fe4ef3b7b59"
OWN="$user"
SALDO="100000"
END


clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[44;97;1m                 CIAA STORE          \e[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[44;97;1m     CREATE BOT SUCCESFULLY        \e[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[96;1m Api Token     : $token"
echo -e "\e[96;1m ID Telegram   : $admin"
echo -e "\e[96;1m Domain vps    : $domain"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e "\e91;1m Wait in 4 second.....\e[0m"
sleep 4
clear

rm -f /usr/bin/nenen

echo -e '#!/bin/bash\ncd /media/\npython3 -m cybervpn' > /usr/bin/nenen


chmod 777 /usr/bin/nenen

cat > /etc/systemd/system/cybervpn.service << END
[Unit]
Description=Simple CyberVPN - @CyberVPN
After=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/nenen
Restart=always

[Install]
WantedBy=multi-user.target

END
systemctl daemon-reload
systemctl start cybervpn
systemctl enable cybervpn

clear
echo
echo
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[44;97;1m        DOWNLOAD ASSET BOT         \e[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""

wget -q -O /usr/bin/panelbot "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/panelbot.sh" && chmod +x /usr/bin/panelbot

wget -q -O /usr/bin/addnoobz "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/addnoobz.sh" && chmod +x /usr/bin/addnoobz

wget -q -O /media/log-install.txt "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/log-install.txt"

wget -q -O /usr/bin/add-vless "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/add-vless.sh" && chmod +x /usr/bin/add-vless

wget -q -O /usr/bin/addtr "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/addtr.sh" && chmod +x /usr/bin/addtr

wget -q -O /usr/bin/addws "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/addws.sh" && chmod +x /usr/bin/addws

wget -q -O /usr/bin/addss "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/addss.sh" && chmod +x /usr/bin/addss

wget -q -O /usr/bin/cek-ssh "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/cek-ssh.sh" && chmod +x /usr/bin/cek-ssh

wget -q -O /usr/bin/cek-ss "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/cek-ss.sh" && chmod +x /usr/bin/cek-ss

wget -q -O /usr/bin/cek-tr "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/cek-tr.sh" && chmod +x /usr/bin/cek-tr

wget -q -O /usr/bin/cek-vless "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/cek-vless.sh" && chmod +x /usr/bin/cek-vless

wget -q -O /usr/bin/cek-ws "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/cek-ws.sh" && chmod +x /usr/bin/cek-ws

wget -q -O /usr/bin/del-vless "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/del-vless.sh" && chmod +x /usr/bin/del-vless

wget -q -O /usr/bin/cek-noobz "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/cek-noobz.sh" && chmod +x /usr/bin/cek-noobz

wget -q -O /usr/bin/deltr "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/deltr.sh" && chmod +x /usr/bin/deltr

wget -q -O /usr/bin/delws "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/delws.sh" && chmod +x /usr/bin/delws

wget -q -O /usr/bin/delss "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/delss.sh" && chmod +x /usr/bin/delss

wget -q -O /usr/bin/renew-ss "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/renew-ss.sh" && chmod +x /usr/bin/renew-ss

wget -q -O /usr/bin/renewtr "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/renewtr.sh" && chmod +x /usr/bin/renewtr

wget -q -O /usr/bin/renewvless "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/renewvless.sh" && chmod +x /usr/bin/renewvless

wget -q -O /usr/bin/renewws "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/renewws.sh" && chmod +x /usr/bin/renewws

wget -q -O /usr/bin/cek-mws "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/cek-mws.sh" && chmod +x /usr/bin/cek-mws

wget -q -O /usr/bin/cek-mvs "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/cek-mvs.sh" && chmod +x /usr/bin/cek-mvs

wget -q -O /usr/bin/cek-mss "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/cek-mss.sh" && chmod +x /usr/bin/cek-mss

wget -q -O /usr/bin/cek-mts "https://raw.githubusercontent.com/ciaaa12/cici/main/botssh/cek-mts.sh" && chmod +x /usr/bin/cek-mts

cp /tmp/var.txt /media/cybervpn

clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[44;97;1m             CIAA STORE             \e[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[44;97;1m       DOWNLOAD SUCCESFULLY        \e[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e "\e[96;1m KETIK /menu : .menu : .crot : .gas DI BOT TELEGRAM ANDA \e[0m"
echo -e ""
read -p "Press !! ENTER Back To Menu"
rm /media/cybervpn.zip
clear
menu
