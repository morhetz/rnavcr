let g:incsearch#auto_nohlsearch = 1
let g:incsearch#magic = '\v'

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

augroup incsearch-keymap
   autocmd!
   autocmd VimEnter * call s:incsearch_keymap()
augroup END

function! s:incsearch_keymap()
   IncSearchNoreMap <C-f> <Over>(incsearch-scroll-f)
   IncSearchNoreMap <C-b> <Over>(incsearch-scroll-b)

   IncSearchNoreMap <C-n> <Over>(incsearch-next)
   IncSearchNoreMap <C-p> <Over>(incsearch-prev)

   IncSearchNoreMap <tab> <Over>(buffer-complete)
endfunction

" vim: set sw=3 ts=3 sts=3 et tw=80 ft=vim fdm=marker:
