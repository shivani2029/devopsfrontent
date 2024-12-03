#!/bin/bash
sudo apt update
sudo apt install -y nodejs npm
sudo mkdir -p /var/www/react-app
cd /var/www/react-app || exit
sudo npm install

