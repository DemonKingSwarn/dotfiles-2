#!/usr/bin/env sh

# rice
picom --experimental-backends -f -b &
sxhkd &
clipit &
dunst &
~/.scripts/set_wallpaper &

# Updates custom emojis
cd ~/cashew/emojis/
git pull
cd

