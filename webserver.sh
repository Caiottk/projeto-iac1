#!/bin/bash

echo "Atualizando o servidor"
apt-get update -y
apt-get upgrade -y


echo "Instalando o apache2"
apt-get install apache2 -y
systemctl status apache2

echo "Instalando o unzip"
apt-get install unzip -y

echo "Baixando a aplicação no diretório /tmp"
cd /tmp 
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Copiando a aplicação par ao diretório padrão do apache e removendo o zip da pasta"
cp /tmp/*.zip /var/www/html
cd /
cd /var/www/html
unzip main.zip 
rm -f main.zip 



