" statusline
"
hi Sl1 ctermbg=NONE
hi Sl2 ctermbg=NONE
hi Sl3 ctermbg=NONE
hi Slrese ctermbg=none

function! SetModifiedSymbol(modified)
	if a:modified == 1
		return '* '
	else
		return ''
	endif
endfunction

" Modified status
set statusline=%#Slrese#\ \ %#Sl1#
" Right side
set statusline+=%=
" Begin
set statusline+=%#SlRese#
" Filename
set statusline+=%#Sl2#\ %.20t\ 
" Unsaved
set statusline+=%#Sl3#%{SetModifiedSymbol(&modified)}
" Ruler
set statusline+=\%#Sl2#/
set statusline+=\%#Sl2#\ %l:%c
