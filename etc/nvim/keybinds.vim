"snippets
iabbrev bf      \textbf{}<left><backspace>{
iabbrev tit     \textit{}<left><backspace>{
iabbrev func    foo() {<CR><CR>}<Up><Tab>
iabbrev meth    \( \)<left><left><left>
iabbrev kmeth   \[ \]<left><left><left>
iabbrev sec     \section{}<left><backspace>{

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
noremap ) $

"move lines
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi

"correct typos
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

"toggle goyo
nnoremap <C-g> :Goyo<CR>
