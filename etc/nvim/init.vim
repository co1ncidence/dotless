"fix weird tmux glitches
if &term =~ '256color'
    set t_ut=

endif

"live life on the edge
set nobackup
set nowritebackup
set noswapfile

"color stuff
let &t_8f = "\<Esc>[41;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
set background=dark
set t_Co=254
syntax on
colorscheme siori

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
let g:rehash256=1

"shell
set history=1000
set shell:zsh
set backspace=indent,eol,start

"show whitespaces as red
hi!  ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call  clearmatches()

"spellcheck only for certain filetypes
autocmd FileType markdown setlocal spell spelllang=en_us
autocmd FileType html setlocal spell spelllang=en_us

"different colorscheme for TeX
autocmd FileType tex setlocal spell spelllang=en_us
autocmd FileType tex source ~/etc/nvim/colors/itai.vim

"sources
source ~/etc/nvim/statusline.vim
source ~/etc/nvim/plugins.vim
source ~/etc/nvim/settings.vim
source ~/etc/nvim/keybinds.vim
source ~/etc/nvim/autocorrect.vim
