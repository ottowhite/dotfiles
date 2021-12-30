xinput -list | grep 'ELAN2514:00 04F3:2A55.*pointer' | grep -oP 'id=\K[1-9][0-9]?' | xargs -n1 -I{} xinput map-to-output {} "eDP-1-1"
