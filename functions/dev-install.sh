#Update system
sudo apt-get update && sudo apt-get upgrade

#Install base
sudo apt-get install -y git curl wget rar vim

#Vnc viever
cd /tmp
wget https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-6.17.731-Linux-x64.deb
sudo dpkg -i VNC-Viewer-6.17.731-Linux-x64.deb

#Filezilla
cd /tmp
wget http://filezilla.ru/download/FileZilla_3.27.0.1_x86_64-linux-gnu.tar.bz2
tar -xvjf FileZilla_3.27.0.1_x86_64-linux-gnu.tar.bz2
sudo mv FileZilla3/ /opt/filezilla3/
sudo ln -s /opt/filezilla3/bin/filezilla /usr/local/bin/filezilla

#PHPShtorm
cd /tmp
wget https://download.jetbrains.com/webide/PhpStorm-2017.2.1.tar.gz
tar xvf PhpStorm-2017.2.1.tar.gz
sudo mv PhpStorm-172.3544.41/ /opt/phpstorm/
sudo ln -s /opt/phpstorm/bin/phpstorm.sh /usr/local/bin/phpstorm

#Sublime-text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install -y sublime-text

#Virtualbox
cd /tmp
wget http://download.virtualbox.org/virtualbox/5.1.26/virtualbox-5.1_5.1.26-117224~Ubuntu~xenial_amd64.deb
sudo dpkg -i virtualbox-5.1_5.1.26-117224~Ubuntu~xenial_amd64.deb
sudo apt-get install -y  -f


