# ttab.vim

Easily create tabs and move between them, using tmux shortcuts.

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

## Installation

Install the plugin using [Plug](https://github.com/junegunn/vim-plug):

```vimscript
Plug 'DanySpin97/ttab.vim'
```

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
