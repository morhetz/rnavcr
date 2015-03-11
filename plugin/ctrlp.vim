" silver searcher
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
nnoremap ,, :CtrlPMixed<cr>
nnoremap ,p :CtrlPMixed<cr>
nnoremap ,b :CtrlPBuffer<cr>
nnoremap ,t :CtrlPTag<cr>
nnoremap ,l :CtrlPLine<cr>
nnoremap ,f :CtrlPFunky<cr>

" let g:ctrlp_follow_symlinks = 1
" let g:ctrlp_follow_symlinks = 1
" let g:ctrlp_match_func = { 'match': 'fastmatcher#matcher' }
" let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
" let g:ctrlp_max_files = 0
" let g:ctrlp_max_files = 10000
" let g:ctrlp_mruf_max = 20
" let g:ctrlp_mruf_max = 500

" vim: set sw=3 ts=3 sts=3 et tw=80 ft=vim fdm=marker:
