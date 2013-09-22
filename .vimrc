set nocompatible

if has("syntax")
	syntax on
endif

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")
	filetype plugin indent on
endif

set showmode

set showmatch
set showcmd
set ignorecase
set smartcase
set hlsearch

set mouse=a

set expandtab
set smarttab
set shiftwidth=3
set softtabstop=3

set number

set wildmenu
set wildmode=list:longest,full

set ruler                     " show the line number on the bar
set more                      " use more prompt
set autoread

set noerrorbells
set novisualbell
set t_vb=
set tm=500
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set encoding=utf8

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Always show the status line
set laststatus=2

set guioptions-=T  "remove toolbar
