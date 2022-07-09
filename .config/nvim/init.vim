" Genaral Settings
filetype plugin indent on   "allow auto-indenting depending on file type
set autoindent
set backupdir=~/.cache/vim " Directory to store backup files.
set clipboard=unnamedplus   " using system clipboard
set cursorline              " highlight current cursorline
set encoding=utf-8
set expandtab               " converts tabs to white space
set fileencoding=utf-8
set hidden
set hlsearch                " highlight search 
set ignorecase              " case insensitive 
set incsearch               " incremental search
set mouse=a                 " enable mouse click
set mouse=v                 " middle-click paste with 
set nocompatible            " disable compatibility to old-time vi
set nowrap
set number                  " add line numbers
set shiftwidth=4            " width for autoindents
set showmatch               " show matching 
set smartindent
set smarttab
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set tabstop=4               " number of columns occupied by a tab 
set termguicolors
set ttyfast                 " Speed up scrolling in Vim
set updatetime=300
syntax on                   " syntax highlighting

" Plugins
call plug#begin()

  Plug 'morhetz/gruvbox' " Gruvbox Theme
  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-commentary'

call plug#end()

" Theme settings
colorscheme gruvbox
set background=dark

" Airline Settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
set showtabline=2
set noshowmode

" Press i to enter insert mode, and ii to exit insert mode.
inoremap ii <Esc>
inoremap jk <Esc>
inoremap kj <Esc>

nnoremap <M-j>   :resize -2<CR>
nnoremap <M-k>   :resize +2<CR>
nnoremap <M-h>   :vertical resize -2<CR>
nnoremap <M-l>   :vertical resize +2<CR>

nnoremap <TAB>   :bnext<CR>
nnoremap <S-TAB>   :bprevious
nnoremap <C-s>   :w<CR>
nnoremap <C-Q>   :wq<CR>

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

let g:mapleader = "\<Space>"

