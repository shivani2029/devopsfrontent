#!/bin/bash
# sudo systemctl stop nginx
pkill -f "npm start" || echo "No npm start process found on port 4000"
pkill -f ":4000" || echo "No process running on port 4000"
