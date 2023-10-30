#!/bin/bash

# update background list
cd /usr/share/backgrounds
sudo git clone https://github.com/eyehide/hidebackgrounds
cd ./hidebackgrounds

# remove current bgs
sudo rm -rf /usr/share/gnome-background-properties/*
sudo rm -rf /usr/share/backgrounds/gnome/*

# import all bgs to current install
sudo cp ./gnome-background-properties/* /usr/share/gnome-background-properties
sudo cp ./gnome/* /usr/share/backgrounds/gnome/ 
