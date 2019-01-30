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

* ssh/config identfile not working
* mkdir .ssh chmod as per OSMC raspberry pi 2/3 google doc

```
An alternative to using git@github.com is to generate a personal access token on your GitHub account, grant it repo access, and then use the following instead:

git config --global url."https://${GITHUB_TOKEN}:x-oauth-basic@github.com/".insteadOf "https://github.com/"

That should still work with go get -u, and also works with Docker builds (my particular use case, and how I came across your gist).
```