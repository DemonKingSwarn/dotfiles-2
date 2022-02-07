#!/usr/bin/env sh

# rice
picom --experimental-backends -f -b &
sxhkd &
clipit &
dunst &
nm-applet &
vktablet &
~/.scripts/set_wallpaper &

# Updates custom emojis
cd ~/cashew/emojis/
git pull
cd

