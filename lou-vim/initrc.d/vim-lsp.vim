"-----------------------------------------------
" vim-lsp
let g:lsp_diagnostics_enabled = 0
let g:lsp_signs_error = {'text': g:diagnostic_error_symbol}
let g:lsp_signs_warning = {'text': g:diagnostic_warning_symbol}
let g:lsp_signs_information = {'text': g:diagnostic_info_symbol}
let g:lsp_signs_hint = {'text': g:diagnostic_hint_symbol}
highlight link LspErrorText CocErrorSign
highlight link LspErrorHighlight CocErrorHighlight
highlight link LspWarningText CocWarningSign
highlight link LspWarningHighlight CocWarningHighlight
highlight link LspInformationText CocInfoSign
highlight link LspInformationHighlight CocInfoHighlight
highlight link LspHintText CocHintSign
highlight link LspHintHighlight CocHintHighlight
"if executable('clangd')
"    augroup clangd
"        autocmd!
"        autocmd User lsp_setup call lsp#register_server({
"                    \ 'name': 'clangd',
"                    \ 'cmd': {server_info->['clangd']},
"                    \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
"                    \ })
"        "autocmd FileType c autocmd BufWritePre <buffer> LspDocumentFormatSync
"        "autocmd FileType cpp autocmd BufWritePre <buffer> LspDocumentFormatSync
"        "autocmd FileType objc autocmd BufWritePre <buffer> LspDocumentFormatSync
"        "autocmd FileType objcpp autocmd BufWritePre <buffer> LspDocumentFormatSync
"    augroup END
"endif
"if executable('pyls')
"    augroup pyls
"        autocmd!
"        autocmd User lsp_setup call lsp#register_server({
"                    \ 'name': 'pyls',
"                    \ 'cmd': {server_info->['pyls']},
"                    \ 'whitelist': ['python'],
"                    \ })
"        "autocmd FileType python autocmd BufWritePre <buffer> LspDocumentFormatSync
"    augroup END
"endif
"if executable('gopls')
"    augroup golang
"        autocmd!
"        autocmd User lsp_setup call lsp#register_server({
"                    \ 'name': 'gopls',
"                    \ 'cmd': {server_info->['gopls']},
"                    \ 'whitelist': ['go'],
"                    \ })
"    augroup END
"endif
let g:asyncomplete_auto_popup = 0
imap <C-/> <Plug>(asyncomplete_force_refresh)
