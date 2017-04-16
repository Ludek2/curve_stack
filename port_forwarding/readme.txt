THIS IS A SCRIPT THAT SIMPLIFIES PORT FORWARDING SET UP

You can use it to redirect incomming network traffic on a defined port to a different machine.

SYNTAX:

./enable_forwarding.sh export_file_path bind_address bind_port private_host_address destination_port


VALUES:

bind_address: the address where some network traffic will be received (typically from internet)
       
bind_port: any port
       
private_host_address: address of the host where the network traffic will be forwarded
      
destination_port: any port


EXAMPLE:

   ./enable_forwarding.sh 10.0.1.10 30 10.0.0.20 22



