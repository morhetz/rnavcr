let g:ctrlsf_ackprg = 'ag'
let g:ctrlsf_auto_close = 0

nmap     K <Plug>CtrlSFCwordExec
vmap     K <Plug>CtrlSFVwordExec

" nmap     <C-F> <Plug>CtrlSFPrompt

nmap     <leader>f <Plug>CtrlSFPrompt

" vmap     <leader>ff <Plug>CtrlSFVwordPath
" vmap     <leader>fF <Plug>CtrlSFVwordExec
"
" nmap     <leader>fn <Plug>CtrlSFCwordPath
" nmap     <leader>fp <Plug>CtrlSFPwordPath
"
" nnoremap <leader>fo :CtrlSFOpen<CR>

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
