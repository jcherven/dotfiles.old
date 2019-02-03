# Environment variable exports
  # Path exports
    # homebrew things
    export PATH=/usr/local/bin:$PATH

    # mongodb things
    export MONGO_PATH=/usr/local/Cellar/mongodb/4.*/bin
    export PATH=$PATH:$MONGO_PATH/bin
    # sql things
    export PATH=/usr/local/mysql/bin:$PATH
  # Set default editor to nvim
  export EDITOR=nvim

# Bash command history
    # export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> "$HOME"/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'

#Aliases
  # Always use colored ls output
  alias ls='ls -GFh'
  # neovim is vim for my purposes
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
  # '\$(__git_ps1)' adds current branch and change status
  # '\W' adds the name of the current directory
  export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"

# Highlighted man page output. Color defs need tweaking.
man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man $@
}
# bash-completion brew package
  [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion


# vi mode at the prompt
set -o vi

# Case insensitive bash completion
set completion-ignore-case on
set show-all-if-ambiguous on
