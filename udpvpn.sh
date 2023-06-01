#!/bin/bash

#Liberando as portas de 7100 até 7900
start_port = 7100
end_port = 7900
step = 100

current_port = $start_port

while [ $current_port -le $end_port ]; do
            screen -dmS udpvpn /bin/udp $current_port
            current_port=$((current_port + step))
done
