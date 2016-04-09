syntax on

set nocompatible
filetype off


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all rour plugins here (note older versions of Vundle used Bundle instead of Plugin)

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" Vundle - Set where :sv and :vs will split
set splitbelow
set splitright

" Vundle - Move between splits key mappings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
autocmd FileType python nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>

" Vundle - Enable folding/collapsing of methods/classes and enable folding with
" spacebar
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Vundle - Plugin: SimpylFold
Plugin 'tmhedberg/SimpylFold'
" Vundle - Plugin: SimpylFold - Display docstrings for folded code
let g:SimpylFold_docstring_preview=1

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Vundle - Auto-Indentation
Plugin 'vim-scripts/indentpython.vim'

" Vundle - Flagging Unnecessary Whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Vundle - Syntax Checking/Highlighting
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
let python_highlight_all=1

set modelines=0
set number
set ignorecase
set smartcase
set hlsearch
set incsearch
set autoindent
set showmode
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set encoding=utf-8
set scrolloff=3
set nobackup
set nowb
set noswapfile
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4

let mapleader = ","
set gdefault
set showmatch
nnoremap <leader><space> :noh<cr>

set wrap
set textwidth=79
set formatoptions=qrn1

" Color Schemes
Plugin 'w0ng/vim-hybrid'

set background=dark
let g:hybrid_use_Xresources = 1
colorscheme hybrid
if has("gui_running")
        set guifont=Inconsolata\ 13
endif





