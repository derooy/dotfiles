
###zsh
	curl -L http://derooy.com.au/zsh | zsh
	chsh -s `which zsh` (maybe fixed)
	relog (get told during install)

###bash
	curl -L http://derooy.com.au/bash | bash

#dependency
	curl
	the expected shell

#todo
	move files into $home/projects
	allow cd p {$home/projects}
	make default ohmyzsh update if installed
	ln alias {alias ln --symbolic source destination}

#zsh
1. Uses [Oh my zsh](https://github.com/robbyrussell/oh-my-zsh) as default install.
2. Changes shell to zsh
3. Grabs and sources my edits to the default (by copying template)
