# .vimrc

My Vim Setup with Bundle and a beautiful theme and fonts.

<img src="http://cl.ly/image/030j171s3c3G/Screen%20Shot%202015-04-17%20at%202.09.30%20PM.png">

## Dependencies

 * [Exuberant CTAGS](http://ctags.sourceforge.net)

__for MacOSX__
 ```
 brew install ctags-exuberant
 ```

## Plugins

 * [Vundle.vim](http://github.com/gmarik/Vundle.vim)
 * [vim-gitgutter](http://github.com/airblade/vim-gitgutter)
 * [syntastic](http://github.com/scrooloose/syntastic)
 * [vim-markdown](http://github.com/tpope/vim-markdown)
 * [vim-airline](http://github.com/bling/vim-airline)
 * [vim-indent-guides](http://github.com/nathanaelkane/vim-indent-guides)
 * [vim-commentary](http://github.com/tpope/vim-commentary)
 * [vim-multiple-cursors](http://github.com/terryma/vim-multiple-cursors)
 * [vim-jade](http://github.com/digitaltoad/vim-jade)
 * [ctrlp.vim](http://github.com/kien/ctrlp.vim)
 * [nerdtree](http://github.com/scrooloose/nerdtree)
 * [dash.vim](http://github.com/rizzatti/dash.vim)
 * [vim-ctrlspace ](http://github.com/szw/vim-ctrlspace)
 * [ack.vim](http://github.com/mileszs/ack.vim)
 * [phpcomplete.vim](http://github.com/shawncplus/phpcomplete.vim)
 * [vim-hack](http://github.com/hhvm/vim-hack)
 * [vim-go](http://github.com/fatih/vim-go)
 * [vim-json](http://github.com/elzr/vim-json)
 * [rope-vim](http://github.com/klen/rope-vim)
 * [Dockerfile.vim](http://github.com/ekalinin/Dockerfile.vim)
 * [supertab](http://github.com/ervandew/supertab)
 * [tagbar](http://github.com/majutsushi/tagbar)
 * [vim-easymotion](http://github.com/Lokaltog/vim-easymotion)

## Appearence

__Theme__

[dracula-theme](https://github.com/zenorocha/dracula-theme)

__Font__

[Source code pro](http://blog.typekit.com/2012/09/24/source-code-pro/)

## Customizations

__Basic Configurations__

```
set t_Co=256
colorscheme Tomorrow-Night      " awesome colorscheme
syntax enable                   " enable syntax processing
set tabstop=4                   " number of visual spaces per TAB
set softtabstop=4               " number of spaces in tab when editing
set expandtab                   " tabs are spaces
set linebreak                   " Causes vim to not wrap text in the middle of a word
set pastetoggle=<F9>            " Useful so auto-indenting doesn't mess up code when pasting
set backspace=indent,eol,start
```

__UI config__
```
set number              " show line numbers
set showcmd             " show command in bottom bar
"set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
```

__Search__
```
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
nnoremap <leader><space> :nohlsearch<CR>
```

__Folders__
```
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
nnoremap <space> za
set foldmethod=indent   " fold based on indent level
```

__Movements__
```
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]
```

__Airline__

```
let g:airline_left_sep  = '>> '
let g:airline_right_sep = '<< '

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
```

__Syntastic__
```
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

```

__Tagbar__
```
nmap <F6> :TagbarToggle<CR>
```

__Vim-go__
```
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"

let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0

let g:go_highlight_space_tab_error = 0
let g:go_highlight_extra_types = 0
let g:go_highlight_methods = 0
let g:go_highlight_functions = 0
```

## License

[MIT License](http://vsouza.mit-license.org/) © Vinicius Souza

