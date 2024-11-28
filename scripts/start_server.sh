#!/bin/bash
sudo systemctl start nginx
sudo tee /etc/nginx/sites-available/react-app <<EOL
server {
    listen 80;
    server_name _;
    root /var/www/react-app;
    index index.html;

    location / {
        try_files \$uri /index.html;
    }
}
EOL
sudo ln -sf /etc/nginx/sites-available/react-app /etc/nginx/sites-enabled/
sudo systemctl restart nginx
