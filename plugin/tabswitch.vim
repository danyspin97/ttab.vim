" tabswitch.vim
" Author:       Danilo Spinella
" Version:      2.1

if exists("g:tabswitch_loaded") || &cp
  finish
end

let g:tabswitch_loaded = 1

if !exists("g:tabswitch_prefix")
    let g:tabswitch_prefix = "<Leader>t"
end

for i in [1, 2, 3, 4,5,6,7,8,9]
    execute "nnoremap " . g:tabswitch_prefix . i . " " . i . "gt"
endfor
