#!/bin/zsh

screenName="eDP-1-1"

max_brightness_raw=$(cat /sys/class/backlight/intel_backlight/max_brightness)
increment=$(($max_brightness_raw / 50))

# brightness=$(xrandr --verbose | grep "Brightness: " | cut -f2 -d " ")

brightness_raw=$(cat /sys/class/backlight/intel_backlight/brightness)
brightness=$(($brightness_raw / $max_brightness_raw))

echo $(($brightness_raw + $1 * $increment)) > /sys/class/backlight/intel_backlight/brightness

brightness_raw=$(cat /sys/class/backlight/intel_backlight/brightness)

# notify-send -t 200 "Brightness" $brightness_raw

# xrandr --output $screenName --brightness $(($brightness + $1))

# xrandr --output $screenName --brightness $(($brightness + $1))
# brightness=$(xrandr --verbose | grep "Brightness: " | cut -f2 -d " ")
# notify-send -t 200 "Brightness" $brightness
