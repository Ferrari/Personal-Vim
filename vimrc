" ferrari personal vimrc

" Environment {
    " Basics {
        set nocompatible
        "set background=dark
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
        Bundle "rstacruz/sparkup", {'rtp': 'vim/'}
        Bundle "tpope/vim-surround"
        Bundle "scrooloose/nerdtree"
        Bundle "bling/vim-airline"
        Bundle "Lokaltog/vim-easymotion"
        Bundle "Yggdroot/indentLine"
        Bundle "majutsushi/tagbar"
        Bundle "elzr/vim-json"
    
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
    
    " Javascript/CSS
        Bundle "wavded/vim-stylus"
        Bundle "marijnh/tern_for_vim"
        Bundle "mattn/emmet-vim"
        Bundle "pangloss/vim-javascript"
        Bundle "ap/vim-css-color"
        Bundle "hail2u/vim-css3-syntax"
        Bundle "othree/javascript-libraries-syntax.vim"
        Bundle "othree/yajs.vim"

    " GO
        Bundle "fatih/vim-go"
        "Bundle "golangtw/go.vim"
    
    " Swift
        Bundle "Keithbsmiley/swift.vim"

    " Others
        Bundle "ingydotnet/yaml-vim"
        Bundle "digitaltoad/vim-jade"
" }

" Plugins {

    "ycm
    "let g:ycm_filetype_specific_completion_to_disable = {'javascript': 1}
    let g:ycm_seed_identifiers_with_syntax = 1
    let g:ycm_autoclose_preview_window_after_completion = 1

    "tern
    let g:tern_show_argument_hints='on_hold'
    let g:tern_map_keys=1

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
      let g:syntastic_javascript_checkers = ['standard']
    
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

    " ag
      let g:agprg = 'ag --nogroup --column'

    " vim-javascript
      let javascript_enable_domhtmlcss=1
      let b:javascript_fold=1
    
    " vim-less
      nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>

    " Snipmate
      ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
      snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>
    
    " vim-airline
      let g:airline_theme='simple'

    " tarbar
      nmap <F8> :TagbarToggle<CR>

    " vim-go
    let g:go_fmt_autosave = 1
    let g:go_disable_autoinstall = 0
    
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

    " json fix
    let g:vim_json_syntax_conceal = 0
    let g:indentLine_noConcealCursor="nc"

    " ctrlp
    let g:ctrlp_working_path_mode = 'ra'
    let g:ctrlp_user_command = 'find %s -type f'
    let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

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
    autocmd FileType css,scss,styl set sw=4
    autocmd FileType css,scss,styl set ts=4
    autocmd FileType css,scss,styl set sts=4
    autocmd FileType css,scss,styl set textwidth=0

    " python
    autocmd FileType python set sw=4
    autocmd FileType python set ts=4
    autocmd FileType python set sts=4
    autocmd FileType python set textwidth=80

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
