"-----------------------------------------------
" Vim-ale settings
" lint after 1000ms after changes are made both on insert mode and normal mode
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_delay = 1000
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_Str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters_explicit = 1
let g:ale_python_flake8_executable = 'flake83'
let g:ale_fix_on_save = 1
let g:ale_sign_error = g:diagnostic_error_symbol
let g:ale_sign_warning = g:diagnostic_warning_symbol
let g:ale_sign_info = g:diagnostic_info_symbol
"nmap <silent> <C-p> <Plug>(ale_previous_wrap)
"nmap <silent> <C-n> <Plug>(ale_next_wrap)
