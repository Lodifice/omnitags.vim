function! omnitags#c#update_tags()
    echom('Updating tags for c.')
endfunction

function! omnitags#c#generate_tags()
    echom('Generating tags for c.')
    "execute "!" . "ctags --extra=+f -R -o .tags"
    execute "!" . "cc -I./include -M ./src/* | sed -e 's/[\\\\ ]/\\n/g' | sed -e '/^$/d' -e '/\\.o:[ \\t]*$/d' | ctags -o .tags -L -"
endfunction

function! omnitags#c#imported_files()
    "cc -I./inc -M $* | sed -e 's/[\\ ]/\n/g' | \
    "           sed -e '/^$/d' -e '/\.o:[ \t]*$/d' | ctags -L -
    e
endfunction
