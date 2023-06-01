#!/bin/bash

# Verifica se o arquivo de configuração já existe
if [ -f "/etc/SSHPlus/config.txt" ]; then
    echo "Arquivo de configuração já existe. Utilizando configurações existentes."
else
    # Solicita o token
    read -p "Digite o token: " token

    # Solicita o ID
    read -p "Digite o ID: " id

    # Grava as configurações no arquivo
    echo "TOKEN=$token" > /etc/SSHPlus/config.txt
    echo "ID=$id" >> /etc/SSHPlus/config.txt

    echo "Configurações salvas com sucesso."
fi

# Lê as configurações do arquivo
source "/etc/SSHPlus/config.txt"

# Executa o comando em uma nova tela do screen
cd  /etc/SSHPlus
screen -dmS bot_plus bash -c "./bot $TOKEN $ID"
