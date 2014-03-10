" Init: {{{

set nocompatible
set encoding=utf-8
scriptencoding utf-8

" }}}

" Predefinitions: {{{

function s:define(opt, val)
	if !exists(a:opt)
		exe 'let' a:opt . '="' . a:val . '"'
	endif
endfunction

" Warmup: {{{

call s:define('g:rnavcr_dotvim_dir', '~/.vim')

call s:define('g:rnavcr_root_dir', g:rnavcr_dotvim_dir . '/rnavcr')
call s:define('g:rnavcr_bundle_dir', g:rnavcr_dotvim_dir . '/bundle')
call s:define('g:rnavcr_vundle_dir', g:rnavcr_bundle_dir . '/vundle')

call s:define('g:rnavcr_backup_dir', g:rnavcr_dotvim_dir . '/backup')
call s:define('g:rnavcr_swap_dir', g:rnavcr_dotvim_dir . '/swap')
call s:define('g:rnavcr_undo_dir', g:rnavcr_dotvim_dir . '/undo')

call s:define('g:rnavcr_file_ext', '')
if g:rnavcr_root_dir == g:rnavcr_dotvim_dir
	call s:define('g:rnavcr_local_postfix', '.local')
else
	call s:define('g:rnavcr_local_postfix', '')
endif

call s:define('g:rnavcr_after_dir', g:rnavcr_root_dir . '/after')
call s:define('g:rnavcr_after_local_dir', g:rnavcr_dotvim_dir . '/after'
                                                    \ . g:rnavcr_local_postfix)

call s:define('g:rnavcr_before', g:rnavcr_root_dir . '/before'
                                                         \ . g:rnavcr_file_ext)
call s:define('g:rnavcr_bundles', g:rnavcr_root_dir . '/bundles'
                                                         \ . g:rnavcr_file_ext)
call s:define('g:rnavcr_settings', g:rnavcr_root_dir . '/settings'
                                                         \ . g:rnavcr_file_ext)
call s:define('g:rnavcr_autocmds', g:rnavcr_root_dir . '/autocmds'
                                                         \ . g:rnavcr_file_ext)
call s:define('g:rnavcr_mappings', g:rnavcr_root_dir . '/mappings'
                                                         \ . g:rnavcr_file_ext)
call s:define('g:rnavcr_guiconfig', g:rnavcr_root_dir . '/guiconfig'
                                                         \ . g:rnavcr_file_ext)

call s:define('g:rnavcr_before_local', g:rnavcr_dotvim_dir . '/before'
                                \ . g:rnavcr_local_postfix . g:rnavcr_file_ext)
call s:define('g:rnavcr_bundles_local', g:rnavcr_dotvim_dir . '/bundles'
                                \ . g:rnavcr_local_postfix . g:rnavcr_file_ext)
call s:define('g:rnavcr_settings_local', g:rnavcr_dotvim_dir . '/settings'
                                \ . g:rnavcr_local_postfix . g:rnavcr_file_ext)
call s:define('g:rnavcr_autocmds_local', g:rnavcr_dotvim_dir . '/autocmds'
                                \ . g:rnavcr_local_postfix . g:rnavcr_file_ext)
call s:define('g:rnavcr_mappings_local', g:rnavcr_dotvim_dir . '/mappings'
                                \ . g:rnavcr_local_postfix . g:rnavcr_file_ext)
call s:define('g:rnavcr_guiconfig_local', g:rnavcr_dotvim_dir . '/guiconfig'
                                \ . g:rnavcr_local_postfix . g:rnavcr_file_ext)
call s:define('g:rnavcr_vimrc_local', g:rnavcr_dotvim_dir . '/vimrc'
                                \ . g:rnavcr_local_postfix . g:rnavcr_file_ext)

let s:rnavcr_cfg = {}

let s:rnavcr_cfg['.vim'] = g:rnavcr_dotvim_dir
let s:rnavcr_cfg['.rnavcr'] = g:rnavcr_root_dir
let s:rnavcr_cfg['.bundle'] = g:rnavcr_bundle_dir
let s:rnavcr_cfg['.vundle'] = g:rnavcr_vundle_dir
let s:rnavcr_cfg['.after'] = g:rnavcr_after_dir
let s:rnavcr_cfg['.after.local'] = g:rnavcr_after_local_dir

let s:rnavcr_cfg['before'] = g:rnavcr_before
let s:rnavcr_cfg['bundles'] = g:rnavcr_bundles
let s:rnavcr_cfg['settings'] = g:rnavcr_settings
let s:rnavcr_cfg['autocmds'] = g:rnavcr_autocmds
let s:rnavcr_cfg['mappings'] = g:rnavcr_mappings
let s:rnavcr_cfg['guiconfig'] = g:rnavcr_guiconfig

let s:rnavcr_cfg['before.local'] = g:rnavcr_before_local
let s:rnavcr_cfg['bundles.local'] = g:rnavcr_bundles_local
let s:rnavcr_cfg['settings.local'] = g:rnavcr_settings_local
let s:rnavcr_cfg['autocmds.local'] = g:rnavcr_autocmds_local
let s:rnavcr_cfg['mappings.local'] = g:rnavcr_mappings_local
let s:rnavcr_cfg['guiconfig.local'] = g:rnavcr_guiconfig_local
let s:rnavcr_cfg['vimrc.local'] = g:rnavcr_vimrc_local

" }}}

function! s:isOsx()
	return has('macunix')
endfunction
function! s:isLinux()
	return has('unix') && !has('macunix') && !has('win32unix')
endfunction
function! s:isWindows()
	return (has('win16') || has('win32') || has('win64'))
endfunction

function! s:exists(path)
	return filereadable(expand(a:path))
endfunction
function! s:using(path)
	let fullpath = s:rnavcr_cfg[a:path]
	if s:exists(fullpath)
		exe 'source' fullpath
	endif
endfunction

function! s:setcolorscheme(scheme)
   let path = 'colors/' . a:scheme . '.vim'
	if !empty(globpath(&rtp, path))
		exe 'colorscheme' a:scheme
	endif
endfunction

"function! s:addrtp(scheme)
"   let path = 'colors/' . a:scheme . '.vim'
"	if !empty(globpath(&rtp, path))
"		exe 'colorscheme' a:scheme
"	endif
"endfunction

" }}}

call s:using('before')
call s:using('before.local')

" Bundles: {{{

filetype off

exe 'set rtp+=' . g:rnavcr_vundle_dir
call vundle#rc(g:rnavcr_bundle_dir)

call s:using('bundles')
call s:using('bundles.local')

filetype plugin indent on

"exe 'set rtp^=' . '.rnavcr'
"exe 'set rtp^=' . '.vim'

"exe 'set rtp+=' . '.after'
"exe 'set rtp+=' . '.after.local'

" }}}

call s:using('settings')
call s:using('settings.local')

call s:using('autocmds')
call s:using('autocmds.local')

call s:using('mappings')
call s:using('mappings.local')

if has('gui_running')
	call s:using('guiconfig')
	call s:using('guiconfig.local')
endif

call s:using('vimrc.local')

" vim: set sw=3 ts=3 sts=3 noet tw=80 ft=vim fdm=marker:
