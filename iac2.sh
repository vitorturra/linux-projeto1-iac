#!/bin/bash

echo "Atualizando o Servidor..." echo

cd /
apt update -y
apt upgrade -y

echo "Finalizada a atualização..."

echo "Instalando o Apache..." echo

apt install apache2 -y
apt install unzip -y

echo "Finalizada a instalação..." echo

echo "Baixando aplicação WEB..." echo

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Finalizado.." echo

echo "Copiando arquivos para pasta padrão Apache..." echo

cd /tmp/linux-site-dio-main/
cp -R * /var/www/html/

echo "Finalizado." echo
