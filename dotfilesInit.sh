#!/bin/bash

set -e
pushd "$HOME"

# Symlinks for files that are located in ~/
# the arrays FILESLOCAL and FILESLINKED correspond by index order
FILESLOCAL=(
  "$HOME/.Xresources"
  "$HOME/.git-prompt.sh"
  "$HOME/.bashrc"
  "$HOME/.vimrc"
  "$HOME/.vimrc_background"
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
  "$HOME/dotfiles/vimrc_background"
  "$HOME/dotfiles/gitconfig"
  "$HOME/dotfiles/lynxrc"
  "$HOME/dotfiles/lynx_bookmarks.html"
  "$HOME/dotfiles/tmux.conf"
)

# Symlinks for directories that are located in ~/.config
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

# ~/ dot file symlinks
# requires a c-style loop to access array index numbers
for ((i=0; i<${#FILESLOCAL[@]}; ++i)); do
  if [ -f "${FILESLOCAL[$i]}" ];
  then
    mv "${FILESLOCAL[$i]}" "${FILESLOCAL[$i]}.default"
  fi
  ln -s "${FILESLINKED[$i]}" "${FILESLOCAL[$i]}"
done

# ~/.config directory symlinks
for ((j=0; j<${#DIRSLOCAL[@]}; ++j)); do
  if [ -d "${DIRSLOCAL[$j]}" ]
  then
    mv "${DIRSLOCAL[$j]}" "${DIRSLOCAL[$j]}.default"
  fi
  ln -s "${DIRSLINKED[$j]}" "${DIRSLOCAL[$j]}"
done

UBUNTU_PACKAGES=(
  lynx
  shellcheck
  ranger
  dbus-x11
  terminator
  neovim
  build-essential
  cmake
  python-dev
)

sudo apt update --fix-missing

# Install curl
sudo apt install -y curl

# Configure and install Ubuntu software packages with external repos or sources
# yarn + node js
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt install -y yarn
# fonts-iosevka
sudo add-apt-repository -y ppa:laurent-boulard/fonts
sudo apt update
sudo apt install -y fonts-iosevka

# Install shellcheck
sudo apt install -y shellcheck

# Install lynx
sudo apt install -y lynx

# Install ranger
sudo apt install -y ranger

# Install terminator (requires dbus-x11 on WSL for X window usage)
sudo apt install -y dbus-x11 terminator

# Install neovim (ubuntu)
sudo apt install -y neovim

# Install vim's plugin deps: cmake, python-dev, build-essential
sudo apt install -y build-essential cmake python-dev

# Install base-16shell and run the jummiterm theme
if [ ! -d "$HOME/.config/base16-shell" ]; then
  git clone https://github.com/chriskempson/base16-shell.git "$HOME/.config/base16-shell"
fi

# symlink the base16 jummiterm theme in .config/base16-shell/scripts
if [ ! -l "$HOME/.config/base16-shell/scripts/base16-jummiterm-dark.sh" ]; then
  ln -s "$HOME/dotfiles/config/base16-shell/scripts/base16-jummiterm-dark.sh" "$HOME/.config/base16-shell/scripts/base16-jummiterm-dark.sh"
  source "$HOME/.config/base16-shell/scripts/base16-jummiterm-dark.sh"
fi

# Install heroku

# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Run vim headless and install plugins with vim-plug
nvim --headless +PlugInstall +qa

sudo apt upgrade -y

echo "dotfileInit.sh has completed."

