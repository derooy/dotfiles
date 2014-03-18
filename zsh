echo 'grabbing default oh my zsh ---------------'
curl -L http://install.ohmyz.sh | sh
echo 'grabbing .zshrc ----------------'
if [ ! -f ~/.zshrc ]; then
    echo "zshrc not found"
else
	echo "backing up to ~/.zshrc.backup"
	yes | mv ~/.zshrc ~/.zshrc.backup
fi
wget 'https://raw.github.com/derooy/dotfiles/master/.zshrc' -O ~/.zshrc 
echo 'sourcing zsh'
source ~/.zshrc