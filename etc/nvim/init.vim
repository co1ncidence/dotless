"fix weird tmux glitches
if &term =~ '256color'
    set t_ut=

endif

"inbuilt vim macro
runtime macros/matchit.vim

"file tree settings
nnoremap <C-n> :Vexplore!<CR>
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_browse_split = 3
let g:netrw_banner = 0
let g:netrw_liststyle = 3

"toggle line numbers
nnoremap <C-x> :set nonumber! norelativenumber!<CR>

"toggle cursorline
nnoremap <C-a> :set cursorline!<CR>

"split navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

"better j and k
noremap k gk
noremap j gj

"shift 0 to end of line
noremap ) $

"move lines
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi

"correct typos
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

"color stuff
let &t_8f = "\<Esc>[41;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
set background=dark
set t_Co=254
syntax on
colorscheme asunder

"look and feel
set ruler
set laststatus=2
set noshowmode
set linebreak
set hidden

"good splitting
set splitbelow
set splitright

"tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
filetype indent on

"noshowcmd
set noshowcmd

"folding
set foldmethod=manual
set foldnestmax=3
set foldenable

"misc
set wildmenu
set lazyredraw
set scrolloff=3
set autoread

"search
set incsearch
set hlsearch
set ignorecase
let g:rehash256 = 1

"shell
set history=1000
set shell:bash
set backspace=indent,eol,start

"show whitespaces as red
hi!  ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call  clearmatches()

"spellcheck for certain filetypes
autocmd FileType markdown setlocal spell spelllang=en_us
autocmd FileType tex setlocal spell spelllang=en_us
autocmd FileType html setlocal spell spelllang=en_us

"sources
source ~/etc/nvim/statusline.vim
source ~/etc/nvim/plugin-settings.vim
source ~/etc/nvim/plugins.vim
