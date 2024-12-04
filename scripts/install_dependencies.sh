#!/bin/bash
sudo apt update
# sudo apt install -y nodejs npm
set -x # Enables debug logging

echo "Checking for Node.js version..."
node -v

echo "Checking for npm version..."
npm -v

cd /home/ubuntu/react-app
npm install



