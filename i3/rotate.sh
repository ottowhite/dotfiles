#!/bin/bash
# This script rotates the screen and touchscreen input 90 degrees each time it is called, 
# also disables the touchpad, and enables the virtual keyboard accordingly

# by Ruben Barkow: https://gist.github.com/rubo77/daa262e0229f6e398766

#### configuration
# find your Touchscreen and Touchpad device with `xinput`
TouchscreenDevice='ELAN2514:00 04F3:2A55'
PenDevice='ELAN2514:00 04F3:2A55 Pen (0)'
EraserDevice='ELAN2514:00 04F3:2A55 Eraser (0)'
ScreenName="eDP-1-1"
rotation=$(xrandr | grep ""$ScreenName"" | cut -f4 -d " " | cut -f2 -d "(")

# Matrix for rotation
# ⎡ 1 0 0 ⎤
# ⎜ 0 1 0 ⎥
# ⎣ 0 0 1 ⎦
normal='1 0 0 0 1 0 0 0 1'

#⎡ -1  0 1 ⎤
#⎜  0 -1 1 ⎥
#⎣  0  0 1 ⎦
inverted='-1 0 1 0 -1 1 0 0 1'

# 90° to the left 
# ⎡ 0 -1 1 ⎤
# ⎜ 1  0 0 ⎥
# ⎣ 0  0 1 ⎦
left='0 -1 1 1 0 0 0 0 1'

# 90° to the right
#⎡  0 1 0 ⎤
#⎜ -1 0 1 ⎥
#⎣  0 0 1 ⎦
right='0 1 0 -1 0 1 0 0 1'

function mapToInternalDisplay {
  #xinput map-to-output pointer:"$TouchscreenDevice" "$ScreenName"
  #xinput map-to-output pointer:"$PenDevice" "$ScreenName"
  #xinput map-to-output pointer:"$EraserDevice" "$ScreenName"
  xinput -list | grep 'ELAN2514:00 04F3:2A55.*pointer' | grep -oP 'id=\K[1-9][0-9]?' | xargs -n1 -I{} xinput map-to-output {} "$ScreenName"
}

function rotateDevices {
  xrandr --output $ScreenName --rotate $1
  xinput -list | grep 'ELAN2514:00 04F3:2A55.*pointer' | grep -oP 'id=\K[1-9][0-9]?' | xargs -n1 -I{} xinput set-prop {} 'Coordinate Transformation Matrix' ${!1}
  #xinput set-prop pointer:"$TouchscreenDevice" 'Coordinate Transformation Matrix' ${!1}
  #xinput set-prop pointer:"$PenDevice" 'Coordinate Transformation Matrix' ${!1}
  #xinput set-prop pointer:"$EraserDevice" 'Coordinate Transformation Matrix' ${!1}
}

if [ "$1" == "normal" ]
then
  rotateDevices normal
  mapToInternalDisplay 
  exit 0
fi

if [ "$rotation" == "left" ]
then
  rotateDevices inverted
elif [ $rotation == "normal" ]
then
  rotateDevices left
elif [ $rotation == "inverted" ]
then
  rotateDevices right
else
  rotateDevices normal
fi

mapToInternalDisplay 
