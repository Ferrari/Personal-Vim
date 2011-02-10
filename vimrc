" Personal Setting
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
syntax on
set history=300
set autoread
inoremap jj <ESC>

" Search 
set ignorecase "Ignore case when searching
set hlsearch "Highlist search keywords
set smartcase 
set showmatch
set incsearch

" file encoding
set encoding=utf8

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Coding format
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set wrap

" editor setting
"set number
set nocompatible
set modelines=0 "prevent security exploits in modelines
set ttyfast
set ruler
set laststatus=2

" Snipmate
ino <c-j> <c-r>=TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=TriggerSnippet()<cr>

" Split windows
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Leader mapping
"noremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
noremap <leader>nt :NERDTree<cr>

" php setting
noremap <C-P> :!php -l %<CR>
