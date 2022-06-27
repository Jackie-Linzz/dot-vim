"-----------------------------------------------
" zepl.vim
augroup zepl
    autocmd!
    autocmd FileType python let b:repl_config = { 'cmd': 'python3' }
    autocmd FileType julia let b:repl_config = { 'cmd': 'julia' }
    autocmd FileType scala let b:repl_config = { 'cmd': 'scala' }
augroup END
map <leader>rl :vert Repl<CR>
