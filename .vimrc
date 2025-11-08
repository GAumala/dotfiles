set nocompatible              " be iMproved, required
syntax on

" **Use spaces instead of tabs**
set tabstop=2       " The width of a TAB is set to 2.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 2.

set shiftwidth=2    " Indents will have a width of 2

set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces
" *****

" escape ESC
imap kj <Esc>

"split new buffers to right
set splitright

" numbers column
set nu
set relativenumber

filetype plugin on

" reload buffers from disk when they are updated externally
set autoread

" automatically change working dir to active buffer's dir
set autochdir
