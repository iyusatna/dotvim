" ==== AIR LINE CONFIG ======= "
set laststatus=2
call airline#parts#define_accent('mode', 'none')
call airline#parts#define_accent('linenr', 'none')
call airline#parts#define_accent('maxlinenr', 'none')
let g:airline_theme='papercolor'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#buffer_nr_format = '%s:'

