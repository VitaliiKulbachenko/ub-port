#!/usr/bin/env bash

base () {
    cp samples/bash/.bashrc $HOME
    sudo apt-get update && sudo apt-get upgrade -y
    sudo apt-get install -y git curl wget rar vim
    sudo apt-get install -y unity-tweak-tool
}

