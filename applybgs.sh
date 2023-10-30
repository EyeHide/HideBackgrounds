#!/bin/bash

# update background list
sudo rm -rf /usr/share/backgrounds/hidebackgrounds
cd /usr/share/backgrounds
sudo git clone https://github.com/eyehide/hidebackgrounds && cd ./hidebackgrounds || { echo "Git clone failed! Exiting..."; exit; }

# remove current bgs
sudo rm -rf /usr/share/backgrounds/gnome/*
sudo rm -rf /usr/share/gnome-background-properties/*

# import all bgs to current install
sudo cp ./gnome/* /usr/share/backgrounds/gnome/
sudo cp ./gnome-background-properties/* /usr/share/gnome-background-properties

# refresh background cfgs
if [ "$(gsettings get org.gnome.desktop.interface color-scheme)" == "'prefer-dark'" ]; then
    gsettings set org.gnome.desktop.interface color-scheme "'prefer-light'"
    gsettings set org.gnome.desktop.interface color-scheme "'prefer-dark'"
else
    gsettings set org.gnome.desktop.interface color-scheme "'prefer-dark'"
    gsettings set org.gnome.desktop.interface color-scheme "'prefer-light'"
fi
