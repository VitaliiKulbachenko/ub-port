#!/usr/bin/env bash

php_shtorm () {
    cd /tmp
    wget https://download.jetbrains.com/webide/PhpStorm-2017.2.1.tar.gz
    tar xvf PhpStorm-2017.2.1.tar.gz
    sudo mv PhpStorm-172.3544.41/ /opt/phpstorm/
    sudo ln -s /opt/phpstorm/bin/phpstorm.sh /usr/local/bin/phpstorm
}