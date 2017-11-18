#!/usr/bin/env bash

endpath="$HOME/.ferrari"
backuppath="$endpath/bak"
autopath="$endpath/.vim/autoload"
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
git clone --recursive https://github.com/Ferrari/dotfiles.git $endpath
mkdir -p $backuppath

# Backup existing .vim stuff
msg "backing up current dotfiles..."
do_backup

# Origin Project is spf13-vim.git
msg "create symlink..."
create_symlinks

msg "Installing vim.plug"
if [ ! -d "$autopath" ]; then
  mkdir -p $autopath
fi

if [ ! -f "$autopath"/plug.vim ]; then
  curl -fLo "$autopath/plug.vim" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

msg "installing plugins using vim.plug"
vim +PlugInstall! +PlugClean! +q

# setup tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
