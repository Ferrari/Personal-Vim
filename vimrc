" ferrari personal vimrc

" Environment {
    " Basics {
        set nocompatible
    " }
    
    " Setup Bundle Support {
        "set rtp+=~/.vim/bundle/vundle
        "call vundle#rc()
    " }

" }

" Setup vim.plug {
    call plug#begin('~/.vim/plugged')
" }

" Plugs {
    " Deps 
        Plug 'gmarik/vundle'
        Plug 'mileszs/ack.vim'
        Plug 'ctrlpvim/ctrlp.vim'
    
    " General
        Plug 'altercation/vim-colors-solarized'
        Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
        Plug 'tpope/vim-surround'
        Plug 'scrooloose/nerdtree'
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'Lokaltog/vim-easymotion'
        Plug 'Yggdroot/indentLine'
        Plug 'majutsushi/tagbar'
        Plug 'elzr/vim-json'

    " Snippet
        Plug 'SirVer/ultisnips'
        Plug 'justinj/vim-react-snippets'
    
    " Program'ing
        Plug 'scrooloose/nerdcommenter'
        Plug 'scrooloose/syntastic'
        Plug 'motemen/git-vim'
        Plug 'airblade/vim-gitgutter'
        Plug 'Valloric/YouCompleteMe'
        Plug 'Raimondi/delimitMate'
        Plug 'vim-scripts/matchit.zip'
        Plug 'MarcWeber/vim-addon-mw-utils'
        Plug 'tomtom/tlib_vim'
    
    " Javascr'pt/CSS
        Plug 'wavded/vim-stylus'
        Plug 'marijnh/tern_for_vim'
        Plug 'mattn/emmet-vim'
        Plug 'ap/vim-css-color'
        Plug 'hail2u/vim-css3-syntax'
        Plug 'othree/javascript-libraries-syntax.vim'
        Plug 'othree/yajs.vim'
        Plug 'mxw/vim-jsx'

    " GO
        Plug 'fatih/vim-go'
    
    " Rust
        Plug 'rust-lang/rust.vim'
    
    " Others
        Plug 'ingydotnet/yaml-vim'
" }

" Initialize plugin {
  call plug#end()
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
      let g:syntastic_javascript_checkers = ['eslint']

    " setup standard style checker
    "autocmd bufwritepost *.js silent !standard-format -w %
    "set autoread
    
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

    " react
      let g:jsx_ext_required = 0 " Allow JSX in normal JS files
    
    " vim-less
      nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>

    " vim-airline
      let g:airline_theme='simple'

    " tarbar
      nmap <F8> :TagbarToggle<CR>

    " vim-go
      let g:go_fmt_autosave = 1
      let g:go_fmt_command = "goimports"
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
    let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|node_modules)$'
    "let g:ctrlp_user_command = 'find %s -type f'
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

    " ack
    if executable('ag')
        let g:ackprg = 'ag --vimgrep'
    endif
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
    autocmd FileType css,scss,styl set sw=2
    autocmd FileType css,scss,styl set ts=2
    autocmd FileType css,scss,styl set sts=2
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
set ruler
set ttyfast
set laststatus=2
set foldmethod=marker
set clipboard=unnamed

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
