#!/usr/bin/env bash

teamviewer () {
    cd /tmp
    wget https://download.teamviewer.com/download/teamviewer_i386.deb
    sudo dpkg -i teamviewer_i386.deb
    sudo apt-get install -y -f
}