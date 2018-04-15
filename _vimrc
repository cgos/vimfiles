source $VIMRUNTIME/mswin.vim
behave mswin

filetype on
syntax on
colorscheme github
let mapleader=" "

if has ("unix")
  set guifont=Lucida_Console:h12
  set lines=55 columns=150
elseif has ("win32") || has ("win64")
  set guifont=Lucida_Console:h9
  set lines=35 columns=150
endif

set number
set ruler


set hidden
set history=100

filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set noerrorbells              " No error bells please
set showmode
set showcmd
set nocompatible              " vim, not vi



"  searching
" When running a search, get Vim to highlight found words:
set hlsearch
set incsearch                 " incremental search
set ignorecase                " search ignoring case
set hlsearch                  " highlight the search
set showmatch                 " show matching bracket
set diffopt=filler,iwhite     " ignore all whitespace and sync



"remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

execute pathogen#infect()
" how pathogen works:
" cd ~/.vim/bundle && \
" git clone https://github.com/tpope/vim-sensible.git

syntax on
filetype plugin indent on

if has("gui_running")
  " Set a nicer font.
  "set guifont=Consolas:h11:cDEFAULT
  " Hide the toolbar.
  set guioptions-=T
endif
