echo -en "\033[37;1;41m Installer started... \033[0m \n"

source ./progress-bar.sh
enable_trapping
setup_scroll_area

#main
draw_progress_bar 5
apt update > output.log 2>&1
apt install wget > output.log 2>&1
apt install curl > output.log 2>&1
chmod +x download-from-google.sh > output.log 2>&1

#git
draw_progress_bar 10
echo -en "\033[37;1;41m Install git... \033[0m \n"
apt install git > output.log 2>&1

#nodejs
draw_progress_bar 15
echo -en "\033[37;1;41m Install nodejs... \033[0m \n"
apt install nodejs > output.log 2>&1

#skype
draw_progress_bar 20
echo -en "\033[37;1;41m Install skype... \033[0m \n"
wget https://go.skype.com/skypeforlinux-64.deb > output.log 2>&1
apt install ./skypeforlinux-64.deb > output.log 2>&1

#chrome
draw_progress_bar 25
echo -en "\033[37;1;41m Install chrome... \033[0m \n"
apt install google-chrome-stable > output.log 2>&1

#vscode
draw_progress_bar 35
echo -en "\033[37;1;41m Install vscode... \033[0m \n"
apt install software-properties-common apt-transport-https > output.log 2>&1
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/ > output.log 2>&1
sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
apt update > output.log 2>&1
apt install code > output.log 2>&1

#sfdx
draw_progress_bar 40
echo -en "\033[37;1;41m Install sfdx... \033[0m \n"
wget https://developer.salesforce.com/media/salesforce-cli/sfdx/channels/stable/sfdx-linux-x64.tar.xz > output.log 2>&1
mkdir ~/sfdx
tar xJf sfdx-linux-x64.tar.xz -C ~/sfdx --strip-components 1 > output.log 2>&1

#flameshot
draw_progress_bar 45
echo -en "\033[37;1;41m Install flameshot... \033[0m \n"
apt install flameshot > output.log 2>&1

#cs
draw_progress_bar 60
echo -en "\033[37;1;41m Install cs... \033[0m \n"
./download-from-google.sh "1QyD9qxj0_aFKGI7UdmG34aI51jCe99GP" "TEST.tar.gz" > output.log 2>&1
tar xzf TEST.tar.gz -C /home > output.log 2>&1

#zoom
draw_progress_bar 65
echo -en "\033[37;1;41m Install zoom... \033[0m \n"
wget https://zoom.us/client/latest/zoom_amd64.deb > output.log 2>&1
apt install ./zoom_amd64.deb > output.log 2>&1

#idea
draw_progress_bar 80
echo -en "\033[37;1;41m Install idea... \033[0m \n"
./download-from-google.sh "1nMCyA13W8DQuZVzN080cmy84hDHaHJo5" "ideaIU-2021.2.3.tar.gz" > output.log 2>&1
tar xzf ideaIU-2021.2.3.tar.gz -C /home > output.log 2>&1

#illuminated cloud
draw_progress_bar 90
echo -en "\033[37;1;41m Download illuminated cloud... \033[0m \n"
./download-from-google.sh "197ERNBHX5Xdd8JFbecGa-iJ-wuMDZW7S" "IlluminatedCloud2.zip" > output.log 2>&1

echo -en "\033[37;1;41m Installation completed! \033[0m \n"
echo -en "\033[37;1;41m To crack IntelliJ IDEA open it, close and after run script: \033[0m \n"
echo -en "\033[37;1;41m yes | ./idea-crack \033[0m \n"
echo -en "\033[37;1;41m To install Illuminated cloud, open IDEA, Ctrl + Alt + S > Plugins > click gear > Install Plugin from Disk... > Select tle plugin archive file. \033[0m \n"
destroy_scroll_area