#!/bin/bash

# Mover install_bot para diretório
mv ./install_bot.sh /etc/SSHPlus

# Ir ao diretório desejado
cd /etc/SSHPlus

# Baixa script
wget https://raw.githubusercontent.com/testenet1/linux/main/botteste

# Conceder permissões adequadas ao script
chmod +x /etc/SSHPlus/botteste

# Verifica se o arquivo /etc/rc.local está vazio
if ! grep -q "#!/bin/bash" /etc/rc.local; then
    echo "#!/bin/bash" > /etc/rc.local
fi
echo "cd /etc/SSHPlus" >> /etc/rc.local
echo "screen -dmS bot_teste ./botteste" >> /etc/rc.local

#Inicializa o programa.

screen -dmS bot_teste ./botteste

# Remove instalador
rm /etc/SSHPlus/install_bot.sh
