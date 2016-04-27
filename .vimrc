syntax on
set encoding=utf-8
set number
set title
set history=1000
set hlsearch
set incsearch
set smartcase
set ignorecase
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set copyindent
set smarttab
set expandtab
set showmatch
set backspace=indent,eol,start
set laststatus=2
set clipboard+=unnamed
set cursorline

filetype indent on

if has("mouse")
    set mouse+=a
endif

" Pathogen
execute pathogen#infect()

" Leader key

let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader><Leader> V

" NERDTree
map <Leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$']

" Syntastic
"let g:syntastic_quiet_messages = { "type": "warning" }
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Split settings
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Python Specifics
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

"Handle tabs in Makefiles
let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
    set noexpandtab
endif

" MIPS Syntax
au BufNewFile,BufRead *.s set filetype=mips

colorscheme jellybeans
hi LineNr       ctermfg=239 cterm=none
hi MatchParen   cterm=none
hi Search       ctermfg=yellow
