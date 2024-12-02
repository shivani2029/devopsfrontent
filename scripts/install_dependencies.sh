#!/bin/bash
sudo apt update
sudo apt install nginx -y
sudo mkdir -p /var/www/react-app
cd /var/www/react-app || exit
sudo npm install

