#!/bin/bash
# Find the process ID (PID) of the serve process
pid=$(ps aux | grep 'serve -s build' | grep -v grep | awk '{print $2}')

# If the process is running, kill it
if [ ! -z "$pid" ]; then
    echo "Stopping React app (PID: $pid)..."
    kill -9 $pid
else
    echo "No React app process found."
fi
