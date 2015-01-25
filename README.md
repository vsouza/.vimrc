# Vivim

Vim setup

## Plugins 

```
'gmarik/Vundle.vim'
'airblade/vim-gitgutter'
'scrooloose/syntastic'
'tpope/vim-markdown'
'Lokaltog/vim-powerline'
'nathanaelkane/vim-indent-guides'
'tpope/vim-commentary'
'terryma/vim-multiple-cursors'
'digitaltoad/vim-jade'
'kien/ctrlp.vim'
'chriskempson/tomorrow-theme'
```

## Appearence

__Theme__

[Tommorrow-Night](https://github.com/chriskempson/tomorrow-theme)

<img src="http://cl.ly/image/1K0g2F3G1X45/Screen%20Shot%202015-01-25%20at%204.36.51%20AM.png">

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

## License

[MIT License](http://vsouza.mit-license.org/) © Vinicius Souza

