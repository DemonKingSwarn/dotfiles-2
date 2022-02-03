#!/usr/bin/env sh

# rice
picom --experimental-backends -f -b &
sxhkd &
clipit &
dunst &
nm-applet &
vktablet &
./autocommit/autocommit.sh
