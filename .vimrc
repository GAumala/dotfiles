" <VUNDLE STUFF>
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" language support
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'fatih/vim-go'

" colorschemes
Plugin 'flazz/vim-colorschemes'

Plugin 'jiangmiao/auto-pairs'
Plugin 'dense-analysis/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
syntax on

" ALE settings
let g:airline#extensions#ale#enabled = 1
let g:ale_fixers = {'javascript': ['prettier']}

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
colorscheme solarized
set background=dark

" reload buffers from disk when they are updated externally
set autoread

" http://vim.wikia.com/wiki/Recover_from_accidental_Ctrl-U
inoremap <c-w> <c-g>u<c-w>
inoremap <c-u> <c-g>u<c-u>

" automatically change working dir to active buffer's dir
set autochdir

" don't show matching parenthesis
let g:loaded_matchparen=1

" show git diff with Ctrl+G
function GitDiff()
    :silent write
    :silent execute '!git diff --color=always -- ' . expand('%:p') . ' | less --RAW-CONTROL-CHARS'
    :redraw!
endfunction
nnoremap <leader>gd :call GitDiff()<cr>

" This makes vim transparent in terminal by default
hi Normal ctermbg=NONE

" toggle transparency
let t:is_transparent = 0
function! Toggle_transparent()
   if t:is_transparent == 0
       if has ('gui_running')
           " Sets gVim to transparent
           :silent !transset -a --dec 0.15
       else
           " Sets vim to opaque
           set background=dark
       endif
       let t:is_transparent = 1
   else
       if has ('gui_running')
           " Sets gVim to opaque
           :silent !transset -a --max 1
       else
           " Sets vim to transparent
           hi Normal ctermbg=NONE
       endif
       let t:is_transparent = 0
   endif
endfunction
nnoremap <C-t> :call Toggle_transparent()<CR>
