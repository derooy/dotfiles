# bash-it
alias derooy-update-custom="bash ~/.bash_it/custom/derooy-update-custom.sh"
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

#vagrant
alias vp='vagrant provision'
alias vu='vagrant up'

