#!/bin/bash
#remove previous install
cd ~/ # so im not in .bash_it folder to begin with
rm -rf ~/.bash_it
rm ~/.bashrc.bak # to stop interaction with (are you sure? y/n)
#install or update of bash-it
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it #because not possible to fetch depth=1 safely
cd ~/.bash_it
#install bash_it
./install.sh
#set theme to zork
sed -i '/export BASH_IT_THEME=/ s/bobby/zork/' ~/.bashrc
source ~/.bashrc #so new theme and can get plugins etc.
cd ~/
#set my default plugins
plugins=()
for i in "${plugins[@]}"
do
	bash-it enable plugin $i
done
#set my default alias'
aliases=()
for i in "${aliases[@]}"
do
	bash-it enable alias $i
done
#set my default completions
completions=(defaults git ssh vagrant git_flow_avh)
for i in "${completions[@]}"
do
	bash-it enable completion $i
done
#get custom alias' completions and plugins from github
