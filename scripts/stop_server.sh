#!/bin/bash
# Stop the React app by killing the process running on port 4000
pkill -f "npm start" || echo "No npm start process found"
