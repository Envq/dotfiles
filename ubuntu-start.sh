#!/bin/bash

# UPDATE
echo "Update"
sudo apt update


# CONFIG
echo "download git dotfiles"
mkdir github
git clone https://github.com/Envq/dotfiles.git



# PROGRAMS
sudo apt install neovim terminator ranger chromium git neofetch


# PYTHON
sudo apt install python3-pip
pip3 install --user psycopg2 psycopg2-binary flask 



# SNAP INSTALL
echo "Install snap"
sudo apt install snapd
echo "Install telegram"
sudo snap install telegram-desktop #Also in appCenter
echo "Install spotify"
sudo snap install spotify
echo "Install discord"
sudo snap install discord
echo "Install Visual Studio Code"
sudo snap install code --classic


# SETTINGS
gsettings set io.elementary.files.preferences single-click false
gsettings set org.gnome.desktop.default-applications.terminal exec terminator
gsettings set org.gnome.desktop.default-applications.terminal exec-arg ''
