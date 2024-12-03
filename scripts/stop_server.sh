#!/bin/bash

set -e

chmod +x /var/www/react-app/scripts/stop_server.sh
pkill -f "npm" || echo "No npm process found"



