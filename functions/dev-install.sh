
#Vnc viever
cd /tmp
wget https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-6.17.731-Linux-x64.deb
sudo dpkg -i VNC-Viewer-6.17.731-Linux-x64.deb

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


#MriaDB
sudo apt-get install software-properties-common
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
sudo add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://mariadb.mirror.triple-it.nl/repo/10.2/ubuntu xenial main'
sudo apt update && sudo apt install mariadb-server mariadb-client


