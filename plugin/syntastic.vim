let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '∆'
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_style_warning_symbol = '≈'

let g:syntastic_always_populate_loc_list=1
let g:syntastic_enable_highlighting=0
let g:syntastic_check_on_open=1

let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚑'
let g:ale_sign_info = '►'

" let g:syntastic_python_checkers=['pyflakes']

" let g:syntastic_ruby_checkers=['mri', 'rubocop']
let g:rooter_patterns = [ 'node_modules/', 'Rakefile', '.git/' ]

let g:syntastic_javascript_checkers=['eslint']
let g:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
let g:syntastic_javascript_eslint_exec = substitute(g:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

" let g:ale_javascript_eslint_executable = substitute(g:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')


" let g:ale_fixers = {
" \   'javascript': [
" \       'prettier_eslint'
" \   ],
" \}

let g:ale_javascript_prettier_options = '--no-semi --trailing-comma all --parser typescript'

let g:ale_fixers = {'javascript': ['prettier', 'eslint'], 'haskell': []}

let g:ale_fix_on_save = 1

" let g:syntastic_scss_checkers=['stylelint']
" let s:stylelint_path = system('PATH=$(npm bin):$PATH && which stylelint')
" let g:syntastic_scss_stylelint_exec = substitute(s:stylelint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

" let g:syntastic_ocaml_checkers = ['merlin']
" let g:syntastic_reason_checkers=['merlin']
"
" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
