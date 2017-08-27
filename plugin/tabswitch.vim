" tabswitch.vim
" Author:       Danilo Spinella
" Version:      2.1

if exists('g:tabswitch_loaded') || &compatible
  finish
end

let g:tabswitch_loaded = 1

if exists('g:tabswitch_enable') && !g:tabswitch_enable
    finish
endif

if !exists('g:tabswitch_prefix')
    let g:tabswitch_prefix = '<Leader>t'
end

" Set default values
if !exists('g:tabswitch_insert_mapping')
    let g:tabswitch_insert_mapping = 1
endif
if !exists('g:tabswitch_terminal_open')
    let g:tabswitch_terminal_open = 0
endif
if !exists('g:tabswitch_terminal_mapping')
    let g:tabswitch_terminal_mapping = 1
endif

for g:i in [1, 2, 3, 4,5,6,7,8,9]
    execute printf('nnoremap %s%c %cgt', g:tabswitch_prefix, g:i, g:i)
endfor

" Create new tab
execute printf('noremap  %sc :$tabnew<CR>', g:tabswitch_prefix)
" Close current tab
execute printf('noremap  %sx :tabclose<CR>', g:tabswitch_prefix)
" Go to previous tab
execute printf('noremap  %sp :tabprev<CR>', g:tabswitch_prefix)
" Go to next tab
execute printf('noremap  %sn :tabnext<CR>', g:tabswitch_prefix)
" Open a new window in a vertical split
execute printf('noremap  %s\| :vnew<CR>', g:tabswitch_prefix)
" Open a new window in a horizontal split
execute printf('noremap  %s- :new<CR>', g:tabswitch_prefix)

if g:tabswitch_insert_mapping
    for g:i in [1, 2, 3, 4,5,6,7,8,9]
        execute printf('inoremap %s%c <ESC>%cgt', g:tabswitch_prefix, g:i, g:i)
    endfor

    execute printf('inoremap  %sc <ESC>:$tabnew<CR>', g:tabswitch_prefix)
    execute printf('inoremap  %st <ESC>:$tabnew<CR>:term<CR>', g:tabswitch_prefix)
    execute printf('inoremap  %sx <ESC>:tabclose<CR>', g:tabswitch_prefix)
    execute printf('inoremap  %sp <ESC>:tabprev<CR>', g:tabswitch_prefix)
    execute printf('inoremap  %sn <ESC>:tabnext<CR>', g:tabswitch_prefix)
    execute printf('inoremap  %s\| <ESC>:vnew<CR>', g:tabswitch_prefix)
    execute printf('inoremap  %s- <ESC>:new<CR>', g:tabswitch_prefix)
endif

if g:tabswitch_terminal_open
    " Create new terminal in a new tab
    execute printf('noremap  %st :$tabnew<CR>:term<CR>', g:tabswitch_prefix)
    " Open a new terminal in a vertical split
    execute printf('noremap  %s\|t :vnew<CR>:term<CR>', g:tabswitch_prefix)
    " Open a new terminal in a horizontal split
    execute printf('noremap  %s-t :new<CR>:term<CR>', g:tabswitch_prefix)

    if g:tabswitch_terminal_open
        execute printf('inoremap  %st <ESC>:$tabnew<CR>:term<CR>', g:tabswitch_prefix)
        execute printf('inoremap  %s\|t <ESC>:vnew<CR>:term<CR>', g:tabswitch_prefix)
        execute printf('inoremap  %s-t <ESC>:new<CR>:term<CR>', g:tabswitch_prefix)
    endif
endif

if g:tabswitch_terminal_mapping
    for g:i in [1, 2, 3, 4,5,6,7,8,9]
        execute printf('tnoremap %s%c <C-\><C-N>%cgt', g:tabswitch_prefix, g:i, g:i)
    endfor

    execute printf('tnoremap  %sc <C-\><C-N>:$tabnew<CR>', g:tabswitch_prefix)
    execute printf('tnoremap  %st <C-\><C-N>:$tabnew<CR>:term<CR>', g:tabswitch_prefix)
    execute printf('tnoremap  %sx <C-D> <C-\><C-N>:tabclose<CR>', g:tabswitch_prefix)
    execute printf('tnoremap  %sp <C-\><C-N>:tabprev<CR>', g:tabswitch_prefix)
    execute printf('tnoremap  %sn <C-\><C-N>:tabnext<CR>', g:tabswitch_prefix)
    execute printf('tnoremap  %s\| <C-\><C-N>:vnew<CR>', g:tabswitch_prefix)
    execute printf('tnoremap  %s\|t <C-\><C-N>:vnew<CR>:term<CR>', g:tabswitch_prefix)
    execute printf('tnoremap  %s- <C-\><C-N>:new<CR>', g:tabswitch_prefix)
    execute printf('tnoremap  %s-t <C-\><C-N>:new<CR>:term<CR>', g:tabswitch_prefix)
endif
