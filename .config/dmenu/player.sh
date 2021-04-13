#!/bin/sh
. ~/.config/dmenu/current
selected="$( echo "pause / play\nnext\nprev\nchange player" | \
    dmenu -i -p "$player:" "$@")"


echo $selected
if [ "$selected" = "pause / play" ]; then
    echo aaa
    playerctl -p $player play-pause
fi
if [ "$selected" = "next" ]; then
    playerctl -p $player next
fi
if [ "$selected" = "prev" ]; then
    playerctl -p $player previous
fi
if [ "$selected" = "change player" ]; then
    echo "player=$(playerctl -l | dmenu -i -p "player:" "$@")" > ~/.config/dmenu/current
fi



exit 0
