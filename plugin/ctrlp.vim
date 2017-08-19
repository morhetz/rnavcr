set grepprg=ag\ --nogroup\ --nocolor
let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
" let g:ctrlp_user_command='ag %s -l -i --nocolor -g ""'
let g:ctrlp_use_caching=0

let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_extensions = ['funky', 'line', 'buffertag']
" let g:ctrlp_extensions = ['tag' 'dir']
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_height = 25

" mappings
" nnoremap ,, :CtrlPMixed<cr>
" nnoremap ,p :CtrlPMixed<cr>
" nnoremap ,b :CtrlPBuffer<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
" nnoremap ,t :CtrlPTag<cr>
" nnoremap ,l :CtrlPLine<cr>
" nnoremap ,f :CtrlPFunky<cr>

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
