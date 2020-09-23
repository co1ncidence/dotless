" Fix weird colors in tmux
if &term =~ '256color'
    set t_ut=

endif

" File tree settings
nnoremap <C-n> :Vexplore!<CR>
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_browse_split = 3
let g:netrw_banner = 0
let g:netrw_liststyle = 3

" Toggle line numbers
nnoremap <C-x> :set nonumber! norelativenumber!<CR>

" Toggle cursorline
nnoremap <C-a> :set cursorline!<CR>

" Keybinds for navigating splits
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" Let j and k navigate longer lines
noremap k gk
noremap j gj

" Move a line up or down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi

" Correct any typos on current line
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Color Settings
let &t_8f = "\<Esc>[41;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
set background=dark
set t_Co=254
syntax on
colorscheme sunset

" Look and feel
set ruler
set laststatus=2
set noshowmode
set linebreak
set hidden

" Split Properly
set splitbelow
set splitright

" Indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
filetype indent on

" No Show CMD
set noshowcmd

" Folding Settings
set foldmethod=manual
set foldnestmax=3
set foldenable

" Other settings
set wildmenu
set lazyredraw
set scrolloff=3
set autoread

" Search Settings
set incsearch
set hlsearch
set ignorecase
let g:rehash256 = 1

" MORE SETTINGS
set history=1000
set shell:bash
set backspace=indent,eol,start

" Detect whitespace and color as red
hi!  ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call  clearmatches()

" Enable spellcheck only for .md and .tex
autocmd FileType markdown setlocal spell spelllang=en_us
autocmd FileType tex setlocal spell spelllang=en_us

" Sources
source ~/etc/nvim/statusline.vim
source ~/etc/nvim/plugin-settings.vim
source ~/etc/nvim/plugins.vim
