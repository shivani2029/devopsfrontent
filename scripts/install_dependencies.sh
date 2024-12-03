#!/bin/bash

# Update package list and install dependencies
# sudo apt update

# # Install Node.js and NPM
# curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
# sudo apt install -y nodejs npm

# # Create the application directory
# sudo mkdir -p /var/www/react-app

# # Change to the app directory
# cd /var/www/react-app || exit

# # Install the app dependencies
# sudo npm install


set -e  # Exit immediately if a command exits with a non-zero status

# Update package list and install dependencies
sudo apt update

# Install Node.js and NPM
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs npm

# Clean up and create the application directory
sudo rm -rf /var/www/react-app
sudo mkdir -p /var/www/react-app

# Change ownership of the directory to the current user
sudo chown -R $USER:$USER /var/www/react-app

# Change to the app directory
cd /var/www/react-app || exit

# Install the app dependencies
npm install
