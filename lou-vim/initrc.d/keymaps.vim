map <leader>n :Vexplore<CR>

"-----------------------------------------------
" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" Shortcutting split navigation, saving a keypress:
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
tnoremap <C-h> <C-w>h
tnoremap <C-j> <C-w>j
tnoremap <C-k> <C-w>k
tnoremap <C-l> <C-w>l

" Terminal mode
map <silent> <leader><tab> :tabnew<CR>:term ++curwin<CR>
map <leader>m :term ++close<CR>
map <leader>y :term ++close python3<CR>

" For normal mode when in terminals (in X I have caps mapped to esc, this replaces it when I don't have X)
inoremap jk <Esc>
if has("nvim")
    tnoremap jk <C-\><C-n>
else
    tnoremap jk <C-w>N
endif

inoremap <C-l> <Esc>%%a

" Spell-check set to F6:
map <F6> :setlocal spell! spelllang=en_us,es<CR>

" Show git commit message on current line
nmap <silent><Leader>gc :call setbufvar(winbufnr(popup_atcursor(split(system("git log -n 1 -L " . line(".") . ",+1:" . expand("%:p")), "\n"), { "padding": [1,1,1,1], "pos": "botleft", "wrap": 0 })), "&filetype", "git")<CR>
