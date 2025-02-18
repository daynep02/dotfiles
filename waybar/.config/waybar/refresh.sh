#!/bin/bash

# Check if waybar is running
if pgrep -x "waybar" > /dev/null; then
    # If running, kill the waybar process
    pkill -x "waybar"
    # If not running, start waybar
fi
waybar &

