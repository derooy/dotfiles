# bash-it
alias derooy-install="bash ~/.dotfiles/scripts/derooy-install.bash"
alias derooy-uninstall="bash ~/.dotfiles/scripts/derooy-uninstall.bash"
alias derooy-reinstall="bash ~/.dotfiles/scripts/derooy-reinstall.bash"
alias derooy-authorized-keys-github="bash ~/.dotfiles/scripts/derooy-authorized-keys-github.bash"
alias derooy-writable="bash ~/.dotfiles/scripts/derooy-writable.bash"
alias derooy-upgrade-dotfiles="dotfiles && gl && reload"
alias derooy-upgrade-bash-it="bash-it update"
# directories
alias ..='cd ..'
alias dotfiles='cd ~/.dotfiles'
# random
alias c='clear'
alias q='exit'
alias f='sudo find / -name'
alias ds='du -hs * | sort -h'
alias l='ls -lh'
alias la='ls -lAh'
alias ls='ls --color=auto'
# git
alias gs='git status'
alias gc='git commit -v -a'
alias ga='git add .'
alias gl='git pull'
alias gp='git push'
# screen
alias sls="screen -ls" #list screens
alias sd="screen -dmS" #screen in daemon mode
alias sr="screen -x" #connect to screen w/ multi allowed
alias ss="screen -S" #create screen with name
alias slsa='sudo ls -laR /var/run/screen/'
# apt
alias in='sudo apt-get install'
alias se='sudo apt-cache search'
alias po='sudo apt-cache policy'
alias upt='sudo apt-get update'
alias upg='sudo apt-get upgrade'
alias ppal='grep ^ /etc/apt/sources.list /etc/apt/sources.list.d/*'
function ppa() {
	sudo add-apt-repository ppa:$@
}
COMMIT_NAMES=("[1] Bugfix", "[2] Refactoring", "[3] Documentation", "[4] New Feature", "[5] Tests", "[6] Work In Progress", "[7] Cosmetic", "[8] Removal", "[9] Initial Commit", "[10] Metadata", "[11] Tooling", "[12] Performance", "[13] Version Tag", "[14] Deprecation", "[15] Internationalization")
EMOTES=(":bug:", ":recycle:", ":books:", ":sparkles:", ":rotating_light:", ":construction:", ":art:", ":wastebasket:", ":tada:", ":card_index:", ":wrench:", ":racehorse:", ":bookmark:", ":hankey:", ":globe_with_meridians:")
function gca() {
	git pull
	git add .
	echo ${COMMIT_NAMES[*]}
	read -e -p "emote [1-15]: " EMOTE
	read -e -p "msg: " MSG
	git commit -a -m "${EMOTES[$((EMOTE-1))]} $MSG"
	git push
}

#vagrant
alias vp='vagrant provision'
alias vu='vagrant up'

