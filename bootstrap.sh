#!/usr/bin/env bash

# Update and upgrade
sudo apt update -y && sudo apt upgrade -y

# Install Flatpak
sudo apt install -y flatpak gnome-software-plugin-flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Uninstall Firefox ESR
# sudo apt remove -y firefox-esr

# Uninstall LibreOffice
sudo apt remove -y libreoffice-common libreoffice-core libreoffice-gnome libreoffice-gtk3 libreoffice-help-common libreoffice-help-en-us libreoffice-style-colibre libreoffice-style-elementary

# Setup Backports
echo "deb http://deb.debian.org/debian bookworm-backports main" | sudo tee /etc/apt/sources.list.d/backports.list

# Setup non-free repository
echo "deb http://deb.debian.org/debian bookworm main non-free-firmware contrib non-free" | sudo tee /etc/apt/sources.list.d/non-free.list
