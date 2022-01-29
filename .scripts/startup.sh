#!/usr/bin/env sh

# This is a startup script

cd ~/cashew/emojis/
git pull
cd

# rice
compton -f -b &
sxhkd &
clipit &
dunst &
nm-applet
