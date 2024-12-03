#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

# Navigate to the application directory
cd /var/www/react-app || exit

# Install dependencies
npm install

# Build the React app for production
npm run build

# Start the React app on port 4000
# Runs as a background process
PORT=4000 npm start &

# Notify that the app has started
echo "React app is running on port 4000. Access it via http://<your-ec2-public-ip>:4000"
