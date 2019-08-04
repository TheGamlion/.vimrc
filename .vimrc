" A good writeup of the .vimrc is here:
" http://dougblack.io/words/a-good-vimrc.html

syntax on

" Tab Handling
set tabstop=4
set softtabstop=4
set expandtab

set encoding=utf-8

"colorscheme
:colorscheme badwolf


" Show line numbers
set number

" Show command in bottom bar
set showcmd

" Highlight the current line
set cursorline

" Load filetype specific indentation rules
" ~/.vim/indent/python.vim would load for *.py
" filetype indent on

" Visual autocomplete for command menu
set wildmenu

" Redraw only when necessary, speeds up macros
set lazyredraw

set showmatch    " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" jk is escape
inoremap jk <esc>

nnoremap <buffer> <F5> :exec '!python3' shellescape(@%, 1)<cr>


set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add plugins here
Plugin 'Valloric/YouCompleteMe'




call vundle#end()
filetype plugin indent on
