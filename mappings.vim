" +(expand reg), #(back *), ?(back /), sS(substitute), r(replace 1)
" U (undo on the line)

" Nop keys: {{{

" nnoremap <left> <nop>
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <right> <nop>

" noremap <f1> <nop>

" }}}
" map Q to something useful: {{{
nnoremap Q gqap
vnoremap Q gq

" }}}
" Fix PgUp, PgDown: {{{

" nnoremap <pageup> <c-u>
" nnoremap <pagedown> <c-d>
" inoremap <pageup> <c-o><c-u>
" inoremap <pagedown> <c-o><c-d>

" }}}
" Match % mapping: {{{

nnoremap <bs> %
vnoremap <bs> %

" }}}
" Improve up/down movement on wrapped lines: {{{

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" }}}
" Sane regexes: {{{

nnoremap / /\v
vnoremap / /\v
nnoremap ? ?\v
vnoremap ? ?\v
nnoremap :s/ :s/\v

" }}}
" Auto center: {{{

nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz
nnoremap <silent> <C-o> <C-o>zz
nnoremap <silent> <C-i> <C-i>zz

" }}}
" Begining & End of line: {{{

noremap H ^
noremap L $
vnoremap L g_

" }}}
" Make zO recursively open whatever top level fold we're in: {{{

nnoremap zO zCzO

" }}}
" Keep the cursor in place while joining lines: {{{

nnoremap J mzJ`z

" }}}
" Select entire buffer: {{{

nnoremap vaa ggvGg_
nnoremap Vaa ggVG

" }}}
" Syn stack: {{{

nmap <leader>s :call <SID>SynStack()<CR>
function! <SID>SynStack()
   if !exists("*synstack")
      return
   endif
   echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" }}}
" Remap semicolon: {{{

nnoremap ; :
vnoremap ; :

" }}}
" Switch between the last two files: {{{

" nnoremap ,, <c-^>

" }}}
" Quickly select text you just pasted: {{{

noremap gV `[v`]

" }}}
" Edit vimrc/zshrc and load vimrc bindings: {{{

nnoremap <leader>ev :vsp ~/.config/vim/vimrc<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>

" }}}
" Delete trailing whitespace: {{{

function! StripTrailing()
   normal m`
   let _s=@/
   %s/\s\+$//e
   let @/=_s
   normal ``
   echo "removed trailing spaces (if any)"
endfunction

nmap <leader>w :call StripTrailing()<CR>

" }}}
" Reindent the entire file: {{{

nmap <leader>= gg=G``:echo "reindent global"<CR>

" }}}
" cd to the current file's path: {{{

nnoremap <leader>c :cd %:p:h<CR>:pwd<CR>

" }}}
" switch alt buffer {{{

noremap ' `
noremap `` :<Esc>:b#<CR>

" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
