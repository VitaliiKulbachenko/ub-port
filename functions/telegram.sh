#!/usr/bin/env bash

telegram () {
    sudo echo "add-apt-repository ppa:atareao/telegram"
    sudo apt update
    sudo apt install telegram
}