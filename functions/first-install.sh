sudo apt update -y
sudo apt upgrade -y
sudo apt-get install -y git curl wget rar

#Intall unity-tweak-tool
sudo apt-get install -y unity-tweak-tool

#Viber
cd /tmp
wget http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
sudo dpkg -i viber.deb
sudo apt-get install -y -f

#Teamviewer
cd /tmp
wget https://download.teamviewer.com/download/teamviewer_i386.deb
sudo dpkg -i teamviewer_i386.deb
sudo apt-get install -y -f

#chrome
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -y -f

#Wine
sudo echo "add-apt-repository ppa:wine/wine-builds"
sudo apt-get update
sudo apt-get install -y --install-recommends wine-staging
sudo apt-get install -y winehq-staging
sudo /opt/wine-staging/bin/winecfg
