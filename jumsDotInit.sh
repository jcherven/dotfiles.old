#!/bin/bash

set -e
pushd "$HOME"

# the arrays FILESLOCAL and FILESLINKED correspond by index order
FILESLOCAL=(
  "$HOME/.Xresources"
  "$HOME/.git-prompt.sh"
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
# requires a c-style loop to access array index numbers
for ((i=0; i<${#FILESLOCAL[@]}; ++i)); do
  if [ -f "${FILESLOCAL[$i]}" ];
  then
    mv "${FILESLOCAL[$i]}" "${FILESLOCAL[$i]}.default"
  fi
  ln -s "${FILESLINKED[$i]}" "${FILESLOCAL[$i]}"
done

# directory symlinks
for ((j=0; j<${#DIRSLOCAL[@]}; ++j)); do
  if [ -d "${DIRSLOCAL[$j]}" ]
  then
    mv "${DIRSLOCAL[$j]}" "${DIRSLOCAL[$j]}.default"
  fi
  ln -s "${DIRSLINKED[$j]}" "${DIRSLOCAL[$j]}"
done

source "$HOME/.bashrc"

popd

sudo apt update --fix-missing

# Install fonts-iosevka (requires adding its ppa)
sudo add-apt-repository -y ppa:laurent-boulard/fonts
sudo apt update
sudo apt install -y fonts-iosevka

# Install curl
sudo apt install -y curl

# Install base-16shell and run the jummiterm theme
git clone https://github.com/chriskempson/base16-shell.git "$HOME/.config/base16-shell"
# symlink the base16 jummiterm theme in .config/base16-shell/scripts
ln -s "$HOME/dotfiles/config/base16-shell/scripts/base16-jummiterm-dark.sh" "$HOME/.config/base16-shell/scripts/base16-jummiterm-dark.sh"
base16_jummiterm-dark

# Install shellcheck
sudo apt install -y shellcheck

# Install yarn + node (required for vim-prettier; must install before)
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install -y yarn

# Install heroku

# Install lynx
sudo apt install -y lynx

# Install Ranger
sudo apt install -y ranger

# Install Terminator (requires dbus-x11)
sudo apt install -y dbus-x11 terminator

# Install vim's ycm deps: cmake, python-dev, build-essential
sudo apt install -y build-essential cmake python3-dev

# Install neovim (ubuntu)
sudo apt install -y neovim

# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

