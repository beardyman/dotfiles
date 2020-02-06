
" turn off compatibility with vi
set nocompatible

source ~/.plug.vim

" colors
set t_co=256
syntax on
colorscheme onedark

" setup tab/space settings 
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" mappings
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap jj <esc>

" editor configs
set number
set encoding=utf-8
set autoindent
set cursorline

