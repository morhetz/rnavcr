" <F9>: pastetoggle

syntax on

" Important: {{{

set nocompatible
set pastetoggle=<F9>

" }}}
" Moving: {{{

set whichwrap=b,s,<,>,h,l,[,]
set nostartofline
set incsearch
set ignorecase
set smartcase

" }}}
" Text: {{{

set scrolloff=4
set wrap
set linebreak
set showbreak=↪
set sidescroll=1
set sidescrolloff=10
set display=lastline
set lazyredraw
set list
set listchars=tab:▸\ ,trail:·,eol:¬,extends:❯,precedes:❮
set number
set relativenumber
set numberwidth=4

" }}}
" Highlights: {{{

set background=dark
set hlsearch
set cursorline
set colorcolumn=+1
set synmaxcol=128

" }}}
" Windows: {{{

set laststatus=2
set hidden
set switchbuf=useopen
set splitright

" }}}
" Terminal: {{{

set title
set ttyfast

" }}}
" Mouse: {{{

set mouse=a
set mousehide

" }}}
" Gui: {{{

set guioptions=

" }}}
" Messages: {{{

set shortmess=atI
set showcmd
set noshowmode
set ruler

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set noerrorbells visualbell t_vb=

" }}}
" Selection: {{{

set clipboard=unnamed

" }}}
" Editing: {{{

set undolevels=1000
set undoreload=10000
set textwidth=80
set backspace=indent,eol,start
set formatoptions=qrn1j
set complete=.,w,b,u,t,i
set completeopt=longest,menuone,preview
set showmatch
set matchtime=2

" }}}
" Tabs: {{{

set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set shiftround
set expandtab
set autoindent
set nosmartindent
set nocindent

" }}}
" Folds: {{{

" TODO here

" }}}
" Mappings: {{{

set timeout
set ttimeout
set timeoutlen=500
set ttimeoutlen=100

" }}}
" Files: {{{

set modeline
set modelines=4
set fileformats=unix,dos,mac
set backup
exe 'set backupdir=' . g:rnavcr_backup_dir
set autowrite
set autoread

" }}}
" Swap: {{{

set noswapfile
exe 'set directory=' . g:rnavcr_swap_dir

" }}}
" Command: {{{

set history=1000
set wildmode=list:longest,full
set wildignore+=.hg,.git,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.ico,*.jpeg
set wildignore+=*.o,*.obj,*.pyc,*.exe,*.dll,*.manifest
set wildignore+=*.a,*.mo,*.la,*.so
set wildignore+=*.swp,*.bak,*.DS_Store
set wildmenu
set undofile
exe 'set undodir=' . g:rnavcr_undo_dir

" }}}
" Multibyte: {{{

set encoding=utf-8

" }}}
" Various: {{{

set virtualedit=block,onemore
set gdefault

" }}}
" Leader: {{{

let mapleader = "\<Space>"
let maplocalleader = '\\'

" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
