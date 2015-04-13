" Set term so OS X can do syntax highlighting
set term=builtin_xterm

" Setup Pathogen @see https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" Disable arrow keys
map <up> <nop>
imap <up> <nop>
map <down> <nop>
imap <down> <nop>
map <left> <nop>
map <right> <nop>
imap <left> <nop>
imap <right> <nop>
" B-A-start

vmap <up> <nop>
vmap <down> <nop>
vmap <left> <nop>
vmap <right> <nop>

set bs=2
set background=dark
" set columns=80
set expandtab
set nocompatible
set ruler
set shiftwidth=2
set tabstop=2
set wrapmargin=8

" Auto indenting and syntax
filetype plugin indent on
syntax on

" Change default colorscheme
colo elflord



