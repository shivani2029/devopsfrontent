#!/bin/bash

# Update package list and install dependencies
sudo apt update

# Install Node.js and NPM
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs npm

# Create the application directory
sudo mkdir -p /var/www/react-app

# Change to the app directory
cd /var/www/react-app || exit

# Install the app dependencies
sudo npm install
