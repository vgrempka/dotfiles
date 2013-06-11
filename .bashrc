########################################
#
#        SHARED CONFIG FILE
#
########################################

# Fix locals issue
export LC_ALL=C

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# Node path
export NODE_PATH='/usr/local/lib/node_modules'

# PS1 colored for git
source ~/linux-configs/.git-prompt.sh
export LS_OPTIONS='--color=auto'
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# System alias
alias ls='ls -G'
alias l='ls'
alias ll='ls -lh'
alias la='ls -lah'
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias git-pull-sub='git submodule foreach git pull origin master'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias c='clear'

# System functions
extract () {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)   tar xjf $1     ;;
			*.tar.gz)    tar xzf $1     ;;
			*.bz2)       bunzip2 $1     ;;
			*.rar)       unrar e $1     ;;
			*.gz)        gunzip $1      ;;
			*.tar)       tar xf $1      ;;
			*.tbz2)      tar xjf $1     ;;
			*.tgz)       tar xzf $1     ;;
			*.zip)       unzip $1       ;;
			*.Z)         uncompress $1  ;;
			*.7z)        7z x $1        ;;
		  	*) echo "'$1' cannot be extracted via extract()" ;;
	  	esac
  	else
	 	echo "'$1' is not a valid file"
  	fi
}

function mcd() {
  mkdir -p "$1" && cd "$1";
}

PS1="\[\e]0;\w\a\]$PS1"

