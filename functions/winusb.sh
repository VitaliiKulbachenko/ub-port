#!/usr/bin/env bash

winusb () {
    sudo echo "add-apt-repository -y ppa:nilarimogard/webupd8"
    sudo apt-get update
    sudo apt-get install winusb
}