## Install
	sudo apt-get update
	sudo apt-get install -y bash git curl
	git config --global user.name "Matthew de Rooy"
	git config --global user.email "matt@derooy.com.au"
	git config --global url.ssh://git@github.com/.insteadOf https://github.com/
	curl -L https://raw.githubusercontent.com/derooy/dotfiles/master/install.bash | bash
	OR derooy-install
## uninstall
	curl -L https://raw.githubusercontent.com/derooy/dotfiles/master/scripts/derooy-uninstall.bash | bash
	OR derooy-uninstall
## reinstall
	curl -L https://raw.githubusercontent.com/derooy/dotfiles/master/scripts/derooy-reinstall.bash | bash
	OR derooy-reinstall



## todo

+ fancy colours
+ chsh
+ add wget command for authorized keys & securing hardening guide
+ terminator layouts to .config ( and create )
+ auto color change to background depending on server? at least PS1.
+ move .screenrc to home dir during install
+ edit screenrc to understand tabs
