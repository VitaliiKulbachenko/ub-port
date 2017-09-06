#!/usr/bin/env bash

indicator_ip() {
    sudo apt-add-repository "ppa:bovender/bovender"
    sudo apt-get update
    sudo apt-get install -y indicator-ip
    sudo indicator-ip --autostart
}
