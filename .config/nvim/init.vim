" nuaNce's init.vim
" 
" ST and Tmux fix
if &term =~ '256color'
    set t_ut=

endif

" weird ass keybind
nnoremap <C-a> :set cursorline<CR>
nnoremap <C-x> :set number relativenumber<CR>

" UI based settings
"
let &t_8f = "\<Esc>[41;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
set background=dark
set t_Co=254
syntax on
colorscheme gunmetal
set ruler
set laststatus=2
set noshowmode 
set linebreak
set hidden

" rebinding vim split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" more natural vim splitting
set splitbelow
set splitright

" indendation settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
filetype indent on

" bottom bar settings
set showcmd

" folding settings
set foldmethod=manual
set foldnestmax=3
set nofoldenable

" misc settings
set wildmenu
set lazyredraw
set scrolloff=3
set autoread
let g:netrw_winsize = 25

" search settings
set incsearch
set hlsearch
set ignorecase
let g:rehash256 = 1
set notitle

" undo, shell, backspace, and mouse settings
set history=1000
set shell:bash
set backspace=indent,eol,start

" remove whitespace on file save
autocmd BufWritePre *.py :%s/\s\+$//e

" vim-plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'reedes/vim-pencil'
Plug 'tpope/vim-commentary'
Plug 'alvan/vim-closetag'
Plug 'ap/vim-css-color'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'honza/vim-snippets'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/limelight.vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'scss', 'json', 'yaml', 'html'] }

call plug#end()

" nerdtree settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
map <C-p> :Files<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" sources
source ~/.config/nvim/statusline.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/markdown.vim
