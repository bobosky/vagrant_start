#!/usr/bin/env bash
export debian_frontend=noninteractive
echo "set grub-pc/install_devices /dev/sda" | debconf-communicate
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y --force-yes vim
sudo apt-get install -y --force-yes git
sudo apt-get install -y --force-yes byobu
sudo apt-get install -y libffi-dev python-dev python-pip libxml2-dev libxslt-dev
sudo apt-get build-dep -y libqt4-dev
sudo apt-get install -y python-qt4
# x11
sudo apt-get install -y libxtst-dev xvfb x11-xkb-utils
# fonts
#sudo apt-get install -y xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic
#sudo apt-get install -y x-ttcidfont-conf cabextract ttf-mscorefonts-installer

