"snippets
ia <buffer> bf      \textbf{}<left><backspace>{
ia <buffer> tit     \textit{}<left><backspace>{
ia <buffer> func    foo() {<CR><CR>}<Up><Tab>
ia <buffer> meth    \( \)<left><left><left>
ia <buffer> kmeth   \[ \]<left><left><left>
ia <buffer> deri    \frac{d}{dx}
ia <buffer> fx      f(x)
ia <buffer> gx      g(x)
ia <buffer> hx      h(x)
ia <buffer> ol      \begin{enumerate}<CR><CR><CR><CR>\end{enumerate}<Up><Up><tab>
ia <buffer> ul      \begin{itemize}<CR><CR><CR><CR>\end{itemize}<Up><Up><tab>

"inbuilt vim macro
runtime macros/matchit.vim

"file tree settings
nnoremap <C-n> :Vexplore!<CR>
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:netrw_browse_split = 3
let g:netrw_banner = 0
let g:netrw_liststyle = 3

"toggle line numbers and cursorline
nnoremap <C-x> :set nonumber! norelativenumber!<CR>
nnoremap <C-a> :set cursorline!<CR>

"split navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

"better line nav
noremap k gk
noremap j gj
noremap ) g$
noremap 0 g0

"move lines
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi

"correct typos
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

"toggle goyo
nnoremap <C-g> :Goyo<CR>
