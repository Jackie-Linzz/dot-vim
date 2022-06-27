"-----------------------------------------------
" Settings for vim-test
if has("nvim")
    let test#strategy = "neovim"
    let g:test#neovim#start_normal = 1
else
    let test#strategy = "vimterminal"
endif
let g:test#python#runner = 'pytest'
let g:test#python#pytest#executable = 'pdm run pytest'
let g:test#python#pytest#options = '-v -s'
nmap <silent> <leader>te :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>
