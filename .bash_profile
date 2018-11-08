# Terminal colors
#    export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
#    export CLICOLOR=1
#    export LSCOLORS=ExFxBxDxCxegedabagacad

# Path export for homebrew things
export PATH=/usr/local/bin:$PATH

# Bash command history
    export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> "$HOME"/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'

#Aliases
alias ls='ls -GFh'
alias sheetdate='date +"%y-%m-%d-%a"'
alias vim='nvim'

# Git-friendly command prompt
    source ~/git-prompt.sh
    export GIT_PS1_SHOWDIRTYSTATE=1

    # Git prompt color definitions
    green="\[\033[0;32m\]"
    blue="\[\033[0;34m\]"
    purple="\[\033[0;35m\]"
    reset="\[\033[0m\]"

    # '\u' adds the name of the current user to the prompt
    # '\$(__git_ps1)' adds git-related stuff
    # '\W' adds the name of the current directory
    export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"

# bash-completion brew package
    [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Set default editor to nvim
export EDITOR=nvim

# vi mode at the prompt
set -o vi

# Show editing mode in prompt (only works in bash 4)
# set show-mode-in-prompt on

