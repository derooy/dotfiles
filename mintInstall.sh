#!/bin/bash
sudo apt-get remove --purge libreoffice*
sudo apt-get clean
sudo apt-get autoremove

sudo apt-get -y install terminator vim
cd ~/
rmdir Documents/ Pictures/ Public/ Templates/ Videos/ Music/
git config --global url.ssh://git@github.com/.insteadOf https://github.com/  # TODO check readme (go get breaks)
