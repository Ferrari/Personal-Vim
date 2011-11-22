" Personal Setting
filetype off

" vundle setting
set runtimepath+=~/.vim/vundle.git/
call vundle#rc()

Bundle "rstacruz/sparkup.git", {'rtp': 'vim/'}
Bundle "gmarik/snipmate.vim.git"
Bundle "surround.vim"
Bundle "cschlueter/vim-wombat.git"
Bundle "scrooloose/nerdtree"
Bundle "tomtom/tcomment_vim"
Bundle "mileszs/ack.vim"
Bundle "jamescarr/snipmate-nodejs"
Bundle "pangloss/vim-javascript"
Bundle "digitaltoad/vim-jade"
Bundle "kchmck/vim-coffee-script"
Bundle "nathanaelkane/vim-indent-guides"
" vundle setting ending

filetype plugin indent on
syntax on
set history=300
set autoread
inoremap jj <ESC>
colorscheme wombat256

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
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set wrap
" set expandtab "There might have indent error in some language

" editor setting
"set number
set nocompatible
set modelines=0 "prevent security exploits in modelines
set ttyfast
set ruler
set laststatus=2
set foldmethod=marker

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
noremap <leader>nt :NERDTree<cr>

" php setting
noremap <C-P> :!php -l %<CR>

