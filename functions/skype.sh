#!/usr/bin/env bash

skype () {
    cd /tmp
    wget https://go.skype.com/skypeforlinux-64.deb
    sudo dpkg -i skypeforlinux-64.deb
    sudo apt-get install -y -f
}