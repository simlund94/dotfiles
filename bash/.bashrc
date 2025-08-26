#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Aliases
alias upd='paru -Syu --noconfirm'
alias ..='cd ..'

alias psgrep="ps aux | grep"

# git
alias gs='git status --short'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gu='git pull'
alias gl='git log'
alias gb='git branch'

# list
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -laFh'
alias l.="ls -A | grep -E '^\.'"
alias grep='grep --color=auto'

# Bash prompt
PS1='[\u@\h \W]\$ '

export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=Hyprland
export JAVA_HOME=/usr/lib/jvm/java-24-openjdk
export PATH=$JAVA_HOME/bin:$PATH

export EDITOR='/usr/bin/nvim'
export VISUAL='/usr/bin/nvim'

fastfetch
