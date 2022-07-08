" set encoding=utf-8
set number
set splitright
set splitbelow

set noswapfile
set nobackup

set hlsearch
set incsearch

set ignorecase

set cursorline
set laststatus=2

filetype on
filetype plugin on
filetype indent on

set nocompatible
set wildmenu
set wildmode=longest,full

set expandtab
set tabstop=4
set shiftwidth=4

set autoindent
set smartindent

set hidden

set backspace=indent,eol,start

syntax on

let mapleader=' '


nnoremap <leader>tt :vertical terminal<CR>
nnoremap <leader>th :terminal<CR>
tmap <ESC> <C-W>N
"nmap <a-j> <c-w>w<c-e><c-w>w
"nmap <a-k> <c-w>w<c-y><c-w>w

if !has('gui_running')
  set t_Co=256
endif

call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-rooter'
Plug 'Yggdroot/LeaderF'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" gruvbox
colorscheme gruvbox
set bg=dark
" lightline
set noshowmode
set ttimeoutlen=200

" nerdtree
nnoremap <leader>no :NERDTree<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nn :NERDTreeFind<CR>
nnoremap <leader>nf :NERDTreeFocus<CR>
nnoremap <leader>nc :NERDTreeClose<CR>

" LeaderF
" let g:Lf_WindowPosition = 'popup'
let g:Lf_ShowDevIcons = 0
let g:Lf_EmptyQuery = 0
let g:Lf_WildIgnore = {
            \ "dir": [".git", ".cache"]
            \ }
nnoremap <leader>ff :Leaderf file<CR>
nnoremap <leader>b :Leaderf buffer<CR>
nnoremap <leader>fr :Leaderf rg<CR>
nnoremap <leader>fl :Leaderf line<CR>
nnoremap <leader>fm :Leaderf mru<CR>

" vim-rooter
let g:rooter_patterns = ['.git', 'WORKSPACE', '.project']
let g:rooter_cd_cmd = 'lcd'

" coc
let g:coc_global_extensions = [
    \ 'coc-clangd',
    \ 'coc-diagnostic',
    \ 'coc-fzf-preview',
    \ 'coc-git',
    \ 'coc-json',
    \ 'coc-markdownlint',
    \ 'coc-pairs',
    \ 'coc-prettier',
    \ 'coc-pyright',
    \ 'coc-vimlsp',
    \ 'coc-yaml'
    \ ]
set shortmess+=c
set completeopt=menu,menuone,noinsert,noselect
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <leader>s :CocCommand clangd.switchSourceHeader<CR>

" Remap for format selected region
xmap <leader>cf  <Plug>(coc-format-selected)
nmap <leader>cf  <Plug>(coc-format-selected)

augroup coc-settings
  autocmd!
  " Highlight symbol under cursor on CursorHold
  autocmd CursorHold * silent call CocActionAsync('highlight')
  " Setup formatexpr specified filetype(s).
  autocmd FileType json,c,cpp,python,markdown,go,sh,bzl,proto setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup END
" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
map <silent> <leader>cc :call CocAction('format')<CR>
