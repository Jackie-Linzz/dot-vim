"-----------------------------------------------
" Base settings

filetype plugin indent on
syntax on

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

let mapleader = ' '

set nobackup
set showcmd

set incsearch
set hlsearch

set showmatch

" Enable ex cmd autocompletion
set wildmenu
set wildmode=longest,list,full

set signcolumn=yes

set history=200

set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

set mouse-=a
"set mouse=a
"set ttymouse=sgr
"set balloondelay=250
"set ballooneval
"set balloonevalterm

set wrap linebreak nolist
"set showbreak=...
set number relativenumber
set cursorline

" Use interactive shell
" This is to make usre the environment of vim buffer matches that in a normal
" shell, so that bazel won't rebuild everything
" set shell=bash\ -l

if has("patch-8.1.0360")
    set diffopt+=algorithm:histogram,indent-heuristic
endif

let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_liststyle = 3
