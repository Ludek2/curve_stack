Connect to the server and use this sequence of commands to create new client keys:

change directory:
cd /etc/openvpn/easy-rsa

run var script:
. ./vars

build keys:
./etc/openvpn/easy-rsa/build-key client1

create a new folder client keys and config file:
mkdir /home/myDir/client1_keys/

move the generated keys to the folder:
mv keys/{ca.crt,client1.crt,client1.key} /home/myDir/client1_keys/

copy openVPN client file:
cp /usr/share/doc/openvpn/examples/sample-config-files/client.conf /home/ubuntu/client1_keys/client.conf

Now you can apply this files on a client PC an create VPN connection.

