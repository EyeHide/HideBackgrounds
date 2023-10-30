#!/bin/bash

# remove current bgs
sudo rm -rf /usr/share/gnome-backgrounds-properties/*
sudo rm -rf /usr/share/background/gnome/*

# import all bgs to current install
sudo cp ./gnome-background-properties/* /usr/share/gnome-background-properties
sudo cp ./gnome/* /usr/share/backgrounds/gnome/ 
