source $VIMRUNTIME/mswin.vim
behave mswin

filetype on
syntax on
colorscheme github

set guifont=Lucida_Console:h9
set lines=35 columns=150
set number
set ruler

let mapleader=" "

set hidden
set history=100

filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set showmatch

" When running a search, get Vim to highlight found words:
set hlsearch


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
