#!/bin/bash
# --------------------------------
# remove .inputrc
# remove .dotfiles
# if bash_it exists; run bash-it uninstall
# remove bash-it clone
# --------------------------------
rm ~/.inputrc 2> /dev/null
rm -rf ~/.dotfiles 2> dev/null
~/.bash_it/uninstall.sh
rm -rf ~/.bash_it
