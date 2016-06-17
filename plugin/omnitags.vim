command! -nargs=1 -complete=filetype GenerateTags call omnitags#general#generate_tags("<args>")

command! UpdateTags call b:update_tags()

let b:update_tags=function("omnitags#general#nop")

setlocal tags=./.tags;/
