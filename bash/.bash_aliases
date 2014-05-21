# Pedro - Aliases de commande
# alias nom_de_votre_alias='commande de votre alias'
# System
alias df='df -h'
alias du='du -h'

alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour

#Distribution
alias update='sudo aptitude update'
alias upgrade='sudo aptitude safe-upgrade'
alias apt-policy='sudo apt-cache policy '
alias search='sudo apt-cache search '

# shortcut directory
alias ll='ls -lah --color=auto '
alias dir='ls --color=auto --format=vertical'

alias cdwww='cd ~/www/'

alias wifi='wicd-curses'

alias halt='sudo halt'
alias reboot='sudo reboot'

#Environnement de dev
alias start_bd='skype & | firefox & | thunderbird'

#Awesome
alias awesometest='~/src/awesome start'

# Git
alias gitll='git log --abbrev-commit --oneline --graph --decorate'
alias gitllname='git log --abbrev-commit --oneline --name-only --graph --decorate'
alias gitfetch='git fetch --all'
alias gitst='git status'
alias gitdiffst='git diff --stat'
alias gitprune='git gc --prune=now && git clean -f -d'
alias gitrebase='git rebase -i HEAD~30'
alias gitrr='git rebase -i --root'
