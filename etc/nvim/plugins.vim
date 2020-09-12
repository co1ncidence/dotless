" vim-plugins
call plug#begin('~/etc/nvim/plugged')

Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'reedes/vim-pencil'
Plug 'sheerun/vim-polyglot'
Plug 'honza/vim-snippets'

call plug#end()
