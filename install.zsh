echo '---- Grabbing default ohmyzsh if not installed. ----'
curl -L http://install.ohmyz.sh | zsh
echo '---- Backup .zshrc ----'
if [ ! -f ~/.zshrc ]; then
    echo "zshrc not found"
else
	echo "backing up to ~/.zshrc.backup"
	yes | mv ~/.zshrc ~/.zshrc.backup
fi
echo '---- wGet the template from web ----'
wget 'https://raw.github.com/derooy/dotfiles/master/templates/.zshrc' -O ~/.zshrc 
echo '---- Source the .zshrc ----'
source ~/.zshrc
echo '---- Installation Complete ----'
echo 'Please relog =3 to enable zsh'
sudo chsh -s `which zsh`
