#!/bin/bash

# Mover install_bot para diretório
mv ./install_bot.sh /usr/local/bin

# Ir ao diretório desejado
cd /usr/local/bin

# Baixa script
wget https://raw.githubusercontent.com/testenet1/linux/main/botteste

# Conceder permissões adequadas ao script
chmod +x /usr/local/bin/botteste

# Verifica se o arquivo /etc/rc.local está vazio
if ! grep -q "#!/bin/bash" /etc/rc.local; then
    echo "#!/bin/bash" > /etc/rc.local
fi
echo "cd /usr/local/bin" >> /etc/rc.local
echo "screen -dmS bot_teste ./botteste" >> /etc/rc.local

#Inicializa o programa.

cd /usr/local/bin
screen -dmS bot_teste ./botteste

# Remove instalador
rm /usr/local/bin/install_bot.sh
