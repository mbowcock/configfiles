call pathogen#infect()

set nocompatible

syntax on 
colorscheme solarized
set background=dark
set smartindent
set autoindent
set hlsearch
set incsearch
set showmatch
set number
let mapleader = ","

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
cmap w!! w !sudo tee % > /dev/null

nnoremap j gj
nnoremap k gk

if has("autocmd")
    filetype plugin indent on
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType python setlocal ts=4 sw=4 sts=4 expandtab
endif

set noswapfile
set nobackup
set visualbell
set noerrorbells
