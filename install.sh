#!/bin/bash

# Conceder permissões adequadas ao script
chmod +x /usr/local/bin/udpvpn.sh

# Adicionar o caminho da pasta do script ao arquivo /etc/rc.local
echo "/usr/local/bin/udpvpn.sh" >> /etc/rc.local
