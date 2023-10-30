#!/bin/bash

# update background list
sudo rm -rf /usr/share/backgrounds/hidebackgrounds
cd /usr/share/backgrounds
sudo git clone https://github.com/eyehide/hidebackgrounds && cd ./hidebackgrounds || { echo "Git clone failed! Exiting..."; exit 1; }

# remove current bgs
sudo rm -rf /usr/share/backgrounds/gnome/*
sudo rm -rf /usr/share/gnome-background-properties/*

# import all bgs to current install
sudo cp ./gnome/* /usr/share/backgrounds/gnome/
sudo cp ./gnome-background-properties/* /usr/share/gnome-background-properties
