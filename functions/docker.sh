#!/usr/bin/env bash

docker () {
    sudo apt-get update
    sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
    echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
    sudo apt-get update

    #Следующая команда позволяет переключиться из репозитория Ubuntu 16.04 в репозиторий Docker:
    apt-cache policy docker-engine
    sudo apt-get install -y docker-engine

    #добавьте своего пользователя в группу docker:
    sudo usermod -aG docker $(whoami)
    gnome-session-quit

    #Install docker-compose	
    sudo curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/1.16.0/docker-compose-$(uname -s)-$(uname -m)"
    sudo chmod +x /usr/local/bin/docker-compose
}
