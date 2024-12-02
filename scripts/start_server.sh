#!/bin/bash

# Start Nginx service
sudo systemctl start nginx

# Configure Nginx to serve the React app
sudo tee /etc/nginx/sites-available/react-app <<EOL
server {
    listen 4000;
    server_name _;
    root /var/www/react-app/build;  # Pointing to the build directory
    index index.html;

    location / {
        try_files \$uri /index.html;
    }
}
EOL

# Enable the Nginx site configuration
sudo ln -sf /etc/nginx/sites-available/react-app /etc/nginx/sites-enabled/

# Navigate to the React app directory
cd /var/www/react-app || exit

# Install dependencies and build the React app
sudo npm install
sudo npm run build

# Copy the built files to the Nginx root directory
sudo cp -r /var/www/react-app/build/* /var/www/html/

# Restart Nginx to apply the new configuration and serve the React app
sudo systemctl restart nginx
