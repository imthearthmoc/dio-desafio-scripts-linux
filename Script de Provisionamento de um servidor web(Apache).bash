#!/bin/bash

echo "Atualizando o Sistema"
apt-get update
apt-get upgrade -y

echo "Instalando Apache2/Unzip"

apt-get install apache2 -2
apt-get install unzip -y

echo "Entrando na pasta /tmp"
cd /tmp

echo"Baixando Pagina Teste"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando Arquivos"
unzip main.zip

echo "Entrando na pasta linux-site-dio-main"
cd linux-site-dio-main

echo "Copiando os Arquivos"
cp -R* /var/www/html/

echo "operação finalizada"

