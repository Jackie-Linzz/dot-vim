nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)

augroup LimeLight
    autocmd!
    autocmd User GoyoEnter Limelight
    autocmd User GoyoLeave Limelight!
augroup END
