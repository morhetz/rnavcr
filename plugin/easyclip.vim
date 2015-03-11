let g:EasyClipUseCutDefaults = 0

nmap x <Plug>MoveMotionPlug
xmap x <Plug>MoveMotionXPlug
nmap xx <Plug>MoveMotionLinePlug
nmap X x$

let g:EasyClipUsePasteToggleDefaults = 0

" Moved to after:
" nmap [p <plug>EasyClipSwapPasteForward
" nmap ]p <plug>EasyClipSwapPasteBackwards

nmap <silent> gs <plug>SubstituteOverMotionMap
xmap gs <plug>XEasyClipPaste
nmap gss <plug>SubstituteLine
nmap gS gs$

" vim: set sw=3 ts=3 sts=3 et tw=80 ft=vim fdm=marker:
