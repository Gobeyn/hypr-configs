#!/bin/sh

# Get the wallpaper path
WALLPAPERPATH=$(cat "$HOME/.desktop-environment/wallpaper.info")

# Copy the wallpaper to the wallpaper.png file
cp $WALLPAPERPATH $HOME/.desktop-environment/wallpaper.png

# Set the wallpaper with Hyprpaper
hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$HOME/.desktop-environment/wallpaper.png"
hyprctl hyprpaper wallpaper ",$HOME/.desktop-environment/wallpaper.png"

# Send notification
notify-send "Reload wallpaper"

