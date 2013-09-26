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
        Bundle "gmarik/vundle"
        Bundle "rking/ag.vim"
        Bundle "kien/ctrlp.vim"
    
    " General
        Bundle "altercation/vim-colors-solarized"
        Bundle "spf13/vim-colors"
        Bundle "rstacruz/sparkup", {'rtp': 'vim/'}
        Bundle "tpope/vim-surround"
        Bundle "scrooloose/nerdtree"
        Bundle "bling/vim-airline"
        Bundle "Lokaltog/vim-easymotion"
        Bundle "Yggdroot/indentLine"
        Bundle "majutsushi/tagbar"
    
    " Programming
        Bundle "scrooloose/nerdcommenter"
        Bundle "scrooloose/syntastic"
        Bundle "motemen/git-vim"
        Bundle "airblade/vim-gitgutter"
        Bundle "Valloric/YouCompleteMe"
        Bundle "Raimondi/delimitMate"
        Bundle "vim-scripts/matchit.zip"
        Bundle "MarcWeber/vim-addon-mw-utils"
        Bundle "tomtom/tlib_vim"
        Bundle "garbas/vim-snipmate"
        Bundle "honza/vim-snippets"
    
    " Javascript/CSS
        Bundle "mattn/zencoding-vim"
        Bundle "kchmck/vim-coffee-script"
        Bundle "groenewege/vim-less"
        Bundle "ap/vim-css-color"
        Bundle "hail2u/vim-css3-syntax"
        Bundle "briancollins/vim-jst"
        Bundle "othree/javascript-libraries-syntax.vim"
        
    " GO
        Bundle "golangtw/go.vim"

    " Others
        Bundle "ingydotnet/yaml-vim"
        Bundle "digitaltoad/vim-jade"
" }

" Plugins {

    " NerdTree
      map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
      map <leader>e :NERDTreeFind<CR>
      nmap <F5> :NERDTreeToggle<CR>
      nmap <leader>nt :NERDTreeFind<CR>
      let NERDTreeIgnore=['\.swp$', '\.git', '\.svn']
      let NERDTreeShowHidden=1
    
    " syntastic
      nmap <F7> :SyntasticCheck<CR>
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

    " ag
      let g:agprg = 'ag --nogroup --column'

    " vim-less
      nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>

    " Snipmate
      ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
      snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>
    
    " vim-airline
      let g:airline_theme='simple'

    " tarbar
      nmap <F8> :TagbarToggle<CR>

    " go.vim
    " auto run `go fmt` when you save the file
      au FileType go au BufWritePre <buffer> Fmt
    
    " gotags
    " https://github.com/jstemmer/gotags
    let g:tagbar_type_go = {
      \ 'ctagstype' : 'go',
      \ 'kinds'     : [
          \ 'p:package',
          \ 'i:imports:1',
          \ 'c:constants',
          \ 'v:variables',
          \ 't:types',
          \ 'n:interfaces',
          \ 'w:fields',
          \ 'e:embedded',
          \ 'm:methods',
          \ 'r:constructor',
          \ 'f:functions'
      \ ],
      \ 'sro' : '.',
      \ 'kind2scope' : {
          \ 't' : 'ctype',
          \ 'n' : 'ntype'
      \ },
      \ 'scope2kind' : {
          \ 'ctype' : 't',
          \ 'ntype' : 'n'
      \ },
      \ 'ctagsbin'  : 'gotags',
      \ 'ctagsargs' : '-sort -silent'
    \ }

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
set tabstop=2
set shiftwidth=2
set softtabstop=2
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

" hack
cmap w!! %!sudo tee > /dev/null %
