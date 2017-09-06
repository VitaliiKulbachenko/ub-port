#!/usr/bin/env bash

realvnc_viewer () {
    cd /tmp
    wget https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-6.17.731-Linux-x64.deb
    sudo dpkg -i VNC-Viewer-6.17.731-Linux-x64.deb
}