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

set showmatch
set showcmd
set ignorecase
set smartcase
set hlsearch

" use * to higlight all occurences of the word, without jumping
nnoremap * *N


set mouse=a

set expandtab
set smarttab
set shiftwidth=3
set softtabstop=3

set number

set wildmenu
set wildmode=list:longest,full

set ruler       " show the line number on the bar
set more        " use more prompt
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

vnoremap <C-c> "*y

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h

" CTAGS
set tags=tags;/

" CTAGS mappings
map <F3> <C-]>
map <C-l> <C-W>l

"Bubble single lines (kicks butt)
"http://vimcasts.org/episodes/bubbling-text/
nmap <C-Up> ddkP
nmap <C-Down> ddp

"Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

" Always show the status line
set laststatus=2
set noshowmode
" seems to have problems with submodules
" set statusline=%{GitBranchInfoString()}

" NERDTree
let g:NERDTreeDirArrows=0

" NERDTree mappings
map <F2> :NERDTreeToggle<Enter>

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" When F5 is pressed, a numbered list of file names is printed, and the user needs to type a
" single number based on the menu and press enter. The menu disappears after choosing the
" number so it appears only when you need it.
nnoremap <F5> :buffers<CR>:buffer<Space>


" Easy commenting
" Commenting blocks of code.
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
autocmd FileType fpl              let b:comment_leader = '// '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>


set listchars=tab:>-,trail:~,extends:>,precedes:<
" set list

" set background=light
" colorscheme solarized
if has("gui_running")
  if has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
