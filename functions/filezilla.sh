#!/usr/bin/env bash

filezilla() {
    cd /tmp
    wget http://filezilla.ru/download/FileZilla_3.27.0.1_x86_64-linux-gnu.tar.bz2
    tar -xvjf FileZilla_3.27.0.1_x86_64-linux-gnu.tar.bz2
    sudo mv FileZilla3/ /opt/filezilla3/
    sudo ln -s /opt/filezilla3/bin/filezilla /usr/local/bin/filezilla
}
