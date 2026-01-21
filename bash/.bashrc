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

# fzf
alias cf='cd $(find . -type d | fzf)'

# rclone sync skolarbeten
alias syncup='rclone sync ~/Documents/Skolarbeten gdrive-skolarbeten: --update \
--delete-during --create-empty-src-dirs --fast-list --transfers=16 \
--checkers=32 --stats=1s --progress'
alias syncdown='rclone sync gdrive-skolarbeten: ~/Documents/Skolarbeten --update \
--delete-during --create-empty-src-dirs --fast-list --transfers=16 \
--checkers=32 --stats=1s --progress'

# Bash prompt
PS1='[\u@\h \W]\$ '

export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=Hyprland
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk
export PATH=$JAVA_HOME/bin:$PATH
export TERMINAL=/usr/bin/kitty

export EDITOR='/usr/bin/nvim'
export VISUAL='/usr/bin/nvim'

fastfetch

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
        . "/usr/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

