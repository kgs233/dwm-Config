#!/bin/bash

sudo pacman -S compton dmenu alacritty nigtroun alsa-utils bc nerd-fonts-fira
cp -rf ./.config ~/
cp -rf ./.dwm ~/
cd dwm
make
sudo make install
echo "exec dwm" >> ~/.xinitrc
