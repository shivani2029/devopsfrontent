#!/bin/bash
cd /home/ubuntu/react-app
npm run build
npm install -g serve


serve -s build -l 4000






