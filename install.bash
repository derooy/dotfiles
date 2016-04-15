#!/bin/bash
# -----------------------------------------------
# 2. depth 1 clone bash it
# 3. run bash_it install
# 4. set theme to zork
# 5. set default plugins
# 6. set default completions
# 7. get custom (clone dotfiles)
# 8. set tab completion insensitive to caps
# 9. git push.default simple
# 10. url.ssh://git@github.com/.insteadOf https://github.com/
# -----------------------------------------------
# settings
plugins=(alias-completion base explain)
aliases=()
completions=(defaults git ssh vagrant git_flow_avh bash-it)
# -----------------------------------------------
#install or update of bash-it
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it #because not possible to fetch depth=1 safely
bash ~/.bash_it/install.sh

source ~/.bashrc #so new theme and can get plugins etc.
cd ~/
# unset all plugins, alias' and compltetions
bash-it disable plugin all
bash-it disable alias all
bash-it disable completion all

#set my default plugins
for i in "${plugins[@]}"
do
	bash-it enable plugin $i
done
#set my default alias'
for i in "${aliases[@]}"
do
	bash-it enable alias $i
done
#set my default completions
for i in "${completions[@]}"
do
	bash-it enable completion $i
done

#get custom alias' completions and plugins from github
git clone --depth=1 https://github.com/derooy/dotfiles.git ~/.dotfiles
cd ~/.dotfiles/autoSource
user=$(whoami)

echo "updating aliases into bash-it"
FILES=~/.dotfiles/autoSource/*
for f in $FILES
do
filename=$(basename "$f")
echo ln -s "$f" "/home/$user/.bash_it/custom/$filename"
ln -s "$f" "/home/$user/.bash_it/custom/$filename"
done
echo "tab completion case insenstive"
echo "\$include /etc/inputrc" >> ~/.inputrc
echo "set completion-ignore-case On" >> ~/.inputrc
git config --global push.default simple

mkdir -p ~/.bash_it/custom/themes/derooy
ln -s ~/.dotfiles/customTheme/derooy.theme.bash ~/.bash_it/custom/themes/derooy/derooy.theme.bash
#set theme to derooy which is zork with more things
sed -i '/export BASH_IT_THEME=/ s/bobby/derooy/' ~/.bashrc

#tell user things
echo "--= please run reload =--"
