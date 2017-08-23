#Winetricks
function  winetricks() {
cd /tmp
wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
sudo mv winetricks /usr/local/bin
}
winetricks
