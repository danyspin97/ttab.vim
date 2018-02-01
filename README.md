# ttab.vim

Easily create tabs and move between them, using tmux shortcuts.

## Description

This plugin tries to colm the lack of shortcuts for :term, which
have been introduced lately. ttab.vim let you create terminal buffers
in split and tabs, in the same way you would do in tmux.
It does not try to replace :split and :vsplit; instead it only
add prefixes for commands which take a lot of keystrokes
(:tabnew or :vs\<CR>:term\<CR>).

## Installation

You can use any plugin manager to install ttab.vim.

For example, using [Plug](https://github.com/junegunn/vim-plug) it would be:

```vimscript
Plug 'DanySpin97/ttab.vim'
```

## Mappings

Mapping | Action
----------- | --------
\<Prefix>n  | Go to the next tab
\<Prefix>p  | Go to the previous tab
\<Prefix>c  | Create an empty buffer in a new tab
\<Prefix>t  | Open a terminal in a new tab
\<Prefix>\| | Open a terminal in a vertical window
\<Prefix>\- | Open a terminal in a horizontal window
\<Prefix>x  | Close the current tab

All the mappings work in normal mode and inside the terminal.

The default prefix is '\<C-B>'.

## Settings

### Prefix

Change the prefix (default '\<C-B>'):

```vimscript
let g:ttab_prefix = '<C-B>'
```

### Terminal mappings

Disable the terminal mappings:

```vimscript
let g:ttab_terminal_mapping = 0
```

## LICENSE

This program is licensed under the MIT license.
