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

# vsftpd install
sudo apt-get install vsftpd ftp

# scapy install
sudo apt-get install python-scapy

# remote desktop
sudo apt-get install tightvncserver

# wireshark
sudo apt-get install wireshark

# nmap
sudo apt-get install nmap

# hydra
sudo apt-get install hydra

# git
sudo apt-get install git
# Ruby
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
source .bashrc
sudo apt-get install libreadline-dev libssl-dev ruby-dev -y
rbenv install --list
benv install 2.4.1
rbenv global 2.4.1
rbenv rehash
source .bashrc
# Metasploit 
sudo apt-get install build-essential zlib1g zlib1g-dev libxml2 libxml2-dev libxslt-dev locate libreadline6-dev libcurl4-openssl-dev git-core libssl-dev libyaml-dev openssl autoconf libtool ncurses-dev bison curl wget postgresql postgresql-contrib libpq-dev libapr1 libaprutil1 libsvn1 libpcap-dev git-core postgresql curl nmap gem -y
sudo apt-get install libsqlite3-dev
gem install wirble sqlite3 bundler

cd /opt

git clone https://github.com/rapid7/metasploit-framework.git
sudo apt-get install realvnc-vnc-server
sudo apt clean
sudo reboot