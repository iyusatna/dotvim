" Enable syntax highlight
syntax on

" Automatically indent and load plugin based on file extention
filetype plugin indent on

setglobal nobomb
set autoindent
set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start

" Set UTF-8 as default encoding
set encoding=utf-8
set expandtab
set fileformats=unix
set fileencoding=utf-8
set ignorecase
set hidden
set history=1000
set hlsearch
set mouse=a
set noswapfile
set shiftwidth=2
set showcmd
set softtabstop=2
set smartcase
set tabstop=2
set wildmenu
set wildmode=list:longest

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VISUAL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
set incsearch
set hlsearch
set laststatus=2
set guioptions=i
set number
set ruler
set shortmess=I
set wrap

set belloff=all
if has("autocmd") && has("gui")
  au GUIEnter * set t_vb=
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GUI related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set font according to system
if has("mac") || has("macunix")
    set gfn=IBM\ Plex\ Mono:h14,Hack:h14,Source\ Code\ Pro:h15,Menlo:h15
elseif has("win16") || has("win32")
    set gfn=IBM\ Plex\ Mono:h14,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("gui_gtk2")
    set gfn=IBM\ Plex\ Mono:h14,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("linux")
    set gfn=IBM\ Plex\ Mono:h14,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("unix")
    set gfn=Monospace\ 11
endif

" Disable scrollbars (real hackers don't use scrollbars for navigation!)
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" Colorscheme
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
colorscheme dracula

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='n'
