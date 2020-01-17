" load default settings + pacman plugins
runtime! archlinux.vim

" remove vi compatibility mode
set nocompatible

" enable syntax and plugins
syntax enable
filetype plugin on

" search into subfolders (file tab-completion)
set path+=**

" display matching file when tab-complete
set wildmenu


let g:airline_powerline_fonts = 1
set encoding=utf-8

set number
colorscheme solarized
filetype indent plugin on
set clipboard=unnamedplus

set hlsearch
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
imap ii <Esc>
