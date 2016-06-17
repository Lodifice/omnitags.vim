function! omnitags#general#generate_tags(filetype)
    if a:filetype ==? 'c'
        call omnitags#c#generate_tags()
    else
        echom('The filetype ' . a:filetype . ' is not supported yet.')
    endif
endfunction

function! omnitags#general#nop()
endfunction
