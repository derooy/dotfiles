#!/bin/sh

echo '\e[1;34m---- Grabbing default ohmyzsh if not installed. ----\e[0m'
curl -L http://install.ohmyz.sh | zsh
echo '\e[1;34m---- Backup .zshrc ----\e[0m'
if [ ! -f ~/.zshrc ]; then
	echo "zshrc not found"
else
	echo "backing up to ~/.zshrc.backup"
	yes | mv ~/.zshrc ~/.zshrc.backup
fi
echo '\e[1;34m---- wGet the template from web ----\e[0m'
wget 'https://raw.github.com/derooy/dotfiles/master/templates/zshrc' -O ~/.zshrc 
echo '\e[1;34m---- Source the .zshrc ----\e[0m'
source ~/.zshrc
echo '\e[1;34m---- Source the .zshrc ----\e[0m'
echo '\e[1;34m---- Installation Complete ----\e[0m'
echo '\e[1;34mPlease relog =3 to enable zsh\e[0m'
sudo chsh -s $(which zsh)

