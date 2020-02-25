"modify selected text"
command! -range -nargs=0 Strikethrough call s:CombineSelection(<line1>,<line2>, '0336')
command! -range -nargs=0 Underline      call s:CombineSelection(<line1>,<line2>, '0332')

function! s:CombineSelection(line1,line2,cp)
    execute 'let char = "\u'.a:cp.'"'
    execute a:line1.','.a:line2.'s/\%V[^[:cntrl:]]/&'.char.'/ge'
endfunction

vnoremap :Strikethrough<CR>
vnoremap __ :Underline<CR>

