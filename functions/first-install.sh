sudo apt update && sudo apt upgrade 
sudo apt-get install -y git curl wget rar vim vlc

#Intall unity-tweak-tool
sudo apt-get install -y unity-tweak-tool

#Viber
cd /tmp
wget http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
sudo dpkg -i viber.deb
sudo apt-get install -y -f

#Telegram
sudo echo "add-apt-repository ppa:atareao/telegram"
sudo apt update
sudo apt install telegram

#Skype
cd /tmp
wget https://go.skype.com/skypeforlinux-64.deb
sudo dpkg -i skypeforlinux-64.deb
sudo apt-get install -y -f

#Teamviewer
cd /tmp
wget https://download.teamviewer.com/download/teamviewer_i386.deb
sudo dpkg -i teamviewer_i386.deb
sudo apt-get install -y -f

#Chrome
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -y -f

#Wine
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/
sudo apt-get update
sudo apt-get install --install-recommends winehq-stable

#Indicator-ip
sudo echo "apt-add-repository ppa:bovender/bovender"
sudo apt-get update
sudo apt-get install -y indicator-ip
sudo indicator-ip -i wlp6s0  --autostart 

#Vnc server
cd /tmp
wget https://www.realvnc.com/download/file/vnc.files/VNC-6.1.1-Linux-x64-DEB.tar.gz
tar -xvf VNC-6.1.1-Linux-x64-DEB.tar.gz
sudo dpkg -i VNC-Server-6.1.1-Linux-x64.deb
sudo vnclicense -add 42BD4-7H756-XG5C9-3MF7W-AB25A
sudo systemctl enable vncserver-x11-serviced.service
sudo systemctl start vncserver-x11-serviced.service




