" nuaNce's init.vim

" TMUX fix
if &term =~ '256color'
    set t_ut=

endif

" keybinds
nnoremap <C-a> :set cursorline<CR>
nnoremap <C-x> :set number relativenumber<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" UI based settings
let &t_8f = "\<Esc>[41;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
set background=dark
set t_Co=254
syntax on
colorscheme mountaineer-grey
set ruler
set laststatus=2
set noshowmode
set linebreak
set hidden
set title

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

" undo, shell, backspace, and mouse settings
set history=1000
set shell:bash
set backspace=indent,eol,start

" remove whitespace on file save
autocmd BufWritePre *.py :%s/\s\+$//e

" sources
source ~/etc/nvim/statusline.vim
source ~/etc/nvim/plugins.vim
source ~/etc/nvim/plugin-settings.vim
