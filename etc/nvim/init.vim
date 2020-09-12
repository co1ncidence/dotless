" nuaNce's init.vim

" fix weird colors in tmux
if &term =~ '256color'
    set t_ut=

endif

" toggle line numbers
nnoremap <C-x> :set nonumber! norelativenumber!<CR>

" toggle cursorline
nnoremap <C-a> :set cursorline!<CR>

" split keybinds
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" k = gk22?
noremap k gk
noremap j gj

" move lines around
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi

" UI based settings
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

" more mnml
set noshowcmd

" folding settings
set foldmethod=manual
set foldnestmax=3
set foldenable

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

" whitespace control
hi!  ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call  clearmatches()

" sources
source ~/etc/nvim/statusline.vim
source ~/etc/nvim/plugins.vim
source ~/etc/nvim/plugin-settings.vim
