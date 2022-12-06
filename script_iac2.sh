#!/bin/bash

echo "Atualizando o servidor"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e compiando os arquivos da aplicação"
cd /tmp
wgt https://github.com/lucasfreire01/Linux_projeto_1/archive/refs/heads/main.zip
unzip main.zip
cd Linux_projeto_1-main
cp -R * /var/www/html/
