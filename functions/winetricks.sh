#!/usr/bin/env bash

#Winetricks
winetricks() {
    cd /tmp
    wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
    chmod +x winetricks
    sudo mv winetricks /usr/local/bin
    winetricks corefonts tahoma atmlib gdiplus msxml3 msxml6 vcrun2008 vcrun2010 vcrun2012 vcrun2013
}

