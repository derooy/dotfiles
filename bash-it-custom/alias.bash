alias derooy-update-custom="bash ~/.bash_it/custom/derooy-update-custom.sh"
#list
alias l='ls -l'
alias gs='git status'
alias gc='git commit -v -a'
alias ga='git add .'
#screen
alias sls="screen -ls" #list screens
alias sd="screen -dmS" #screen in daemon mode
alias sr="screen -x" #connect to screen w/ multi allowed
alias ss="screen -S" #create screen with name
alias slsa='sudo ls -laR /var/run/screen/'
#zsh
alias c='clear'
alias q='exit'
alias f='sudo find / -name'
alias ds='du -hs * | sort -h'
alias rm='/bin/rm' #undo rm -i from plugin
alias ln='echo "ln -s {source} {destination}"; ln -s'

#apt-get
alias in='sudo apt-get install'
alias se='sudo apt-cache search'
alias po='sudo apt-cache policy'
alias upt='sudo apt-get update'
alias upg='sudo apt-get upgrade'
function ppa() {
	sudo add-apt-repository ppa:$@
}

#vagrant
alias vp='vagrant provision'
alias vu='vagrant up'

alias ppal='grep ^ /etc/apt/sources.list /etc/apt/sources.list.d/*'
