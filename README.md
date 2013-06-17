## Personal Vimrc

This is my personal vim config  
Nothing special, just for backup.

vim plugin management based on [vundle](https://github.com/gmarik/vundle)

Migrate with [spf13-vim](https://github.com/spf13/spf13-vim)

## Install

```
curl https://github.com/Ferrari/Personal-Vim/raw/master/bootstrap.sh -L -o - | sh
```

## Update

```
vim +BundleInstall! +BundleClean! +q
```

If you want to use [syntastic](https://github.com/scrooloose/syntastic) to check syntax, make sure you also have the tool. 
Ex: I use JS, so `npm install -g jshint` first!

## ChangeLog

* v1.1.2 - [jade](https://github.com/digitaltoad/vim-jade) template support
* v1.1.1 - sudo hack [w!!](https://coderwall.com/p/xp9kjw)
* v1.1.0 - [zencoding] for faster html development
* v1.0.8 - [vim-jst](https://github.com/briancollins/vim-jst) for ejs template editing.
* v1.0.7 - add [vim-gitgutter](https://github.com/airblade/vim-gitgutter) to show git diff, there is a issue with Syntastic, so set it to passive mode
* v1.0.6 - add [yaml](https://github.com/ingydotnet/yaml-vim) support
* v1.0.5 - add [golang](https://github.com/jnwhiteh/vim-golang) support  
* v1.0.4 - change css indent from 4 to 2 (follow google html/css style rule)  
* v1.0.3 - add [vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax)
* v1.0.2 - fix vim-less not work problem, there is [detail info](http://stackoverflow.com/questions/5602767/why-is-vim-not-detecting-my-coffescript-filetype)
* v1.0.1 - add [vim-css-color](https://github.com/skammer/vim-css-color), really good tool for css edit.
* v1.0.0 - Initial
