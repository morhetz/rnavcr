" Init: {{{

if exists('g:rnavcr_loaded') || &compatible
	finish
else
	let g:rnavcr_loaded = 1
endif

set nocompatible
set encoding=utf-8
scriptencoding utf-8

" }}}

" Predefinitions: {{{

let s:is_osx = has('macunix') || has('mac')
let s:is_linux = has('unix') && !has('macunix') && !has('win32unix')
let s:is_win = has('win16') || has('win32') || has('win64')

function s:define(opt, val)
	if !exists(a:opt)
		exe 'let' a:opt . '="' . a:val . '"'
	endif
endfunction

" Warmup: {{{

if s:is_win
	let s:shellsl=&shellslash
	set shellslash
endif

let g:rnavcr_me = expand('<sfile>')

call s:define('g:rnavcr_root_dir', fnamemodify(g:rnavcr_me, ':h'))
call s:define('g:rnavcr_dotvim_dir', '~/.vim')
call s:define('g:rnavcr_plugged_dir', g:rnavcr_dotvim_dir . '/plugged')

let g:rnavcr_same_dirs = (g:rnavcr_root_dir == g:rnavcr_dotvim_dir)
let g:rnavcr_is_plugged = (expand(g:rnavcr_plugged_dir)
                                     \ == fnamemodify(g:rnavcr_root_dir, ':h'))

call s:define('g:rnavcr_backup_dir', g:rnavcr_dotvim_dir . '/backup')
call s:define('g:rnavcr_swap_dir', g:rnavcr_dotvim_dir . '/swap')
call s:define('g:rnavcr_undo_dir', g:rnavcr_dotvim_dir . '/undo')

call s:define('g:rnavcr_file_ext', '')
if g:rnavcr_same_dirs
	call s:define('g:rnavcr_local_postfix', '.local')
else
	call s:define('g:rnavcr_local_postfix', '')
endif

call s:define('g:rnavcr_after_dir', g:rnavcr_root_dir . '/after')
call s:define('g:rnavcr_after_local_dir', g:rnavcr_dotvim_dir . '/after'
                                                    \ . g:rnavcr_local_postfix)

call s:define('g:rnavcr_before', g:rnavcr_root_dir . '/before'
                                                         \ . g:rnavcr_file_ext)
call s:define('g:rnavcr_plugs', g:rnavcr_root_dir . '/plugs'
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
call s:define('g:rnavcr_plugs_local', g:rnavcr_dotvim_dir . '/plugs'
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
let s:rnavcr_cfg['.plugged'] = g:rnavcr_plugged_dir
let s:rnavcr_cfg['.after'] = g:rnavcr_after_dir
let s:rnavcr_cfg['.after.local'] = g:rnavcr_after_local_dir

let s:rnavcr_cfg['before'] = g:rnavcr_before
let s:rnavcr_cfg['plugs'] = g:rnavcr_plugs
let s:rnavcr_cfg['settings'] = g:rnavcr_settings
let s:rnavcr_cfg['autocmds'] = g:rnavcr_autocmds
let s:rnavcr_cfg['mappings'] = g:rnavcr_mappings
let s:rnavcr_cfg['guiconfig'] = g:rnavcr_guiconfig

let s:rnavcr_cfg['before.local'] = g:rnavcr_before_local
let s:rnavcr_cfg['plugs.local'] = g:rnavcr_plugs_local
let s:rnavcr_cfg['settings.local'] = g:rnavcr_settings_local
let s:rnavcr_cfg['autocmds.local'] = g:rnavcr_autocmds_local
let s:rnavcr_cfg['mappings.local'] = g:rnavcr_mappings_local
let s:rnavcr_cfg['guiconfig.local'] = g:rnavcr_guiconfig_local
let s:rnavcr_cfg['vimrc.local'] = g:rnavcr_vimrc_local

if s:is_win
	if !s:shellsl
		set noshellslash
	endif
endif

" }}}


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

function! s:addrtpbefore(path)
	let fullpath = s:rnavcr_cfg[a:path]
	if isdirectory(expand(fullpath))
		exe 'set rtp^=' . fullpath
	endif
endfunction

function! s:addrtpafter(path)
	let fullpath = s:rnavcr_cfg[a:path]
	if isdirectory(expand(fullpath))
		exe 'set rtp+=' . fullpath
	endif
endfunction

function! RnavcrGet(opt)
	return s:rnavcr_cfg[a:opt]
endfunction

" }}}

call s:addrtpbefore('.rnavcr')
call s:addrtpbefore('.vim')
call s:addrtpafter('.after')
call s:addrtpafter('.after.local')

call s:using('before')
call s:using('before.local')

" Plugs: {{{

call plug#begin(RnavcrGet('.plugged'))

call s:using('plugs')
call s:using('plugs.local')

call plug#end()

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

call s:setcolorscheme('gruvbox')

call s:using('vimrc.local')

" vim: set sw=3 ts=3 sts=3 noet tw=80 ft=vim fdm=marker:
