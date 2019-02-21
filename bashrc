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
  export EDITOR=vim

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
  # Define ANSI colors like this:
  # \[\033[0;<ansivalue>m]
  # Define 256 colors like this:
  # \[\033[38;5;<rgbvalue>m\]
  jummigreen="\[\033[38;5;35m\]"
  jummiblue="\[\033[38;5;75m\]"
  jummipurple="\[\033[38;5;133m\]"
  # reset for normal colored command input
  reset="\[\033[0m\]"
  # '\u'              current username
  # '\$(__git_ps1)'   current branch and change status
  # '\W'              current base directory
  # export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"
  export PS1="$jummipurple\u$jummigreen\$(__git_ps1)$jummiblue \W $ $reset"

# Highlighted man page output.
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
