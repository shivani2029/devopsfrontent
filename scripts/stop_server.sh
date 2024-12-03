#!/bin/bash
# sudo systemctl stop nginx
pkill -f "npm start" || echo "No npm start process found on port 4000"

