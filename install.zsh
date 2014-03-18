echo 'grabbing default oh my zsh ---------------'
curl -L http://install.ohmyz.sh | zsh
echo 'grabbing .zshrc ----------------'
if [ ! -f ~/.zshrc ]; then
    echo "zshrc not found"
else
	echo "backing up to ~/.zshrc.backup"
	yes | mv ~/.zshrc ~/.zshrc.backup
fi
wget 'https://raw.github.com/derooy/dotfiles/master/templates/.zshrc' -O ~/.zshrc 
echo 'sourcing zsh'
source ~/.zshrc
chsh -s `which zsh`