"vim-plug
call plug#begin('~/.config/nvim/plugged')
Plug 'ellisonleao/gruvbox.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-eunuch'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'rbgrouleff/bclose.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-rhubarb'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }


call plug#end()"

"general
set termguicolors
set background=dark
colorscheme gruvbox
set noshowmode
set clipboard+=unnamedplus
set cursorline
set number
set nowrapscan
set hidden
set splitbelow
set splitright
set smartindent
set expandtab
set nobackup
set nowritebackup
set updatetime=300
set showtabline=2
set signcolumn=number
set shortmess+=c
set mouse=a
set cmdheight=2
set wildmode=longest:full,full
set wildmenu
set scrolloff=1
let g:netrw_fastbrowse = 0
let g:gruvbox_plugin_hi_groups = 1
let g:gruvbox_filetype_hi_groups = 1
au! BufWritePost $MYVIMRC source %

"bindings
inoremap jk <Esc>
inoremap kj <Esc>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Space>p :bp<CR>
nnoremap <Space>n :bn<CR>
nnoremap <Space>d :bd<CR>
nnoremap <Space>l :ls<CR>
nnoremap <Space><Space> :b#<CR>
nnoremap <Space>1 :1b<CR>
nnoremap <Space>2 :2b<CR>
nnoremap <Space>3 :3b<CR>
nnoremap <Space>4 :4b<CR>
nnoremap <Space>5 :5b<CR>
nnoremap <Space>6 :6b<CR>
nnoremap <Space>7 :7b<CR>
nnoremap <Space>8 :8b<CR>
nnoremap <Space>9 :9b<CR>
nnoremap <Space>0 :10b<CR>
nnoremap gb :Buffers<CR>

"airline
let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1

"colorizer
lua require'colorizer'.setup()

"sneak
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1
highlight Sneak guifg=black guibg=yellow
highlight SneakScope guifg=red guibg=yellow

"greek
set langmap=ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR,ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ,αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj,κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz,ςw

"coc
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> <c-]> <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
au CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

"spell on tex
let g:tex_flavor = "latex"
au FileType tex setlocal spell spelllang=el,en_us
au BufNewFile,BufRead *.tex setlocal spell spelllang=el,en_us

"resize vim windows on host resize
au VimResized * wincmd =

"indentation guides
let g:indentLine_char='▏'

" tsconfig.json is actually jsonc, help TypeScript set the correct filetype
autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" TypeScript key bindings
nmap <F2> :Prettier<cr>
nmap <Space>t :CocCommand explorer<cr>


lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "bash", "css", "html", "javascript", "json", "jsonc", "python", "toml", "typescript", "vim", "yaml" },
  sync_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true
  }
}
EOF

" Find files using Telescope command-line sugar.
nnoremap <Space>f <cmd>Telescope find_files<cr>
nnoremap <Space>g <cmd>Telescope live_grep<cr>
