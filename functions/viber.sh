#!/usr/bin/env bash

viber () {
    cd /tmp
    wget http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
    sudo dpkg -i viber.deb
    sudo apt-get install -y -f
}