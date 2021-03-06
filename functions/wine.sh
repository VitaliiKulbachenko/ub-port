#!/usr/bin/env bash

wine () {
    sudo dpkg --add-architecture i386
    wget -nc https://dl.winehq.org/wine-builds/Release.key
    sudo apt-key add Release.key
    sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/
    sudo apt-get update
    sudo apt-get install --install-recommends winehq-stable
    cd ~
    rm -rf ~/.wine
    WINEARCH=win32 WINEPREFIX=~/.wine winecfg
}
