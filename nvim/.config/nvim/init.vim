"vim-plug
call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'morhetz/gruvbox'
Plug 'lervag/vimtex'
call plug#end()"

"general
syntax on
set number
set clipboard+=unnamedplus

"theming
let g:gruvbox_italic=1
colorscheme gruvbox
let g:airline_symbols = get(g:,'airline_symbols',{})
let g:airline_symbols.linenr = 'Ξ'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

"bindings
imap ii <Esc>
no <C-j> <C-w>j| "switching to below window
no <C-k> <C-w>k| "switching to above window
no <C-l> <C-w>l| "switching to right window
no <C-h> <C-w>h| "switching to left window

"folding
set foldmethod=indent
set foldlevel=99

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
"python
au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix

"latex
autocmd FileType tex setlocal spell spelllang=el,en_us

"greek
set langmap=ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR,ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ,αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj,κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz,ςw

"mouse
set mouse=a

nmap <leader>gs :G<CR>

"vimtex
let g:tex_flavor = 'latex'

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"tmux color fix
