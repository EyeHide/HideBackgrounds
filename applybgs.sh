#!/bin/bash

# update background list
rm -rf /usr/share/backgrounds/hidebackgrounds
cd /usr/share/backgrounds
git clone https://github.com/eyehide/hidebackgrounds && cd ./hidebackgrounds || { echo "Git clone failed! Exiting..."; exit; }

# remove current bgs
rm -rf /usr/share/backgrounds/gnome/*
rm -rf /usr/share/gnome-background-properties/*

# import all bgs to current install
cp ./gnome/* /usr/share/backgrounds/gnome/
cp ./gnome-background-properties/* /usr/share/gnome-background-properties
