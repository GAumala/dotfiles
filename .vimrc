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
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'udalov/kotlin-vim'
Plugin 'fatih/vim-go'

" language specific tools
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'Shougo/vimproc' "required by ghc-mod
Plugin 'eagletmt/ghcmod-vim'

" colorschemes
Plugin 'flazz/vim-colorschemes'

Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/syntastic'
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

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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

colorscheme basic-dark

" reload buffers from disk when they are updated externally
set autoread

" http://vim.wikia.com/wiki/Recover_from_accidental_Ctrl-U
inoremap <c-w> <c-g>u<c-w>
inoremap <c-u> <c-g>u<c-u>

" automatically change working dir to active buffer's dir
set autochdir
