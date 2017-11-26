" ferrari personal vimrc

" Basics {
    set nocompatible
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
    
    " Programming
        Plug 'scrooloose/nerdcommenter'
        Plug 'w0rp/ale'
        Plug 'motemen/git-vim'
        Plug 'airblade/vim-gitgutter'
        "Plug 'Valloric/YouCompleteMe'
        "Plug 'Shougo/neocomplete.vim'
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
        Plug 'mitermayer/vim-prettier', {
              \ 'do': 'npm install',
              \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss'] }

    " GO
        Plug 'fatih/vim-go'
    
    " Rust
        Plug 'rust-lang/rust.vim'
        Plug 'racer-rust/vim-racer'
    
    " Others
        Plug 'ingydotnet/yaml-vim'

    " setup deoplete
    if has('nvim')
      Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
      Plug 'Shougo/deoplete.nvim'
      Plug 'roxma/nvim-yarp'
      Plug 'roxma/vim-hug-neovim-rpc'
    endif
" }

" Initialize plugin {
  call plug#end()
" }

" Plugins {

    " use deoplete
    let g:deoplete#enable_at_startup = 1
    let g:deoplete#enable_yarp = 1

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

    " ale
      let g:ale_sign_error = '✗'
      let g:ale_sign_warning = '⚠'
      let g:airline#extensions#ale#enabled = 1
      let g:ale_lint_on_text_changed = 'never'
      let g:ale_lint_on_enter = 0
      let g:ale_fixers = {'javascript': ['prettier_standard']}
      let g:ale_linters = {'javascript': ['']}
      let g:ale_lint_on_save = 0
      let g:ale_fix_on_save = 0

    " prettier
      let g:prettier#autoformat = 0
      let g:prettier#config#print_width = 80
      let g:prettier#config#tab_width = 2
      let g:prettier#config#use_tabs = 'false'
      let g:prettier#config#semi = 'false'
      let g:prettier#config#single_quote = 'true'
      let g:prettier#config#bracket_spacing = 'true'
      let g:prettier#config#jsx_bracket_same_line = 'true' 
      let g:prettier#config#trailing_comma = 'none'
      let g:prettier#config#parser = 'babylon'
    
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
    let g:indentLine_enabled = 0

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
