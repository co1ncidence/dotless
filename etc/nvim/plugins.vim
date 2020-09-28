" vim-plugins
call plug#begin('~/etc/nvim/plugged')

Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'plasticboy/vim-markdown'
Plug 'reedes/vim-pencil'
Plug 'sheerun/vim-polyglot'
Plug 'lervag/vimtex'

call plug#end()
