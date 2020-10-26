"snippets
ia <buffer> fx            f(x)
ia <buffer> gx            g(x)
ia <buffer> hx            h(x)
ia <buffer> Fx            F(x)
ia <buffer> fpx           f'(x)
ia <buffer> gpx           g'(x)
ia <buffer> hpx           h'(x)
ia <buffer> Fpx           F'(x)
ia <buffer> sinx          \sin(x)
ia <buffer> cosx          \cos(x)
ia <buffer> tanx          \tan(x)
ia <buffer> frac          \frac{
ia <buffer> sqrt          \sqrt{
ia <buffer> bf            \textbf{
ia <buffer> tit           \textit{
ia <buffer> sec           \section{
ia <buffer> deri          \frac{d}{dx}
ia <buffer> subsec        \subsection{
ia <buffer> subsubsec     \subsubsection{
ia <buffer> smoltit       \begin{center}<CR>\textbf{\large }<CR>\end{center}
ia <buffer> meth          \( \)<left><left><left>
ia <buffer> kmeth         \[ \]<left><left><left>
ia <buffer> func          foo() {<CR><CR>}<Up><Tab>
ia <buffer> addlegend     \addlegendentry{$$}<left><left>
ia <buffer> addpoint      \addplot[mark=*] coordinates {()};<left><left><left>
ia <buffer> ul            \begin{itemize}<CR><CR><CR><CR>\end{itemize}<Up><Up><tab>
ia <buffer> ol            \begin{enumerate}<CR><CR><CR><CR>\end{enumerate}<Up><Up><tab>
ia <buffer> smolmeth      \begin{center}<CR>\( \)<CR>\end{center}<Up><left><left><left>
ia <buffer> parenth       \left( \right)<left><left><left><left><left><left><left><left>
ia <buffer> brack         \left[ \right]<left><left><left><left><left><left><left><left>
ia <buffer> emptypoint    \addplot[mark=*,fill=white] coordinates {()};<left><left><left>
ia <buffer> addplot       \addplot[domain=-1:3,samples=50,smooth,red]<space>{};<left><left>
ia <buffer> shadeplot     \addplot[domain=-1:3,samples=50,smooth,red,fill=gray,fill opacity=0.4]<space>{};<left><left>
ia <buffer> addnode       \node[label={180:{}},circle,fill,inner sep=2pt] at (axis cs:) {};<left><left><left><left><left><left>

"fractions
ia <buffer> 1o2           \frac{1}{2}
ia <buffer> 1o3           \frac{1}{3}
ia <buffer> 2o3           \frac{2}{3}
ia <buffer> 3o4           \frac{3}{4}
ia <buffer> 1ox           \frac{1}{x}
ia <buffer> yox           \frac{y}{x}
ia <buffer> xoy           \frac{x}{y}

"math limits
ia <buffer> limxtoy       \lim\limits_{x \to y}
ia <buffer> limxtoc       \lim\limits_{x \to c}
ia <buffer> limxto0       \lim\limits_{x \to 0}
ia <buffer> limxto1       \lim\limits_{x \to 1}
ia <buffer> limxto2       \lim\limits_{x \to 2}
ia <buffer> limxto3       \lim\limits_{x \to 3}
ia <buffer> limxto4       \lim\limits_{x \to 4}
ia <buffer> limxto5       \lim\limits_{x \to 5}
ia <buffer> limxto6       \lim\limits_{x \to 6}
ia <buffer> limxto7       \lim\limits_{x \to 7}
ia <buffer> limxto8       \lim\limits_{x \to 8}
ia <buffer> limxto9       \lim\limits_{x \to 9}
ia <buffer> limxto10      \lim\limits_{x \to 10}
ia <buffer> limxtoinf     \lim\limits_{x \to \infty}

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

"latex plot
ia <buffer> pgplot  \bigbreak{}<CR>\begin{center}<CR>\begin{tikzpicture}<CR><tab>\begin{axis}%<CR><tab>[grid=both,<CR>minor tick num=4,<CR>grid style={line width=.1pt, draw=gray!10},<CR>major grid style={line width=.2pt,draw=gray!50},<CR>axis lines=middle,<CR>enlargelimits={abs=0.2}<CR>]<CR>\addplot[domain=-1:3,samples=50,smooth,red] {<CR><BS>\end{axis}<CR><BS>\end{tikzpicture}<CR>\end{center}<CR>\bigbreak{}<CR><up><up><up><up><up><A-S-a>};<left><left>

"piecewise function
ia <buffer> casefunc      \[ f(x) =<CR><tab>\begin{cases}<CR><CR><tab>x<tab>&<space>\quad<space>\text{if<space>}<space>x<space>=<space>0<space>\\<CR><CR>x<tab>&<space>\quad<space>\text{if<space>}<space>x<space>=<space>0<CR><CR><BS>\end{cases}<CR><BS>\]
