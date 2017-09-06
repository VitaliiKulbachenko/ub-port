#!/usr/bin/env bash

vagrant() {
    cd /tmp
    wget https://releases.hashicorp.com/vagrant/1.9.8/vagrant_1.9.8_x86_64.deb
    sudo dpkg -i vagrant_1.9.8_x86_64.deb
    sudo apt-get install -y -f
}
