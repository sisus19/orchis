#!/usr/bin/env bash

git clone https://github.com/vinceliuice/Orchis-theme.git themes
cd themes/Orchis-theme
./install.sh -c dark -s compact --tweaks solid black macos

cd ..
wget -4 https://github.com/ful1e5/Bibata_Cursor/releases/latest/download/Bibata-Modern-Classic.tar.gz 
tar -xvf Bibata-Modern-Classic.tar.gz 
mv Bibata-Modern-Classic /usr/share/icons/
