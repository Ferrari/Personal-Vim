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
        Bundle "gmarik/vundle.git"
        Bundle "mileszs/ack.vim.git"
        Bundle "kien/ctrlp.vim.git"
    
    " General
        Bundle "altercation/vim-colors-solarized.git"
        Bundle "spf13/vim-colors.git"
        Bundle "rstacruz/sparkup.git", {'rtp': 'vim/'}
        Bundle "tpope/vim-surround.git"
        Bundle "scrooloose/nerdtree.git"
        Bundle "bling/vim-airline.git"
        Bundle "Lokaltog/vim-easymotion.git"
        Bundle "Yggdroot/indentLine.git"
    
    " Programming
        Bundle "scrooloose/nerdcommenter.git"
        Bundle "scrooloose/syntastic.git"
        Bundle "motemen/git-vim.git"
        Bundle "airblade/vim-gitgutter.git"
        Bundle "Valloric/YouCompleteMe.git"
        Bundle "Raimondi/delimitMate.git"
        Bundle "vim-scripts/matchit.zip.git"
        Bundle "MarcWeber/vim-addon-mw-utils"
        Bundle "tomtom/tlib_vim"
        Bundle "garbas/vim-snipmate"
        Bundle "honza/vim-snippets"
    
    " Javascript/CSS
        Bundle "mattn/zencoding-vim.git"
        Bundle "pangloss/vim-javascript.git"
        Bundle "kchmck/vim-coffee-script.git"
        Bundle "groenewege/vim-less.git"
        Bundle "mklabs/vim-backbone.git"
        Bundle "ap/vim-css-color.git"
        Bundle "hail2u/vim-css3-syntax.git"
        Bundle "briancollins/vim-jst.git"
        Bundle "othree/javascript-libraries-syntax.vim.git"
        
    " GO
        Bundle "jnwhiteh/vim-golang.git"

    " Others
        Bundle "ingydotnet/yaml-vim.git"
        Bundle "digitaltoad/vim-jade.git"
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
        let g:syntastic_loc_list_height = 5
        let g:syntastic_enable_highlighting = 0
        let g:syntastic_error_symbol = '✗'
        let g:syntastic_warning_symbol = '⚠'
    
    " gitgutter
        let g:gitgutter_enabled = 0

    " Sparkup
        let g:sparkupExecuteMapping = '<c-h>'
    
    " color
        let g:solarized_termcolors=256
        syntax enable
        filetype off
        filetype on
        set background=dark
        colorscheme solarized
        "colorscheme peaksea

	" coffee
		au BufNewFile,BufReadPost *.coffee setl shiftwidth=4 expandtab

    " ack
        let g:ackprg="ack-grep -H --nocolor --nogroup --column"

    " vim-less
        nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>

    " Snipmate
        ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
        snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>
    
    " vim-airline
        let g:airline_theme='simple'

" }

filetype plugin indent on
set ofu=syntaxcomplete#Complete "OmniComplete
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
set expandtab

    " HTML
    autocmd FileType html,jst,jade set sw=2
    autocmd FileType html,jst,jade set ts=2
    autocmd FileType html,jst,jade set sts=2
    autocmd FileType html,jst,jade set textwidth=0
    
    " Javascript
    autocmd FileType javascript set sw=2
    autocmd FileType javascript set ts=2
    autocmd FileType javascript set sts=2
    autocmd FileType javascript set textwidth=0

    " CSS/LESS
    autocmd FileType css,less set sw=2
    autocmd FileType css,less set ts=2
    autocmd FileType css,less set sts=2
    autocmd FileType css,less set textwidth=0

" }

" editor setting
set number
set nocompatible
set modelines=0 "prevent security exploits in modelines
set ttyfast
set ruler
set laststatus=2
set foldmethod=marker

" Split windows
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" php setting
noremap <C-P> :!php -l %<CR>

" Use The Silver Searcher to replace ACK
" https://github.com/ggreer/the_silver_searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

" hack
cmap w!! %!sudo tee > /dev/null %
