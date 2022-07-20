#!/bin/bash

sudo pacman -S dmenu alacritty nigtroun alsa-utils bc
# sudo pacman -S picom-git nerd-fonts-fira
yay -S picom-git otf-nerd-fonts-fira-mono
cp -rf ./.config ~/
cp -rf ./.dwm ~/
cd dwm
make
sudo make install
echo "exec dwm" >> ~/.xinitrc
