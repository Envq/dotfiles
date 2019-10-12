#!/bin/bash


# UPDATE
echo "##############"
echo "##  Update  ##"
echo "##############"
sudo apt update


# MAIN TOOLS
echo "###########################"
echo "##  Download main tools  ##"
echo "##  -------------------  ##"
echo "##  - git                ##"
echo "##  - cmake              ##"
echo "##  - ranger             ##"
echo "##  - neofetch           ##"
echo "##  - python3-pip        ##"
echo "##  - conky-all          ##"
echo "###########################"
sudo apt install git cmake ranger neofetch python3-pip conky
#pip3 install --user psycopg2 psycopg2-binary flask 


# SOME PROGRAMS
echo "##############################"
echo "##  Download main programs  ##"
echo "##  ----------------------  ##"
echo "##  - terminator            ##"
echo "##  - chromium              ##"
echo "##  - dia                   ##"
echo "##  - inkscape              ##"
echo "##############################"
sudo apt install terminator chromium-browser dia inkscape


# NEOVIM
echo "###################################"
echo "##  Install neovim and vim-plug  ##"
echo "##  ---------------------------  ##"
echo "##  Remember to do:              ##"
echo "## ':PlugInstall' in vim         ##"
echo "###################################"
sudo apt install neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


# SNAPS
echo "####################"
echo "##  Install snap  ##"
echo "##  ------------  ##"
sudo apt install snapd

echo "==> You want install snap programs (telegram-spotify-vscode)?"
echo "==> [y to yes]"
read FLAG
echo "####################"
if [ ${FLAG} = "y" ]
then
    echo "==> Install telegram"
    sudo snap install telegram-desktop
    echo "==> Install spotify"
    sudo snap install spotify
    echo "==> Install Visual Studio Code"
    sudo snap install code --classic
    #echo "==> Install discord"
    #sudo snap install discord
fi


# CHECK FOLDER
echo "###################################################"
echo "==> Your dotfiles folder is in ~/github/dotfiles ?"
echo "==> [n to no]"
read FLAG
if [ ${FLAG} = "n" ]
then
    echo ""
    echo "====> Move it in ~/github/dotfiles"
    exit
fi
echo "###################################################"


# SET CONFIG NVIM
echo "#####################"
echo "##  Configuration  ##"
echo "##  -------------  ##"

echo "==> Nvim"
cp -r $HOME/github/dotfiles/nvim $HOME/.config/
echo ">>> Remember to do ':PlugInstall' in vim"

echo "==> Terminator"
cp -r $HOME/github/dotfiles/terminator $HOME/.config/

echo "==> VSCode"
cp -r $HOME/github/dotfiles/VSCode/*.json $HOME/.config/Code/User/
echo ">>> Remember to install extensions:"
cat $HOME/github/dotfiles/VSCode/extensions.txt

echo ">>> Remember to modify .bashrc"
echo "#####################"


# FINISH
echo "##############"
echo "##  Finish  ##"
echo "##############"