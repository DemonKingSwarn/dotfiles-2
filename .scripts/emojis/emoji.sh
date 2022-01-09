#!/bin/bash

# Derived from Luke Smith's script.

DIRNAME=$HOME/.scripts/emojis/

chosen=$(cut -d ';' -f1 "$DIRNAME/emoji.txt" | dmenu -i | sed "s/ .*//")

[ -z "$chosen" ] && exit

printf "$chosen" | xclip -sel c
notify-send "\"$chosen\" copied to clipboard"

