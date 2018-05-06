2-space, no tabs

single word for plugin name (sneak, fugitive, airline, startify)
prefix github repo with 'vim-'

snake_case everything
don't use short forms or abbreviated commands (func)

be consistent, name unscoped plugin functions just as autoloads
function! fugitive#is_git_dir(path)

it's common to check plugin loaded status with `g:loaded_plugname` variable
otherwise name global vars as `g:plugname_setting_property`

be smart to provide plug-available mappings in form of e.g.
nnoremap <silent> <Plug>(plugname-command) :call plugname#method()<cr>

http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_3)#Use_of_.3CPlug.3E

prefer plugname#method functions over <SID>
