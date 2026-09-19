#!/bin/bash


echo "Atualizando o servgidor.."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get unzip -y

echo "Baixando e copiando a aplicativo da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
