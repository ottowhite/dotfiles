#!/bin/sh
choices="Spotify\nSoundcloud\nYoutube\nSWU\nR6M"

chosen=`echo -e "$choices" | dmenu -i`

case "$chosen" in
  Spotify) spotify --force-device-scale-factor=2 ;;
  Soundcloud) brave --new-window www.soundcloud.com ;;
  Youtube) brave --new-window www.youtube.com ;;
  SWU) brave --new-window http://www.swu.fm/player/ ;;
  R6M) brave --new-window https://www.bbc.co.uk/sounds/play/live:bbc_6music ;;
esac
