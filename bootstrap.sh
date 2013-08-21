#!/usr/bin/env bash

endpath="$HOME/.ferrari"
backuppath="$endpath/bak"
bundlepath="$endpath/.vim/bundle"
checkfiles=('.vim' '.vimrc' '.gvimrc' '.bashrc' '.tmux-conf')

msg() {
  printf '%b\n' "$1" >&2
}

success() {
  if [ "$ret" -eq '0' ]; then
    msg "\e[32m[✔]\e[0m ${1}${2}"
  fi
}

error() {
  msg "\e[31m[✘]\e[0m ${1}${2}"
  exit 1
}

do_backup() {
  today=`date +%Y%m%d_%s`
  for i in ${checkfiles[@]}; do
    source="$HOME/$i"
    filename=`echo $i | sed 's/\.//g'`
    [ -e $source ] && [ ! -L "$source" ] && mv $source "$backuppath/$filename.$today"
  done
  ret="$?"
  success "$1"
}

lnif() {
  if [ -e "$1" ]; then
    ln -sf "$1" "$2"
  fi
  ret="$?"
}

create_symlinks() {
  lnif "$endpath/vimrc" "$HOME/.vimrc"
  lnif "$endpath/tmux.conf" "$HOME/.tmux.conf"
  lnif "$endpath/bashrc" "$HOME/.bashrc"
  lnif "$endpath/.vim" "$HOME/.vim"

  ret="$?"
  success "$1"
}

# Setup Directory
msg "Setup personal dotfiles..."
mkdir -p $bundlepath
mkdir -p $backuppath

# Backup existing .vim stuff
msg "backing up current dotfiles..."
do_backup

# Origin Project is spf13-vim.git
msg "cloning dotfiles repository..."
git clone --recursive https://github.com/Ferrari/dotfiles.git $endpath
create_symlinks

msg "Installing Vundle"
if [ ! -d "$bundlepath/vundle" ]; then
  git clone http://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
fi

msg "installing plugins using Vundle"
vim +BundleInstall! +BundleClean +q
