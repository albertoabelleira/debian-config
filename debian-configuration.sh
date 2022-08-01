#!/bin/bash
echo "Installing software"
apt-get update
apt-get upgrade
apt install git -y
apt install neovim -y
apt install jq -y
apt install wget -y
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
chmod +x /usr/local/bin/oh-my-posh
echo "Configuring software"
git clone https://github.com/albertoabelleira/ohmyposh-config.git /home/alberto/ohmyposh-config
echo "eval '$(oh-my-posh --init --shell bash --config ~/ohmyposh-config/ohmyposh-custom.linux.json)'" >> /home/alberto/.profile

