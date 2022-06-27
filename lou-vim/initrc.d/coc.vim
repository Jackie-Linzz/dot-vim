"-----------------------------------------------
" Settings for coc.nvim
augroup coc-config
    autocmd!
    autocmd User CocNvimInit call coc#config('diagnostic', {
        \ 'errorSign': g:diagnostic_error_symbol,
        \ 'warningSign': g:diagnostic_warning_symbol,
        \ 'infoSign': g:diagnostic_info_symbol,
        \ 'hintSign': g:diagnostic_hint_symbol
      \ })
augroup END

let g:coc_global_extensions = [
    \ 'coc-clangd',
    \ 'coc-diagnostic',
    \ 'coc-explorer',
    \ 'coc-fzf-preview',
    \ 'coc-git',
    \ 'coc-json',
    \ 'coc-markdownlint',
    \ 'coc-pairs',
    \ 'coc-prettier',
    \ 'coc-pyright',
    \ 'coc-snippets',
    \ 'coc-tabnine',
    \ 'coc-vimlsp',
    \ 'coc-yaml'
    \ ]
let g:coc_filetype_map = { 'vimwiki': 'markdown' }
set hidden
set cmdheight=2
set shortmess+=c
set completeopt=menu,menuone,noinsert,noselect

highlight link CocInfoHighlight VimwikiLink
" highlight link CocHintHighlight VimwikiLink
" highlight CocHintHighlight cterm=underline ctermfg=12 gui=undercurl guifg=#5E81AC

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <C-Space> coc#refresh()

" Use <CR> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <silent><expr> <Plug>CustomCocCR pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>\<C-r>=coc#on_enter()\<CR>"

nmap <silent> <C-p> <Plug>(coc-diagnostic-prev-error)
nmap <silent> <C-n> <Plug>(coc-diagnostic-next-error)
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <leader>s :CocCommand clangd.switchSourceHeader<CR>

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>o  <Plug>(coc-format-selected)
nmap <leader>o  <Plug>(coc-format-selected)

augroup coc-settings
  autocmd!
  " Highlight symbol under cursor on CursorHold
  autocmd CursorHold * silent call CocActionAsync('highlight')
  " Setup formatexpr specified filetype(s).
  autocmd FileType json,c,cpp,python,markdown,go,sh,bzl,proto setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup END

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use CTRL-Y for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-y> <Plug>(coc-range-select)
xmap <silent> <C-y> <Plug>(coc-range-select)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
"map <silent> <C-b> :Format<CR>
map <silent> <C-f> :call CocAction('format')<CR>

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call CocAction('fold', <f-args>)

command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" Using CocList
" Show all diagnostics
nnoremap <silent> \a  :<C-u>CocList diagnostics<CR>
" Manage extensions
nnoremap <silent> \e  :<C-u>CocList extensions<CR>
" Show commands
nnoremap <silent> \c  :<C-u>CocList commands<CR>
" Find symbol of current document
nnoremap <silent> \o  :<C-u>CocList outline<CR>
" Search workspace symbols
nnoremap <silent> \s  :<C-u>CocList -I symbols<CR>
" Do default action for next item.
nnoremap <silent> \j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> \k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> \p  :<C-u>CocListResume<CR>
