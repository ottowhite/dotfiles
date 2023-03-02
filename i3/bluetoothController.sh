#!/bin/sh
choices="Earphones\nHeadphones\nOff\nOn"

chosen=`echo -e "$choices" | dmenu -i`

case "$chosen" in
  Earphones) bluetoothctl power on && bluetoothctl connect AC:BF:71:01:62:CD ;;
  Headphones) bluetoothctl power on && bluetoothctl connect 60:AB:D2:B2:E6:A1 ;;
  Off) bluetoothctl power off ;;
  On) bluetoothctl power on ;;
esac
