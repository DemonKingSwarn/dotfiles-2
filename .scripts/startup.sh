#!/usr/bin/env sh

# This is a startup script

# rice
picom --experimental-backends -b &
sxhkd &
clipit &
dunst &
nm-applet &
vktablet
