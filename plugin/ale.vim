let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚑'
let g:ale_sign_info = '►'

let g:ale_fixers = {
\   'javascript': [
\       'prettier_eslint'
\   ],
\}

let g:ale_fix_on_save = 1

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
