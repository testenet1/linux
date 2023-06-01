#!/bin/bash

# Baixa script
wget https://raw.githubusercontent.com/testenet1/linux/main/udpvpn.sh

# Conceder permissões adequadas ao script
chmod +x /usr/local/bin/udpvpn.sh

# Verifica se o arquivo /etc/rc.local está vazio
if [ ! -s /etc/rc.local ]; then
    # Adiciona a linha #!/bin/bash ao arquivo e adiciona preenchimento do diretório para inicialização
    echo "#!/bin/bash" >> /etc/rc.local && echo "/usr/local/bin/udpvpn.sh" >> /etc/rc.local
else
    # Preenche o arquivo normalmente, se não estiver vazio
    echo "/usr/local/bin/udpvpn.sh" >> /etc/rc.local
fi

# Remove instalador
rm /usr/local/bin/install.sh
