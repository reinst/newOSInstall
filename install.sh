#!/bin/bash

#INSTALL SCRIPT FOR FRESH LINUX DISTRO

sudo apt update && sudo apt upgrade -y && sudo apt autoremove

#Install vscode
sudo snap install --classic code

# Install Google Chrome
cd ~/Downloads
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable -y

# install Arduino
wget -q - https://www.arduino.cc/download.php?f=/arduino-nightly-linux64.tar.xz
tar -xf download.php\?f\=%2Farduino-nightly-linux64.tar.xz 
cd arduino-nightly
sudo ./install.sh

sudo apt-get update -qq
sudo apt-get install -yy vim virtualbox python3-pip wireshark simplescreenrecorder putty git nmap filezilla terminator webcamoid vlc
