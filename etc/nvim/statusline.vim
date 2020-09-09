" statusline
" based off of gk's statusline:
" https://github.com/6gk/polka
"
hi Sl1 ctermfg=none cterm=none ctermbg=NONE
hi Sl2 ctermfg=none cterm=none ctermbg=NONE
hi Sl3 ctermfg=none cterm=none ctermbg=NONE
hi Slrese ctermfg=none cterm=none ctermbg=none
function! RedrawMode(mode)
	" Normal mode
	if a:mode == 'n'
		return 'n '
	" Insert mode
	elseif a:mode == 'i'
		return 'i '
	elseif a:mode == 'R'
		return 'r '
	" Visual mode
	elseif a:mode == 'v' || a:mode == 'V' || a:mode == '<C-v>'
		return 'v '
	" Command mode
	elseif a:mode == 'c'
		return 'c '
	" Terminal mode
	elseif a:mode == 't'
		return 't '
	endif
	return ''
endfunction


function! SetModifiedSymbol(modified)
	if a:modified == 1
		return ' *'
	else
		return ''
	endif
endfunction


function! SetFiletype(filetype)
	if a:filetype == ''
		return 'txt'
	else
		return a:filetype
	endif
endfunction

" Modified status
set statusline=%#Slrese#\ \ %#Sl1#
" Right side
set statusline+=%=
" Mode
set statusline+=\%#Sl2#\%{RedrawMode(mode())}\/
" Begin
set statusline+=%#SlRese#
" Filename
set statusline+=%#Sl2#\ %.20t
" Unsaved
set statusline+=%#Sl3#%{SetModifiedSymbol(&modified)}
" Ruler
set statusline+=\%#Sl2#\ /\ %l:%c\ 
