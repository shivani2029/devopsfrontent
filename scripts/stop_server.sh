#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Print commands and their arguments as they are executed
set -x

# Gracefully attempt to stop services

# Try to stop Nginx (if installed)
if systemctl is-active --quiet nginx.service; then
    systemctl stop nginx.service || true
fi

# Stop Node.js processes
pkill -f "node" || echo "No Node.js processes found"

# Stop any running npm processes
pkill -f "npm" || echo "No npm processes found"

# If using PM2
if command -v pm2 &> /dev/null
then
    pm2 delete all || echo "No PM2 processes to delete"
fi

# Kill any process using port 4000
fuser -k 4000/tcp || echo "No process using port 4000"

# Cleanup any lingering processes
killall node || echo "No node processes to kill"

# Always exit successfully
exit 0