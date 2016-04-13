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
## script to update remote authorized keys
	name = derooy-authorized-keys-github
	chmod 400
	curl -L file > file


## todo

+ fancy colours
+ chsh
+ add wget command for authorized keys & securing hardening guide
+ terminator layouts to .config ( and create )
+ auto color change to background depending on server? at least PS1.
+ move .screenrc to home dir during install
+ edit screenrc to understand tabs
