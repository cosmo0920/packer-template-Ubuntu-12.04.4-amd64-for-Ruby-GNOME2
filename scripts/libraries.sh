#!/bin/bash

sudo apt-get install -y software-properties-common python-software-properties
sudo add-apt-repository --yes ppa:gstreamer-developers/ppa
sudo apt-get update -qq
sudo apt-get install -qq -y libgirepository1.0-dev libgstreamer1.0-plugins-good gir1.2-clutter-1.0 gir1.2-clutter-gst-1.0 gir1.2-gtkclutter-1.0 hicolor-icon-theme gnome-icon-theme
