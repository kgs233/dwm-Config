#!/bin/bash

sudo pacman -S compton dmenu alacritty nigtroun
cp -rf ./.config ~/
cp -rf ./.dwm ~/
cd dwm
make
sudo make install
echo "exec dwm" >> ~/.xinitrc
