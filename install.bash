#!/bin/bash
#remove previous install
cd ~/
rm -rf ~/.bash_it
rm ~/.bashrc.bak
#install or update of bash-it
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
cd ~/.bash_it
#install bash_it
./install.sh
source ~/.bashrc
#set theme to zork
sed -i '/export BASH_IT_THEME=/ s/bobby/zork/' ~/.bashrc
source ~/.bashrc
cd ~/
#set my default plugins
plugins=(dirs base explain extract fasd git history nginx projects hub ssh)
for i in "${plugins[@]}"
do
        bash-it enable plugin $i
done
#set my default alias'
aliases=(apt git vim vagrant docker)
for i in "${aliases[@]}"
do
        bash-it enable alias $i
done
#set my default completions
completions=(defaults dirs git hub projects ssh vagrant)
for i in "${completions[@]}"
do
        bash-it enable completion $i
done
#get custom alias' completions and plugins from github
