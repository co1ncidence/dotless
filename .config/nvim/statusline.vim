" statusline
" based off of:
" https://github.com/6gk/polka
hi Sl1 ctermfg=none cterm=none ctermbg=NONE
hi Sl2 ctermfg=none cterm=none ctermbg=NONE
hi Sl3 ctermfg=none cterm=none ctermbg=NONE
hi Slrese ctermfg=none cterm=none ctermbg=none
function! RedrawMode(mode)
	" Normal mode
	if a:mode == 'n'
		return 'normal'
	" Insert mode
	elseif a:mode == 'i'
		return 'insert'
	elseif a:mode == 'R'
		return 'replace'
	" Visual mode
	elseif a:mode == 'v' || a:mode == 'V' || a:mode == '^V'
		return 'visual'
	" Command mode
	elseif a:mode == 'c'
		return 'command'
	" Terminal mode
	elseif a:mode == 't'
		return 'terminal'
	endif
	return ''
endfunction


function! SetModifiedSymbol(modified)
	if a:modified == 1
		return 'unsaved /'
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

set statusline=%#Slrese#\ \ %#Sl1#
" Modified status
" right side
set statusline+=%=
"
set statusline+=%#Sl3#%{SetModifiedSymbol(&modified)}
"
set statusline+=%#SlRese#
" Filename
set statusline+=%#Sl2#\ %.20t\ /
" ruler
set statusline+=\%#Sl2#\ %l:%c\ 
