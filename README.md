# dotfiles

> This is my personal dotfiles
vim plugin management based on [vundle](https://github.com/gmarik/vundle)  
Migrate from [spf13-vim](https://github.com/spf13/spf13-vim)

## Install

```
curl https://github.com/Ferrari/dotfiles/raw/master/bootstrap.sh -L -o - | bash
```

## Update

**vim**

Thanks for [vim-plug](https://github.com/junegunn/vim-plug) vim plugin manager, just run follow command is enough.
```
vim +PlugInstall! +PlugClean! +q
```

**tmux**
`prefix`(tmux) + I 

If you want to use [syntastic](https://github.com/scrooloose/syntastic) to check syntax, make sure you also have the tool. 
Ex: I use JS, so `npm install -g jshint` first!

**bash-it**
https://github.com/Bash-it/bash-it

## ChangeLog

* v2.1.0 - Setup [alacritty](https://github.com/jwilm/alacritty) config file if exists
* v2.0.0 - Setup [tmux plugin manager](https://github.com/tmux-plugins/tpm)
* v1.7.0 - Use [the_silver_searcher](https://github.com/ggreer/the_silver_searcher) replace ack
* v1.6.0 - Some golang twist by [golang vim](http://blog.hsatac.net/2013/08/my-vimrc-for-golang/)
* v1.5.0 - Change default coding indent as 2
* v1.4.1 - Change plugin to github style and fix snipmate plugin
* v1.4.0 - Add [matchit](https://github.com/vim-scripts/matchit.zip.git)
* v1.3.0 - Replace indent as [indentLine](https://github.com/Yggdroot/indentLine) and add [delimitMate](https://github.com/Raimondi/delimitMate)
* v1.2.0 - Replace [powerline](https://github.com/Lokaltog/powerline) using [vim-airline](https://github.com/bling/vim-airline)
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
