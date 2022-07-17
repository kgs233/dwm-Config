#!/bin/bash

/bin/bash ~/.dwm/dwm-status.sh &
picom --experimental-backends --backend glx -b
fcitx5 &
nitrogen --restore &
