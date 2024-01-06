#!/usr/bin/env bash

# Browser
printf "\e[1;32m ----------------------------------------------------------------------------- \e[0m\n\n"
printf "\e[1;32mBRAVE\e[0m\n\n"

sudo nala install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo nala update
sudo nala install brave-browser
exit