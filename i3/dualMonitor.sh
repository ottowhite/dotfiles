#!/bin/zsh
TouchInput="ELAN2514:00 04F3:2A55"
PenInput="ELAN2514:00 04F3:2A55 Pen (0)"
EraserInput="ELAN2514:00 04F3:2A55 Eraser (0)"

MonitorSetup=$(echo "Dual\nSingle" | dmenu -i -p "Enter monitor setup")

if [ $MonitorSetup = "Dual" ]; then
  # /home/otto/.config/i3/rotate.sh normal
  xrandr --verbose --output HDMI-0 --mode 1920x1080 --scale 2x2 --pos 0x0 --fb 7680x2160 
  xrandr --verbose --output eDP-1-1 --mode 3840x2160 --pos 3840x0
  xinput -list | grep 'ELAN2514:00 04F3:2A55.*pointer' | grep -oP 'id=\K[1-9][0-9]?' | xargs -n1 -I{} xinput map-to-output {} eDP-1-1
elif [ $MonitorSetup = "Single" ]; then
  xrandr --auto && xrandr --output HDMI-0 --off
else
  exit 0
fi
