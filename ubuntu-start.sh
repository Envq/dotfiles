#!/bin/bash

# UPDATE
echo "==> Update"
sudo apt update


# MAIN TOOLS
echo "==> Download main tools"
sudo apt install git cmake ranger neofetch python3-pip
#pip3 install --user psycopg2 psycopg2-binary flask 


# CONFIG
echo "==> Download git dotfiles"
mkdir -p github
git clone https://github.com/Envq/dotfiles.git


# NEOVIM
echo "==> Install neovim"
sudo apt install neovim
echo "====> Install vim-plug"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "====> Copy nvim config folder"
cp $HOME/github/dotfiles/nvim $HOME/.config/
echo "====> Remember to do ':PlugInstall' in vim"
sleep 1


# PROGRAMS
echo "==> Install other programs"
sudo apt install terminator chromium-browser dia inkscape


# SNAPS
echo "==> Install snap"
sudo apt install snapd


# INSTALL SNAP PROGRAMS?
echo -n "==> You want install snap programs (telegram-spotify-vscode)?"
echo -n "==> [y to yes]"
read FLAG
if [ ${FLAG} = "y" ]
then
    echo "====> Install telegram"
    sudo snap install telegram-desktop
    echo "====> Install spotify"
    sudo snap install spotify
    echo "====> Install Visual Studio Code"
    sudo snap install code --classic
    #echo "====> Install discord"
    #sudo snap install discord
fi


# FINISH
echo "==> Finish"
