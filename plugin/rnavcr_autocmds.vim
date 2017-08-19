" Cursorline and Relativenumbers {{{
" Only show this in the current window and in normal mode.

augroup cline
   autocmd!
   autocmd WinLeave,InsertEnter * set nocursorline norelativenumber
   autocmd WinEnter,InsertLeave *
            \ set cursorline |
            \ if !exists('#goyo') |
            \ set relativenumber |
            \ endif
augroup END

" }}}
" Trailing whitespace {{{
" Only shown when not in insert mode

augroup trailing
   autocmd!
   autocmd InsertEnter * :set listchars-=trail:·
   autocmd InsertLeave * :set listchars+=trail:·
augroup END

" }}}
" Restore cursor position: {{{

autocmd BufReadPost *
         \ if line("'\"") > 1 && line("'\"") <= line("$") |
         \ exe "normal! g`\"" |
         \ endif

" }}}
" Pentadactyl filetype: {{{

augroup filetypedetect
   au! BufRead,BufNewFile .pentadactylrc setfiletype vim
augroup END

" }}}
" Spellcheck markdown: {{{

autocmd BufRead,BufNewFile *.md setlocal spell

" }}}
" Open folds by default: {{{

autocmd BufWinEnter * let &foldlevel = max(map(range(1, line('$')), 'foldlevel(v:val)'))

" }}}

au BufRead,BufNewFile *.es6 set filetype=javascript

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
