# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="dieter"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(composer git git-prompt zsh-syntax-highlighting sublime)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# pamorim seems need to be load after plugins definition
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



# Pamorim =========================================================================

# Alias
# =====
# Distribution
alias update='sudo aptitude update'
alias upgrade='sudo aptitude safe-upgrade'
alias apt-policy='sudo apt-cache policy '
alias search='sudo apt-cache search '
alias halt='sudo halt'
alias reboot='sudo reboot'

# Shortcut directory
alias ll='ls -lah --color=auto '
alias dir='ls --color=auto --format=vertical'
alias cdwww='cd ~/public_html/'

# Git
alias gitll='git log --abbrev-commit --oneline --graph --decorate'
alias gitllname='git log --abbrev-commit --oneline --name-only --graph --decorate'
alias gitfetch='git fetch --all'
alias gitst='git status'
alias gitdiffst='git diff --stat'
alias gitprune='git gc --prune=now && git clean -f -d'
alias gitrebasei30='git rebase -i HEAD~30 --keep-empty'
#alias gitrebaseiroot='git rebase -i --root --keep-empty'
alias gitrc='git rebase --continue'
alias gitmt='git mergetool'
alias gitsvnup='git svn fetch && git svn rebase'

# Netvibes
alias start-netvibes='firefox & icedove & sublime_text & xchat &'
alias vagrantup="ssh-add && cd ~/vagrant && vagrant up --provision && vagrant ssh"
alias vagrantssh="cd ~/vagrant && vagrant ssh"



# Alk ==============================================================================
[[ -z "$SSH_CONNECTION" ]] && is_local=yes
[[ $TERM = rxvt* ]] && TERM=rxvt # urxvt only, TERM value is not recognized
# when logging on ssh servers
autoload colors; colors # so we can use $fg / $bg
source /etc/profile # autojump support

# Environment
# ===========
export EDITOR=vim
# export PATH=$PATH:~/bin:~/.gem/ruby/1.9.1/bin
export PAGER=less
export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# History
# =======
export HISTSIZE=100000 # huge history size
export SAVEHIST=100000 # save all history when quitting
export HISTFILE=~/.zhistory # in this file
setopt share_history # share history between ttys
setopt hist_ignore_all_dups # do not save a command twice
setopt hist_reduce_blanks # save the command "echo plop" as "echo plop"

# Prompt
# ======
autoload -U promptinit; promptinit # collection of predefined prompts
setopt prompt_subst # Allow for functions in the prompt.
prompt_alk_setup() {
PROMPT="%{$fg_bold[blue]%}%~%(40l.
. )%{$fg_no_bold[green]%}%#%{$reset_color%} "
if [ -z "$is_local" ]; then
# Remote prompt, prepend user@host
PROMPT="%{$fg_bold[red]%}%n@%m:$PROMPT"
fi
RPROMPT="\$(prompt_git_info) %{$fg[yellow]%}%D{%m-%d %H:%M}%{$reset_color%}"
}
prompt_themes="$prompt_themes alk" # add our prompt to the collection, so we
# can select it by typing "prompt alk" and
# turning it off with "prompt off"
prompt alk # load our prompt

# Aliases
# =======
has-command () {
which $1 &> /dev/null
return $?
}
eval `dircolors -b` # nice colors with ls
alias ls="ls --color=auto"
alias l="ls --color=auto --ignore='*.pyc'"
alias vi=vim
alias v=vim
alias :e=vim
alias less='less -R'
alias k=kate
alias diffdists='ls *-dist -1 | sed "s/-dist//" | while read file; do echo "DIFF $file"; diff $file-dist $file; done'
alias psg='ps aux | grep -v grep | grep'
alias scu='systemctl --user'
# Confirm file deletion / overright
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'
# End of line aliases
alias -g P='|less' # paginate
alias -g S='&>/dev/null' # silent
alias -g CW='--color-words -w -b'
alias -g L='|& less -S'
# Open files based on their extension
alias -s png=xv
alias -s jpg=xv
alias -s jpeg=xv
if has-command ls++; then
alias ll=ls++
fi

# Pamorim - Prompt
if which fortune &> /dev/null; then
# other nice fortune (for frenchies): fortune-mod-bashfr
# Good : "bud-frog|calvin|cheese|cower|daemon|default|dragon|duck|elephant"
fortune | cowsay -f $(ls /usr/share/cowsay/cows/ | egrep -v "kiss|smaller|sodomized|head-in" | shuf | head -n1)
fi
