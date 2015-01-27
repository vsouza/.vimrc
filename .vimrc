" My .vimrc configuration - Support Python, PHP, Golang, Markdown and
" Javascript Files
"
" Author: Vinicius Souza - http://github.com/vsouza
" For more information type :help followed by the command.

" Basic configuration
set t_Co=256
colorscheme Tomorrow-Night      " awesome colorscheme
syntax enable                   " enable syntax processing
set tabstop=4                   " number of visual spaces per TAB
set softtabstop=4               " number of spaces in tab when editing
set linebreak                   " Causes vim to not wrap text in the middle of a word
set pastetoggle=<F9>            " Useful so auto-indenting doesn't mess up code when pasting
set backspace=indent,eol,start
set shiftwidth=4
set textwidth=80
set smarttab
set expandtab
filetype plugin indent on
set encoding=utf-8

" UI config
set number              " show line numbers
set showcmd             " show command in bottom bar
"set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

" Search
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
nnoremap <leader><space> :nohlsearch<CR>


" Folders
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
"nnoremap <space> za 
set foldmethod=indent   " fold based on indent level

" Move =====

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`] 

" Plugins
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-markdown'
Plugin 'Lokaltog/vim-powerline'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-commentary'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'digitaltoad/vim-jade'
Plugin 'kien/ctrlp.vim'
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'rizzatti/dash.vim'
call vundle#end()  


let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|meteor|pyc)$|node_modules'
let g:ctrlp_max_height=25
let g:ctrlp_clear_cache_on_exit=0
