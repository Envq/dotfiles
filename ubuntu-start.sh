#!/bin/bash

# UPDATE
echo "Update"
sudo apt update


# MAIN TOOLS
echo "download main tools"
sudo apt install git cmake ranger neofetch 


# CONFIG
echo "download git dotfiles"
mkdir github
git clone https://github.com/Envq/dotfiles.git
pu

# NEOVIM
echo "install neovim"
sudo apt install neovim
echo "install vim-plug"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "mv nvim config folder"
mv $HOME/github/dotfiles/nvim $HOME/.config/
echo "remember to do ':PlugInstall' in vim"


# PROGRAMS
sudo apt install postgresql terminator chromium-browser dia inkscape gimp 


# PYTHON
sudo apt install python3-pip
pip3 install --user psycopg2 psycopg2-binary flask 


# REMEMBER TO INSTALL
echo "Rember to install:"
echo "telegram"
echo "visual studio code"
echo "spotify"
echo "discord"



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
