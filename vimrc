" ferrari personal vimrc

" Environment {
	" Basics {
		set nocompatible
		set background=dark
	" }

	" Setup Bundle Support {
			set rtp+=~/.vim/bundle/vundle
			call vundle#rc()
	" }
" }

" Bundles {
	" Deps 
		Bundle "git://github.com/gmarik/vundle.git"
		Bundle "git://github.com/mileszs/ack.vim.git"
	
	" General
		Bundle "git://github.com/altercation/vim-colors-solarized.git"
		Bundle "git://github.com/spf13/vim-colors.git"
		Bundle "git://github.com/rstacruz/sparkup.git", {'rtp': 'vim/'}
		Bundle "git://github.com/gmarik/snipmate.vim.git"
		Bundle "git://github.com/tpope/vim-surround.git"
		Bundle "git://github.com/scrooloose/nerdtree.git"
		Bundle "git://github.com/Lokaltog/vim-powerline.git"
		Bundle "git://github.com/Lokaltog/vim-easymotion.git"
	
	" Programming
		Bundle "git://github.com/scrooloose/nerdcommenter.git"
		Bundle "git://github.com/scrooloose/syntastic.git"
		Bundle "git://github.com/motemen/git-vim.git"

	" Javascript
		Bundle "git://github.com/jamescarr/snipmate-nodejs.git"
		Bundle "git://github.com/pangloss/vim-javascript.git"
		" Bundle "digitaltoad/vim-jade"
		" Bundle "kchmck/vim-coffee-script"
		Bundle "git://github.com/nathanaelkane/vim-indent-guides.git"

	" PHP
		Bundle "git://github.com/spf13/PIV.git"

" }

" Plugins {

	" NerdTree
		map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
		map <leader>e :NERDTreeFind<CR>
		nmap <leader>nt :NERDTreeFind<CR>

		let NERDTreeIgnore=['\.swp$', '\.git', '\.svn']
		let NERDTreeShowHidden=1

	" syntastic
		let g:syntastic_mode_map = { 'mode': 'passive',
					\ 'active_filetypes': [],
					\ 'passive_filetypes': [] }

	" Sparkup
		let g:sparkupExecuteMapping = '<c-h>'

	" color
		let g:solarized_termcolors=256
		syntax enable
		set background=dark
		colorscheme solarized
		"colorscheme peaksea

" }

filetype plugin indent on
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

" Coding format {
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set wrap
" set expandtab "There might have indent error in some language

	" HTML
	autocmd FileType html set sw=2
	autocmd FileType html set ts=2
	autocmd FileType html set sts=2
	autocmd FileType html set textwidth=0

" }

" editor setting
set number
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

" php setting
noremap <C-P> :!php -l %<CR>

