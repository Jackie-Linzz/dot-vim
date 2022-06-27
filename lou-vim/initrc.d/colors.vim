" Set highlights and color scheme
function! CustomizedHighlights() abort
    highlight link FloatermBorder Comment
    highlight CocHintHighlight cterm=underline ctermfg=12 gui=undercurl guifg=#5E81AC
    highlight Conceal ctermfg=8 ctermbg=NONE guifg=#4C566A guibg=NONE
endfunction

augroup nord-theme-customizations
    autocmd!
    autocmd ColorScheme nord call CustomizedHighlights()
augroup END

let g:nord_italic = 1
let g:nord_underline = 1
let g:nord_uniform_diff_background = 1
colorscheme nord

" Make the vim terminal buffer show the correct colors
" Put this after setting the colorscheme, preferrably near
" the end of vimrc
if has("termguicolors")
    set termguicolors
endif
