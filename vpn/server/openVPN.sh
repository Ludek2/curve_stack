#This sequence of commands will install an openVPN server, generate security keys and start an openVPN server

#Please follow the instructions to export security keys.

#the port 1194 in the security profile has to be opened

apt-get install openvpn easy-rsa

mv openvpn.conf /etc/openvpn/

cp -r /usr/share/easy-rsa/ /etc/openvpn

mkdir /etc/openvpn/easy-rsa/keys

cd /etc/openvpn/easy-rsa

cp vars /etc/openvpn/easy-rsa/

chmod 744 /etc/openvpn/easy-rsa/vars

openssl dhparam -out /etc/openvpn/dh2048.pem 2048

source /etc/openvpn/easy-rsa/vars

source /etc/openvpn/easy-rsa/clean-all

source /etc/openvpn/easy-rsa/build-ca

source /etc/openvpn/easy-rsa/build-key-server server

cp /etc/openvpn/easy-rsa/keys/{server.crt,server.key,ca.crt} /etc/openvpn

#ls /etc/openvpn

service openvpn start

echo reboot the machine to enable the VPN !!!!!!

