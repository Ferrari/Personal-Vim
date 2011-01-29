" Personal Setting
set hlsearch
set ignorecase
syntax on
set history=300
set autoread

" file encoding
set encoding=utf8

" Enable filetype plugin
filetype on
filetype plugin on
filetype indent on

" No sound on errors
set noerrorbells
set novisualbell
set tm=500

" Coding format
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set wrap

" editor setting
set number

" php setting
noremap <C-P> :!php -l %<CR>
