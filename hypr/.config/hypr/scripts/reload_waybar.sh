#!/bin/sh

# Kill the current waybar and refresh it
killall waybar
waybar & disown

# Notification
notify-send "Reload Waybar"
