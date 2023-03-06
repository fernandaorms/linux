#!/bin/bash

echo "Update server"

apt-get update
apt-get upgrade -y

echo "Install Apache2 + Unzip"

apt-get install apache2 -y
systemctl restart apache2
apt-get install unzip -y

echo "Download and copy aplication files"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

