## Install
	sudo apt-get update
	sudo apt-get install -y bash git curl
	git config --global user.name "Matthew de Rooy"
	git config --global user.email "matt@derooy.com.au"
	curl -L https://raw.githubusercontent.com/derooy/dotfiles/master/install.bash | bash
	OR derooy-install
## uninstall
	curl -L https://raw.githubusercontent.com/derooy/dotfiles/master/scripts/derooy-uninstall.bash | bash
	OR derooy-uninstall
## reinstall
	curl -L https://raw.githubusercontent.com/derooy/dotfiles/master/scripts/derooy-reinstall.bash | bash
	OR derooy-reinstall
## colours
	red = remote/production
	blue = kodi
	green = home
	red = others

## todo

+ default clone is https for anonymous, but if I want write access: "git remote set-url origin git@github.com:derooy/dotfiles.git"
+ terminator layouts to .config ( and create )
+ auto color change to background depending on server? at least PS1.
+ .screenrc