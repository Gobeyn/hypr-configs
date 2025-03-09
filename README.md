# Hyprland Configuration

This repository contains my [Hyprland](https://hyprland.org/) configuration.

## Dependencies

The following programs are required for this configuration to function as intended.

| Software | Description |
|----------|-------------|
| [Hyprlock](https://github.com/hyprwm/hyprlock) | Screen locking utility designed to integrate with Hyprland. |
| [Hyprpaper](https://github.com/hyprwm/hyprpaper) | Wallpaper utility designed to integrate with Hyprland. | 
| [Waybar](https://github.com/Alexays/Waybar) | Status bar for Wayland compositors like Hyprland |
| [Dunst](https://github.com/dunst-project/dunst) | Notification daemon |
| [Rofi](https://github.com/in0ni/rofi-wayland) | App launcher, not that the Wayland version should be installed, e.g. `pacman -S rofi-wayland` |
| [Kitty](https://github.com/kovidgoyal/kitty) | Terminal emulator |
| [Wlogout](https://github.com/ArtsyMacaw/wlogout) | Logout menu for Wayland compositors. |
| [Dolphin](https://github.com/KDE/dolphin) | File manager GUI |
| [Firefox](https://www.mozilla.org/en-US/firefox/new/) | Browser | 
| [Playerctl](https://github.com/altdesktop/playerctl) | Media player handler |
| [Vesktop](https://github.com/Vencord/Vesktop) | Discord desktop app with screenshare and sound on Wayland | 
| [Brightnessctl](https://github.com/Hummer12007/brightnessctl) | Brightness controller |
| [Qview](https://github.com/jurplel/qView) | Image viewer, used when screenshots are taken |

The following fonts are required to be installed for this configuration to function as intended, 
see [here](https://www.nerdfonts.com/font-downloads) for Nerd fonts.

- DaddyTimeMono Nerd Font

## Install

To install this we suggest creating a symbolic link, for instance by using [GNU Stow](https://www.gnu.org/software/stow/).
In that case one can run `stow hypr -t ~` in the repository root which will create a symbolic link with `~/.config/hypr`. 
Be careful that a symbolic doesn't already exist! To remove the symbolic link created here 
one can run `stow -D hypr` in the repository root.

## Setup 

In order for this configuration to work, some setup is required. You will need to create 
a `~/.desktop-environment/` directory. Inside that directory the following files are required

- `wallpaper.png`: Containing the wallpaper to display
- `wallpaper.info`: Containing the path to the wallpaper you want to display, this 
    is used for reloading.
- `shader.info`: Containing the path to the shader to use, we recommend setting 
    it to `~/.config/hypr/shaders/default-shader.frag` which is provided in this 
    repository.

Before creating the symlink, you should also make the file `./hypr/.config/hypr/hypr-configs/hypr_personal.conf`. This file is not tracked by `git` and can
be used to place configurations based on personal circumstances. For instance, the setup for multiple monitors, the settings required for enabling GPU acceleration, etc. You can 
leave this file empty, but it must be present.
