#!/bin/sh

# Kill the current waybar and refresh it
killall waybar
waybar --config ~/.config/waybar/top/config.jsonc --style ~/.config/waybar/top/style.css & disown
# waybar --config ~/.config/waybar/bottom/config.jsonc --style ~/.config/waybar/bottom/style.css & disown
# waybar & disown

# Notification
notify-send "Reload Waybar"
