"
" Author: Vinicius Souza - http://github.com/vsouza
" For more information type :help followed by the command.

" Basic configuration
set background=dark
colorscheme dracula
set anti enc=utf-8
set guifont=Hack\ Regular:h11


syntax enable                   " enable syntax processing
set linebreak                   " Causes vim to not wrap text in the middle of a word
set pastetoggle=<F9>            " Useful so auto-indenting doesn't mess up code when pasting
filetype plugin indent on
set encoding=utf-8
set backspace=indent,eol,start
set clipboard=unnamed
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=2
set tabstop=2
set guioptions=	"remove scrollbars on macvim

" Enable folding
nnoremap <space> za

" UI config
set number              " show line numbers
set showmatch           " highlight matching [{()}]

" split settings
set splitright
set splitbelow

let mapleader=" "
nnoremap <Space> <nop>

call plug#begin('~/.vim/plugged')

" Languages
Plug 'vim-ruby/vim-ruby'
Plug 'elixir-editors/vim-elixir'
Plug 'fatih/vim-go', { 'tag': '*' }
" Misc
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'JamshedVesuna/vim-markdown-preview'
" View
Plug 'jacoborus/tender.vim'
Plug 'keith/swift.vim'
Plug 'cocopon/iceberg.vim'
Plug 'majutsushi/tagbar'

call plug#end()

""""" Navigate between tabs
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

"" new blank lines
map <Enter> o<ESC>
map <S-Enter> O<ESC>


"""""" Nerdtree
nmap <leader>\ :NERDTreeToggle<cr>

" Airline
let g:airline_theme='tender'

" Remove whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

" CTRLP config
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|deps|svn)$',
  \ 'file': '\v\.(exe|so|dll|.DS_Store)$',
  \ }

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType c setl ofu=ccomplete#CompleteCpp
au FileType css setl ofu=csscomplete#CompleteCSS

" set the expandtab
au FileType ruby,javascript,python,html,erb,yaml,yml,playbook,lua set expandtab
"
" conver tabs to spaces on open or save files
au BufRead,BufWrite *.rb,*.js,*[rR]akefile,*.py,*.yml,*.playbook,*.lua retab

" deoplete
let g:deoplete#enable_at_startup = 1

" github flavored markdown
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-v>'

" tagbar
nmap <leader>/ :TagbarToggle<cr>
