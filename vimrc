"
"
" Description: my .vimrc file
"
" Author: Vincent Thiery
"
"

" Include plugins
execute pathogen#infect()
syntax on
filetype plugin indent on


set nocompatible


set shell=bash			                            " enforce use bash shell


" Setup my workspace
set showmode			                            " show the active mode
set number			                                " always show the lines
set nowrap			                                " do not wrap the lines


" Conventions
set tabstop=4			                            " four tabs is my convention
set shiftwidth=4		                            " autoidenting is four spaces
set expandtab			                            " convert tabs to spaces


" Search utils
set ignorecase			                            " ignore case ...
set smartcase			                            " ... only if fully lowercase
set hlsearch			                            " highlight search results
set showmatch                                       " live match highlighting
set incsearch                                       " incremental search


" Behavior
set autoread			                            " auto reload if modified outside Vim
set nobackup			                            " disable backup
set nowritebackup                                   " same spirit
set noswapfile                                      " disable use of swp files
autocmd BufWritePre * %s/\s\+$//e                   " rm trailing whitespaces on save


" Color scheme
colorscheme elflord


" Commands
" Toggle NERDTree with C-b
nnoremap <C-b> :NERDTreeToggle<CR>


" NERDTree settings
let g:NERDTreeMouseMode=2
let g:NERDTreeQuitOnOpen=0
let g:NERDTreeIgnore=[ '\.obj$', '\.o$', '\.git$', '\.vscode$' ]


" Conque-GDB settings
let g:ConqueTerm_Color=1
let g:ConqueTerm_CloseOnEnd=1
let g:ConqueTerm_StartMessages=0
