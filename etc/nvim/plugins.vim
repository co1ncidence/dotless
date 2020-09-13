" vim-plugins
call plug#begin('~/etc/nvim/plugged')

Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'lervag/vimtex'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'plasticboy/vim-markdown'
Plug 'reedes/vim-pencil'
Plug 'sheerun/vim-polyglot'

call plug#end()
