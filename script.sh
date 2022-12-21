echo -en "\033[37;1;41m Installer started... \033[0m \n"

#main
apt update
apt install wget
apt install curl
chmod +x download-from-google.sh

#git
echo -en "\033[37;1;41m Install git... \033[0m \n"
apt install git-

#nodejs
echo -en "\033[37;1;41m Install nodejs... \033[0m \n"
apt install nodejs
node -v

#skype
echo -en "\033[37;1;41m Install skype... \033[0m \n"
wget https://go.skype.com/skypeforlinux-64.deb
apt install ./skypeforlinux-64.deb

#chrome
echo -en "\033[37;1;41m Install chrome... \033[0m \n"
apt install google-chrome-stable

#vscode
echo -en "\033[37;1;41m Install vscode... \033[0m \n"
apt install software-properties-common apt-transport-https
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
apt update
apt install code

#sfdx
echo -en "\033[37;1;41m Install sfdx... \033[0m \n"
wget https://developer.salesforce.com/media/salesforce-cli/sfdx/channels/stable/sfdx-linux-x64.tar.xz
mkdir ~/sfdx
tar xJf sfdx-linux-x64.tar.xz -C ~/sfdx --strip-components 1

#flameshot
echo -en "\033[37;1;41m Install flameshot... \033[0m \n"
apt install flameshot

#cs
echo -en "\033[37;1;41m Install cs... \033[0m \n"
./download-from-google.sh "1QyD9qxj0_aFKGI7UdmG34aI51jCe99GP" "TEST.tar.gz"
tar xzf TEST.tar.gz -C /home

#zoom
echo -en "\033[37;1;41m Install zoom... \033[0m \n"
wget https://zoom.us/client/latest/zoom_amd64.deb
apt install ./zoom_amd64.deb

#idea
echo -en "\033[37;1;41m Install idea... \033[0m \n"
./download-from-google.sh "1nMCyA13W8DQuZVzN080cmy84hDHaHJo5" "ideaIU-2021.2.3.tar.gz"
tar xzf ideaIU-2021.2.3.tar.gz -C /home

#illuminated cloud
echo -en "\033[37;1;41m Download illuminated cloud... \033[0m \n"
./download-from-google.sh "197ERNBHX5Xdd8JFbecGa-iJ-wuMDZW7S" "IlluminatedCloud2.zip"

echo -en "\033[37;1;41m Installation completed! \033[0m \n"
echo -en "\033[37;1;41m To crack IntelliJ IDEA open it, close and after run script: \033[0m \n"
echo -en "\033[37;1;41m yes | ./idea-crack \033[0m \n"
echo -en "\033[37;1;41m To install Illuminated cloud, open IDEA, Ctrl + Alt + S > Plugins > click gear > Install Plugin from Disk... > Select tle plugin archive file. \033[0m \n"