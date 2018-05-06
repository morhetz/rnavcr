" alias.la=log --oneline --all --decorate --graph
" alias.las=!git --no-pager log --oneline --all --decorate --graph -40

" nnoremap <Leader>gL :exe ':!cd ' . expand('%:p:h') . '; git la'<CR>
" nnoremap <Leader>gl :exe ':!cd ' . expand('%:p:h') . '; git las'<CR>
" nnoremap <Leader>gh :Silent Glog<CR>
" nnoremap <Leader>gH :Silent Glog<CR>:set nofoldenable<CR>
" nnoremap <Leader>gp :Git push<CR>
" nnoremap <Leader>g- :Silent Git stash<CR>:e<CR>
" nnoremap <Leader>g+ :Silent Git stash pop<CR>:e<CR>

nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
" nmap <leader>gc :Gcommit<cr>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <leader>gp :Ggrep<Space>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gq :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
" nmap <leader>gp :Git push<cr>
nnoremap <leader>gps :Dispatch! git push<CR>
nnoremap <leader>gpl :Dispatch! git pull<CR>

" same bindings for merging diffs as in normal mode
autocmd BufRead fugitive\:* xnoremap <buffer> dp :diffput<cr>|xnoremap <buffer> do :diffget<cr>

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
