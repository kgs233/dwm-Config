#!/bin/bash

sudo pacman -S meson ninja uthash libconfig libev dmenu alacritty nigtroun alsa-utils bc
# sudo pacman -S nerd-fonts-fira
yay -S picom-git otf-nerd-fonts-fira-mono
git clone https://github.com/yaocccc/picom.git
# git clone git@github.com:yaocccc/picom.git
cd picom
git checkout implement-window-animations
rm -rf build
LDFLAGS="-L/usr/local/lib" CPPFLAGS="-I/usr/local/include" meson --buildtype=release . build
ninja -C build
sudo ninja -C build install
cd ../
cp -rf ./.config ~/
cp -rf ./.dwm ~/
cd dwm
make
sudo make install
echo "exec dwm" >> ~/.xinitrc
