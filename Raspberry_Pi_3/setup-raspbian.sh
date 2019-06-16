#!/bin/bash

# autor: sekihan
# auto_setup_rasbian

# inputcommand
# bash ./setup-rasbian.sh

# software update
sudo apt-get update
sudo apt-get upgrade
# fameware update
sudo rpi-update
# japanese font
sudo apt-get install ibus-mozc

# text edit
sudo apt-get install vim
sudo apt-get install vim-gtk

sudo apt-get install code-oss=1.29.0-1539702286 -y --allow-downgrades

# browser
# sudo apt-get install firefox-esr firefox-esr-l10n-ja
sudo apt-get install chromium-browser

# edit picture
sudo apt-get install gimp
# draw picture
sudo apt-get install inkscape

# office LibreOffice
sudo apt-get install libreoffice


# remote desktop
sudo apt-get install tightvncserver

# scapy install
sudo apt-get install python-scapy

# OpenCv install
sudo apt-get install python-opencv

# sklearn+a
sudo apt-get install python-sklearn liblapack-dev libhdf5-dev python-h5py
# keras
sudo pip install keras

sudo apt clean
sudo reboot