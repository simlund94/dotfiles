#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval "$(fzf --bash)"

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

# rclone sync skolarbeten
alias syncup='rclone sync ~/Documents/Skolarbeten gdrive-skolarbeten: --update \
--delete-during --create-empty-src-dirs --fast-list --transfers=16 \
--checkers=32 --stats=10s --progress'
alias syncdown='rclone sync gdrive-skolarbeten: ~/Documents/Skolarbeten --update \
--delete-during --create-empty-src-dirs --fast-list --transfers=16 \
--checkers=32 --stats=10s --progress'

# Bash prompt
PS1='[\u@\h \W]\$ '

export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=Hyprland
export JAVA_HOME=/usr/lib/jvm/java-24-openjdk
export PATH=$JAVA_HOME/bin:$PATH
export TERMINAL=/usr/bin/kitty

export EDITOR='/usr/bin/nvim'
export VISUAL='/usr/bin/nvim'

fastfetch
