#!/bin/bash
# --------------------------------
# remove .inputrc
# remove .dotfiles
# if bash_it exists; run bash-it uninstall
# remove bash-it clone
# --------------------------------
rm ~/.inputrc
rm -rf ~/.dotfiles
~/.bash_it/uninstall.sh
rm -rf ~/.bash_it
