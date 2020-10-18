"set filetype
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.tex set filetype=tex

"vim-pencil
set nocompatible
filetype plugin on
let g:pencil#textwidth = 80
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init({'wrap': 'soft'})
  autocmd FileType tex call pencil#init({'wrap': 'hard', 'autoformat': 0})
augroup END
let g:pencil#autoformat = 1

"vim-markdown
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_math = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'tab'
let g:vim_markdown_follow_anchor = 1

"ale
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'tex': ['alex', 'chktex', 'lacheck', 'proselint', 'redpen', 'texlab', 'textlint', 'vale', 'latexindent'],
\   'css': ['csslint', 'fecs', 'stylelint'],
\}
let g:ale_fix_on_save = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

"vimtex
autocmd FileType tex,plaintex call vimtex#init()
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:tex_conceal= ''
let g:tex_fast = "bMpr"

"goyo
let g:goyo_width=100
