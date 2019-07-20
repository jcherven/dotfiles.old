#!/bin/bash

set -e
pushd "$HOME"

# the arrays FILESLOCAL and FILESLINKED correspond by index order
FILESLOCAL=(
  "$HOME/.Xresources"
  "$HOME/git-prompt.sh"
  "$HOME/.bashrc"
  "$HOME/.vimrc"
  "$HOME/.gitconfig"
  "$HOME/.lynxrc"
  "$HOME/lynx_bookmarks.html"
  "$HOME/.tmux.conf"
)

FILESLINKED=(
  "$HOME/dotfiles/Xresources"
  "$HOME/dotfiles/git-prompt.sh"
  "$HOME/dotfiles/bashrc"
  "$HOME/dotfiles/vimrc"
  "$HOME/dotfiles/gitconfig"
  "$HOME/dotfiles/lynxrc"
  "$HOME/dotfiles/lynx_bookmarks.html"
  "$HOME/dotfiles/tmux.conf"
)

# the arrays DIRSLOCAL and DIRSLINKED correspond by index order
DIRSLOCAL=(
  "$HOME/.config/gtk-3.0"
  "$HOME/.config/nvim"
  "$HOME/.config/ranger"
  "$HOME/.config/terminator"
)

DIRSLINKED=(
  "$HOME/dotfiles/config/gtk-3.0"
  "$HOME/dotfiles/config/nvim"
  "$HOME/dotfiles/config/ranger"
  "$HOME/dotfiles/config/terminator"
)

# file symlinks
for i in "${FILESLOCAL[@]}"; do
  if [ -f "${FILESLOCAL[$i]}" ]
  then
    mv "${FILESLOCAL[$i]}" "${FILESLOCAL[$i]}.default"
  fi
  ln -s "${FILESLINKED[$i]}" ".${FILESLOCAL[$i]}"
done

# directory symlinks
for j in "${DIRSLOCAL[@]}"; do
  if [ -d "${DIRSLOCAL[$j]}" ]
  then
    mv -r "${DIRSLOCAL[$j]}" "${DIRSLOCAL[$j]}.default"
  fi
  ln -s "${DIRSLINKED[$j]}" "${DIRSLOCAL[$j]}"
done

# Install fonts-iosevka (requires adding its ppa)
# Install base-16shell and run the jummiterm theme

# Install vim's ycm deps: cmake, python-dev, build-essential
# Install neovim
# Install vim-plug
# run vim and :PlugInstall

# Install shellcheck
# Install nodejs
# Install yarn
# Install heroku

# Install lynx
# Install Ranger
# Install Terminator (requires dbus-x11)

