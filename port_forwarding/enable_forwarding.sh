#!/bin/bash
#This script exports configuration commands for port forwarding to a defined file and applies port forwarding settings
#Run this script with these parameters:
#./enable_forwarding.sh export_file_path bind_address bind_port private_host_address destination_port
# example: ./enable_forwarding.sh 10.0.1.10 30 10.0.0.20 22
# make the changes permanent - execute the exported file on system boot by updating /etc/rc.local

#exports the commands into the file specified by parametr $1
echo exporting file $1
cat > $1 << EOF1 
#!/bin/bash

echo 1 >| /proc/sys/net/ipv4/ip_forward
iptables -t nat -A  PREROUTING -p tcp -d  $2 --dport $3 -j DNAT --to $4:$5
iptables -t nat  -A POSTROUTING -j MASQUERADE
EOF1


#makes the exported file executable
chmod 744 $1


echo Applying port forwarding
echo bind address: $2
echo bind Port: $3
echo Private host address: $4
echo Destination port: $5

# executes the commands in the exported file to apply port forwarding
source $1

echo NOTE: Do not forget to execute $1 on system boot to make the change permanent!!!!

