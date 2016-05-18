#!/bin/bash

#add R
sudo apt-add-repository 'deb http://mirror.bjtu.edu.cn/cran/bin/linux/ubuntu trusty/'
#add emacs daily
sudo apt-add-repository -y ppa:ubuntu-elisp/ppa
#add numix theme
sudo apt-add-repository -y ppa:numix/ppa
#add shadowsocks-qt5
sudo add-apt-repository -y ppa:hzwhuang/ss-qt5
#add ubuntu-tweak
sudo add-apt-repository -y ppa:tualatrix/ppa

#upgrading
sudo apt-get update && sudo apt-get upgrade

#install softwares from repositories
sudo apt-get install aptitude
#uninstall thunderbird
sudo aptitude purge thunderbird
#using aptitude to install softwares
sudo aptitude install gimp inkscape synaptic goldendict \
ttf-wqy-microhei ttf-wqy-zenhei xfonts-wqy git-all \
emacs-snapshot emacs-snapshot-el r-base uget filezilla \
calibre vlc lyx ubuntu-tweak numix-icon-theme \ 
numix-icon-theme-circle gdebi fcitx fcitx-googlepinyin \
shadowsocks-qt5

#install mendeley
#http://desktop-download.mendeley.com/download/apt/pool/main/m/mendeleydesktop/mendeleydesktop_1.16.1-stable_amd64.deb
wget -c www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
sudo dpkg -i mendeleydesktop-latest
sudo apt-get install -f

#install zotero-standalone
wget https://raw.github.com/smathot/zotero_installer/master/zotero_installer.sh -O /tmp/zotero_installer.sh
chmod +x /tmp/zotero_installer.sh
/tmp/zotero_installer.sh
#or
#sudo add-apt-repository ppa:smathot/cogscinl
#sudo apt-get update
#sudo apt-get install zotero-standalone

#config git
git config --global user.name "lix90"
git config --global email.name "its.lix@outlook.com"

echo "done!"
