"statusline
"based off of gk's
"https://github.com/6gk/polka
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

"modified status
set statusline=%#Slrese#\ \ %#Sl1#
"right side
set statusline+=%=
"begin
set statusline+=%#SlRese#
"filename
set statusline+=%#Sl2#\ %.20t\ 
"unsaved
set statusline+=%#Sl3#%{SetModifiedSymbol(&modified)}
"ruler
set statusline+=\%#Sl2#\-
set statusline+=\%#Sl2#\ %l:%c
