#update system
sudo apt-get update && sudo apt-get upgrade

#install base
sudo apt-get install -y git vim wget  

#install Filezilla
cd /tmp
wget http://filezilla.ru/download/FileZilla_3.27.0.1_x86_64-linux-gnu.tar.bz2
tar -xvjf FileZilla_3.27.0.1_x86_64-linux-gnu.tar.bz2
sudo mv FileZilla3/ /opt/filezilla3/
sudo ln -s /opt/filezilla3/bin/filezilla /usr/local/bin/filezilla

#install PHPShtorm
cd /tmp
wget https://download.jetbrains.com/webide/PhpStorm-2017.2.1.tar.gz
tar xvf PhpStorm-2017.2.1.tar.gz
sudo mv PhpStorm-172.3544.41/ /opt/phpstorm/
sudo ln -s /opt/phpstorm/bin/phpstorm.sh /usr/local/bin/phpstorm


