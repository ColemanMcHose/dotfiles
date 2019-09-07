#bxport PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \w\[\033[0;32m\] - [$(git branch 2>/dev/null | grep "^*" | colrm 1 2)\[\033[0;32m\]]\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\]\[\033[0m\] '
#export PS1="\\w:\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

export USER_HOME="$HOME"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias eclim=/Applications/Eclipse.app/Contents/Eclipse/eclimd
alias lew=./gradlew
alias lew wl='./gradlew writelocks --write-locks'
alias mmparse='./gradlew mparse'

alias sb='source ~/.bash_profile'

alias c='clear'
alias l='ls'
alias h='history'	
alias hs='h | grep '	
alias ds='l | grep '	
alias t='tree'	
alias tre='tree'	
alias ts='t -f | grep '	
alias supercat='find . -type f -exec cat {} +'
alias chall='chmod 777 *'

## get rid of command not found ##
alias cd..='cd ..'
 
## a quick way to get out of current directory ##
alias .='cd ..'
alias ..='cd ../../'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias vi=vim
alias v=vim
alias ivm=vim
alias mvi=vim
alias vmi=vim
alias iv=vim
alias miv=vim

alias ports='netstat -tulanp'

alias rub='~/.scripts/rub.sh'

# bash-completion
source ~/.git-completion.bash

#minikube stuff
alias mk='minikube'
alias mkd='mk dashboard'
alias k='kubectl'
alias kgp='kubectl get pods -A'
alias kpf='kubectl port-forward '

alias bad="./build-and-deploy-"+dirname+".sh"
alias eclipse='/Applications/Eclipse.app/Contents/MacOS/eclipse &'
alias sk='skaffold'
alias skrk='sk run && mkd'
alias skd='sk dev'
alias skdel='sk delete'
alias skr='skdel && sk run'

alias mango='ulimit -n 2000 && mongod'
alias yomane='yo @platform/leaf-service'
alias bar='sh ~/code/dev/core/workflow-app/deployment/scripts/build-and-redeploy-workflow-app-image.sh'

