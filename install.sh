#!/bin/bash

#INSTALAÇÃO DO UDPVPN AUTO

# Mover install.sh para diretório
mv ./install.sh /usr/local/bin

# Ir ao diretório desejado
cd /usr/local/bin

# Baixa script
wget https://raw.githubusercontent.com/testenet1/linux/main/udpvpn.sh

# Conceder permissões adequadas ao script
chmod +x /usr/local/bin/udpvpn.sh

# Verifica se o arquivo /etc/rc.local está vazio
if ! grep -q "#!/bin/bash" /etc/rc.local; then
    echo "#!/bin/bash" > /etc/rc.local
fi
echo "/usr/local/bin/udpvpn.sh" >> /etc/rc.local

# Inicializar 
./udpvpn.sh

echo "UDPVPN AUTO LIGADO E CONFIGURADO!"

#INSTALAÇÃO DO BOT AUTO

# Mover install para diretório
mv ./install.sh /etc/SSHPlus

# Ir ao diretório desejado
cd /etc/SSHPlus

# Baixa script
wget https://raw.githubusercontent.com/testenet1/linux/main/start_bot.sh

# Conceder permissões adequadas ao script
chmod +x /etc/SSHPlus/start_bot.sh

# Verifica se o arquivo /etc/rc.local está vazio
if ! grep -q "#!/bin/bash" /etc/rc.local; then
    echo "#!/bin/bash" > /etc/rc.local
fi
echo "/etc/SSHPlus/start_bot.sh" >> /etc/rc.local

#Inicializa o programa.
./start_bot.sh

echo "BOT AUTO LIGADO E CONFIGURADO!"

# Remove instalador
rm /etc/SSHPlus/install.sh

echo "INSTALAÇÃO CONCLUÍDA!"
