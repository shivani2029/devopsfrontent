#!/bin/bash

# sudo systemctl start nginx


# sudo tee /etc/nginx/sites-available/react-app <<EOL
# server {
#     listen 4000;
#     server_name _;
#     root /var/www/react-app/build;  # Pointing to the build directory
#     index index.html;

#     location / {
#         try_files \$uri /index.html;
#     }
# }
# EOL


# sudo ln -sf /etc/nginx/sites-available/react-app /etc/nginx/sites-enabled/


cd /var/www/react-app || exit

 set -e
 npm install
 npm run build
 PORT=4000 npm start &
chmod +x scripts/start_server.sh





# sudo systemctl restart nginx
