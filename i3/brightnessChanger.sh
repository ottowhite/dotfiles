#!/bin/zsh

screenName="eDP-1-1"

brightness=$(xrandr --verbose | grep "Brightness: " | cut -f2 -d " ")
xrandr --output $screenName --brightness $(($brightness + $1))
brightness=$(xrandr --verbose | grep "Brightness: " | cut -f2 -d " ")
notify-send -t 200 "Brightness" $brightness
