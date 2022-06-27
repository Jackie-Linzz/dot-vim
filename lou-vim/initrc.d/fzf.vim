"-----------------------------------------------
" Settings for fzf.vim
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nnoremap <silent> <leader>zf :<C-u>Files<CR>
nnoremap <silent> <leader>zg :<C-u>GFiles<CR>
nnoremap <silent> <leader>zr :<C-u>Rg<CR>
nnoremap <silent> <leader>zc :<C-u>Commands<CR>
nnoremap <silent> <leader>zh :<C-u>History:<CR>
nnoremap <silent> <leader>zl :<C-u>BLines<CR>
nnoremap <silent> <leader>zb :<C-u>Buffers<CR>
nnoremap <silent> <leader>zs :<C-u>History/<CR>
nnoremap <silent> <leader>zw :<C-u>Windows<CR>

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
