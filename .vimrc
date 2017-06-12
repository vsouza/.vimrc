""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: Vinicius Souza - http://github.com/vsouza          "
" For more information type :help followed by the command.   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Basic configuration
colorscheme Tomorrow-Night
set t_Co=256
set background=dark
syntax enable                   
set tabstop=4                  
set softtabstop=4             
set linebreak                
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
set so=999
set colorcolumn=80,120
set hid
set nocursorcolumn
set norelativenumber


" UI config
set number          
set cursorline     
filetype indent on 
set lazyredraw    
set showmatch    

" Search
set incsearch   
set hlsearch   
nnoremap <leader><space> :nohlsearch<CR>

" Folders
set foldenable 
set foldlevelstart=10  
set foldnestmax=10    
set foldmethod=indent  
set clipboard=unnamed  
set ignorecase        
set ttyfast

" speed up syntax highlighting
set synmaxcol=128
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" mouse settings
set mouse=a
set fo=1

" Move =====

" move vertically by visual line
nnoremap j gj
nnoremap k gk

vnoremap < <gv  " better identation
vnoremap > >gv  " better identation

" Plugins
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'keith/swift.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'elzr/vim-json', {'for' : 'json'}
NeoBundle 'mileszs/ack.vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'Konfekt/FastFold'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'akmassey/vim-codeschool'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'vim-airline/vim-airline-themes'
call neobundle#end()
NeoBundleCheck

" CTRPL
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|vendor)$',
  \ 'file': '\v\.(pyc|so|DS_Store)$',
  \ }
let g:ctrlp_max_height=35
let g:ctrlp_clear_cache_on_exit=0

" =============================== AIRLINE ===============================
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme = "hybrid"

" ==================== Vim-go ====================
let g:go_fmt_command = "goimports"
"
"
" ================ Buffers
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>  

" =================Nerdtree
let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore = ['\~$', '.*\.pyc$', 'pip-log\.txt$', 'whoosh_index',
                    \ 'xapian_index', '.*.pid', 'monitor.py', '.*-fixtures-.*.json',
                    \ '.*\.o$', 'db.db', 'tags.bak']

let NERDTreeMinimalUI = 0
let NERDTreeDirArrows = 1
let NERDChristmasTree = 1
let NERDTreeChDirMode = 2
let NERDTreeMapJumpFirstChild = 'gK'
nmap <F5> :NERDTreeToggle<CR>


" ======================== Fastfold
let g:tex_fold_enabled=1
let g:vimsyn_folding='af'
let g:xml_syntax_folding = 1
let g:php_folding = 1
let g:perl_fold = 1


" comments
vmap <leader>cc :s/^/#/<cr>
vmap <leader>co :s/^#//<cr>

syntax on
