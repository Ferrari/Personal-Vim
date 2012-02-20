#!/bin/env sh

endpath="$HOME/.ferrari"

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

# Backup existing .vim stuff
echo "backing up current vim config\n"
today=`date +%Y%m%d`
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc; do [ -e $i ] && mv $i $i.$today; done


echo "cloning ferrari\n"
#git clone --recursive -b 3.0 git://github.com/spf13/spf13-vim.git $endpath
git clone --recursive git@github.com:Ferrari/Personal-Vim.git $endpath
mkdir -p $endpath/.vim/bundle
ln -s $endpath/vimrc $HOME/.vimrc
ln -s $endpath/.vim $HOME/.vim

echo "Installing Vundle"
git clone http://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle

echo "installing plugins using Vundle"
vim +BundleInstall! +BundleClean +q
