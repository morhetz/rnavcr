let g:sneak#use_ic_scs = 1
let g:sneak#streak = 1
let g:sneak#s_next = 1

let g:sneak#textobject_z = 0

" replace 'f' with 2-char Sneak
nmap f <Plug>Sneak_s
nmap F <Plug>Sneak_S
xmap f <Plug>Sneak_s
xmap F <Plug>Sneak_S
omap f <Plug>Sneak_s
omap F <Plug>Sneak_S

" replace 't' with 1-char Sneak
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T

let g:sneak#target_labels = "aoehtns/AOEUHTNS"

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
