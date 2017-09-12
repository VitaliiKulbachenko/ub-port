#!/usr/bin/env bash

gscan2pdf () {
    sudo apt-add-repository ppa:jeffreyratcliffe/ppa
	sudo apt-get update
	sudo apt-get install gscan2pdf
}