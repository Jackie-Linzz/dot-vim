"-----------------------------------------------
" Vim vista
let g:vista_default_executive = 'coc'
let g:vista_blink = [0, 0]
let g:vista_keep_fzf_colors = 1
let g:vista#renderer#icons = {
    \ 'module': "",
    \ 'modules': "",
    \ 'class': "",
    \ 'var': "⍶",
    \ 'variable': "⍶",
    \ 'varables': "⍶",
  \ }
nnoremap <silent> <leader>zv :<C-u>Vista finder fzf<CR>
