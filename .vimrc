" VIM Configuration

set nocompatible          " Cancel the compatibility with Vi

" -- Display 
set title                 " Update the title of your window or your terminal 
set number                " Display line numbers 
set ruler                 " Display cursor position 
set wrap                  " Wrap lines when they are too long 
set scrolloff=3           " Display at least 3 lines around you cursor (for scrolling) 
set guioptions=T          " Enable the toolbar

set backspace=indent,eol,start " Backspace behaves as expected 
set hidden                " Hide buffer (file) instead of abandoning when switching to another buffer 
 
" Enable file specific behavior like syntax highlighting and indentation 
filetype on 
filetype plugin on
filetype indent on

syntax enable             " enable syntax processing

set tabstop=2             " number of visual spaces per TAB
set softtabstop=2         " number of spaces in tab when editing
set shiftwidth=2
set expandtab             " tabs are spaces

set autoindent
set textwidth=80

set wildmenu              " visual autocomplete for command menu

" -- Search
set ignorecase            " Ignore case when searching 
set smartcase             " If there is an uppercase in your search term search case sensitive again 
set incsearch             " Highlight search results when typing 
set hlsearch              " Highlight search results

" -- Beep
set visualbell            " Prevent Vim from beeping
set noerrorbells          " Prevent Vim from beeping

" Solarized theme
"https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
" ~/.vim/colors/solarized.vim

" list color schemes 
" :colorscheme

" Use the dark version of Solarized 
set background=dark
colorscheme solarized

" Set font
set guifont=DejaVu\ Sans\ Mono\ 10
set antialias

:imap ,, <Esc>

