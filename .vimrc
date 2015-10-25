" My .vimrc configuration - Support Python, PHP, Golang, Markdown and more
"
" Author: Vinicius Souza - http://github.com/vsouza
" For more information type :help followed by the command.

" Basic configuration
set t_Co=256
colorscheme onedark " awesome colorscheme
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
set paste
set nopaste
set ruler
set history=700
set so=999
set colorcolumn=80,120
set hid

set guioptions-=T " Removes top toolbar
set go-=L " Removes left hand scroll bar


" UI config
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
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
set foldmethod=indent   " fold based on indent level
set clipboard^=unnamed      "clipboard
set clipboard^=unnamedplus  "clipboard
set ignorecase                  " Search case insensitive
set smartcase                   " ... but not when search pattern contains upper case characters
set ttyfast

" speed up syntax highlighting
set nocursorcolumn
set cursorline
syntax sync minlines=256
set synmaxcol=300
set re=1
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" mouse settings
set mousehide
set mouse=a
set fo=1

" split settings
set splitright
set splitbelow

" Move =====

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`] 

vnoremap < <gv  " better identation
vnoremap > >gv  " better identation

" Plugins
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'szw/vim-ctrlspace' 
Plugin 'mileszs/ack.vim'
Plugin 'fatih/vim-go'
Plugin 'elzr/vim-json', {'for' : 'json'}
Plugin 'nvie/vim-flake8'
call vundle#end()  

let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_custom_ignore = '\v[\/]\.(DS_Storegit|hg|svn|optimized|compiled|node_modules|pyc|swp)$'
let g:ctrlp_max_height=25
let g:ctrlp_clear_cache_on_exit=0

" =============================== AIRLINE ===============================
" let g:airline_left_sep  = ' '
" let g:airline_right_sep = ' '
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" ==================== Vim-go ====================
let g:go_fmt_fail_silently = 0
let g:go_fmt_command = "goimports"
"
"
let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_trailing_whitespace_error = 0

let g:go_highlight_space_tab_error = 1 
let g:go_highlight_extra_types = 0
let g:go_highlight_methods = 0
let g:go_highlight_functions = 1

" ==================== Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ================ Buffers
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>  

" =================Nerdtree
let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore = ['\~$', '.*\.pyc$', 'pip-log\.txt$', 'whoosh_index',
                    \ 'xapian_index', '.*.pid', 'monitor.py', '.*-fixtures-.*.json',
                    \ '.*\.o$', 'db.db', 'tags.bak']

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDChristmasTree = 1
let NERDTreeChDirMode = 2
let NERDTreeMapJumpFirstChild = 'gK'
nmap <F5> :NERDTreeToggle<CR>

" GitGutter
let g:gitgutter_eager = 0
let g:gitgutter_enabled = 1
let g:gitgutter_max_signs = 1000


" ================ Tagbar
nmap <F6> :TagbarToggle<CR>

" ================ Neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"Disable arrows"
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" comments
vmap <leader>cc :s/^/#/<cr>
vmap <leader>co :s/^#//<cr>
