" Load NerdTree when startup vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Use key c for close tab
nnoremap c :bp\|bd #<CR>

" Open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Set folder to main in NERDTree
set autochdir
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTree .<CR>

" :Ncd tree for jump into patch folder
com! -nargs=1 -complete=dir Ncd NERDTree | cd <args> |NERDTreeCWD

" Use Tab key for switch tabs
nnoremap <Tab> :bp<cr>
