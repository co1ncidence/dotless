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
