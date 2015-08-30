let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '∆'
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_style_warning_symbol = '≈'

let g:syntastic_always_populate_loc_list=1
let g:syntastic_enable_highlighting=0
let g:syntastic_check_on_open=1


" let g:syntastic_python_checkers=['pyflakes']

let g:syntastic_ruby_checkers=['mri', 'rubocop']
let g:syntastic_javascript_checkers=['jshint']

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
