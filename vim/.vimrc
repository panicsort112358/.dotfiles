let mapleader = " "

" Core behavior
set hidden
set backspace=indent,eol,start

" Display
set number
set relativenumber
set signcolumn=yes
set scrolloff=8
set splitbelow
set splitright

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch

" Mappings
nnoremap <silent> <leader><space> :nohlsearch<CR>
nnoremap <leader>w :write<CR>
nnoremap <leader>e :Explore<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Indentation
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Language support
filetype plugin indent on
syntax enable

" Command-line completion
set wildmenu
set wildmode=longest:full,full

" Persistent undo, swap, and backup files in XDG state directory
let s:state_dir = expand($XDG_STATE_HOME != '' ? $XDG_STATE_HOME : '~/.local/state') . '/vim'
for s:dir in ['undo', 'swap', 'backup']
  if !isdirectory(s:state_dir . '/' . s:dir)
    call mkdir(s:state_dir . '/' . s:dir, 'p', 0700)
  endif
endfor
let &undodir   = s:state_dir . '/undo//'
let &directory = s:state_dir . '/swap//'
let &backupdir = s:state_dir . '/backup//'
set undofile
