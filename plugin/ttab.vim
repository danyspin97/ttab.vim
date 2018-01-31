" ttab.vim
" Author:       Danilo Spinella
" Version:      0.1

if exists('g:ttab_loaded') || &compatible
  finish
end

let g:ttab_loaded = 1

if !exists('g:ttab_prefix')
    let g:ttab_prefix = '<C-B>'
end

" Add mappings while in terminal?
if !exists('g:ttab_terminal_mapping')
    let g:ttab_terminal_mapping = 1
endif

if !exists('g:ttab_tabswitch')
    for g:i in [1,2,3,4,5,6,7,8,9]
        execute printf('nnoremap %s%c %cgt', g:ttab_prefix, g:i, g:i)
        execute printf('tnoremap %s%c <C-\><C-N>%cgt', g:ttab_prefix, g:i, g:i)
    endfor
endif

" Go to previous tab
execute printf('noremap %sp :tabprev<CR>', g:ttab_prefix)
" Go to next tab
execute printf('noremap %sn :tabnext<CR>', g:ttab_prefix)

" Create an empty tab in a new tab
execute printf('noremap %sc :$tabnew<CR>', g:ttab_prefix)

" Create new terminal in a new tab
execute printf('noremap %st :$tabnew<CR>:term<CR>', g:ttab_prefix)
" Open a new terminal in a vertical split
execute printf('noremap %s\| :vnew<CR>:term<CR>', g:ttab_prefix)
" Open a new terminal in a horizontal split
execute printf('noremap %s- :new<CR>:term<CR>', g:ttab_prefix)
" Edit a file in a new tab
execute printf('noremap %se :tabedit ', g:ttab_prefix)
" Close current tab
execute printf('noremap %sx :tabclose<CR>', g:ttab_prefix)

" Add mapping in terminal
if g:ttab_terminal_mapping
    execute printf('tnoremap %s<ESC> <C-\><C-N>', g:ttab_prefix)
    execute printf('tnoremap %sc <C-\><C-N>:$tabnew<CR>', g:ttab_prefix)
    execute printf('tnoremap %st <C-\><C-N>:$tabnew<CR>:term<CR>', g:ttab_prefix)
    execute printf('tnoremap %se <C-\><C-N>:tabedit ', g:ttab_prefix)
    execute printf('tnoremap %sx <C-\><C-N>:tabclose<CR>', g:ttab_prefix)
    execute printf('tnoremap %sp <C-\><C-N>:tabprev<CR>', g:ttab_prefix)
    execute printf('tnoremap %sn <C-\><C-N>:tabnext<CR>', g:ttab_prefix)
    execute printf('tnoremap %s\| <C-\><C-N>:vnew<CR>:term<CR>', g:ttab_prefix)
    execute printf('tnoremap %s- <C-\><C-N>:new<CR>:term<CR>', g:ttab_prefix)
endif
