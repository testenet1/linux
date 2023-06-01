#!/bin/bash

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

# Remove instalador
rm /usr/local/bin/install.sh
