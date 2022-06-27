"-----------------------------------------------
" Vim lightline
set laststatus=2
set noshowmode
let g:lightline = {
\   'colorscheme': 'nord',
\   'active': {
\       'left': [ [ 'mode', 'paste' ],
\                 [ 'gitbranch', 'filename', 'method', 'readonly' ] ],
\       'right': [ [ 'lineinfo' ], [ 'percent' ],
\                  [ 'fileformat', 'fileencoding', 'filetype' ],
\                  ['coc_warnings', 'coc_errors', 'coc_ok' ] ]
\   },
\   'component_function': {
\       'filename': 'lightline#functions#filename',
\       'gitbranch': 'lightline#functions#gitbranch',
\       'gitgutter': 'lightline#functions#gitstatus',
\       'method': 'lightline#functions#current_function_symbol',
\       'modified': 'lightline#functions#modified',
\   },
\   'component_expand': {
\       'coc_errors': 'lightline#functions#diagnostic_errors',
\       'coc_ok': 'lightline#functions#diagnostic_ok',
\       'coc_warnings': 'lightline#functions#diagnostic_warnings',
\       'readonly': 'lightline#functions#readonly',
\   },
\   'component_type': {
\       'coc_warnings': 'warning',
\       'coc_ok': 'tabsel',
\       'coc_errors': 'error',
\       'readonly': 'warning',
\   },
\   'separator': { 'left': '', 'right': '' },
\   'subseparator': { 'left': '', 'right': '' },
\}

augroup lightline-diagnostic-info
    autocmd!
    autocmd User CocDiagnosticChange call lightline#update()
    autocmd User CocStatusChange call lightline#update()
augroup END
