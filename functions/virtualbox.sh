#!/usr/bin/env bash

virtualbox () {
    cd /tmp
    wget http://download.virtualbox.org/virtualbox/5.1.26/virtualbox-5.1_5.1.26-117224~Ubuntu~xenial_amd64.deb
    sudo dpkg -i virtualbox-5.1_5.1.26-117224~Ubuntu~xenial_amd64.deb
    sudo apt-get install -y  -f
}