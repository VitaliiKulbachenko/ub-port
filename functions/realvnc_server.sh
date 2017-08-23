#Vnc server
cd /tmp
wget https://www.realvnc.com/download/file/vnc.files/VNC-6.1.1-Linux-x64-DEB.tar.gz
tar -xvf VNC-6.1.1-Linux-x64-DEB.tar.gz
sudo dpkg -i VNC-Server-6.1.1-Linux-x64.deb
sudo vnclicense -add 42BD4-7H756-XG5C9-3MF7W-AB25A
sudo systemctl enable vncserver-x11-serviced.service
sudo systemctl start vncserver-x11-serviced.service