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

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
