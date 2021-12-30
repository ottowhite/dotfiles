TouchInput="ELAN2514:00 04F3:2A55"
PenInput="ELAN2514:00 04F3:2A55 Pen (0)"
EraserInput="ELAN2514:00 04F3:2A55 Eraser (0)"

# Will be run by a udev rule if a change is detected

Option=$(xrandr | grep '\bconnected\b' | count 2 && echo dual || echo single)
CurrentOption=$(xrandr --listactivemonitors | count 3 && echo dual || echo single)

# echo Option - $Option >> /home/otto/.config/i3/dualMonitorLog.txt
# echo Current Option - $CurrentOption >> /home/otto/.config/i3/dualMonitorLog.txt

if [ $Option = "dual" ] && [ $CurrentOption = "single" ]; then
  # /home/otto/.config/i3/rotate.sh normal
  xrandr --verbose --output HDMI-0 --mode 1920x1080 --scale 2x2 --pos 0x0 --fb 7680x2160 
  xrandr --verbose --output eDP-1-1 --mode 3840x2160 --pos 3840x0
  xinput -list | grep 'ELAN2514:00 04F3:2A55.*pointer' | grep -oP 'id=\K[1-9][0-9]?' | xargs -n1 -I{} xinput map-to-output {} eDP-1-1
elif [ $Option = "single" ] && [ $CurrentOption = "dual" ]; then
  xrandr --auto && xrandr --output HDMI-0 --off
else
  exit 0
fi
