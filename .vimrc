" ____                    __         ___
"/\  _`\                 /\ \__  __ /\_ \
"\ \ \L\ \     __   _____\ \ ,_\/\_\\//\ \      __
" \ \ ,  /   /'__`\/\ '__`\ \ \/\/\ \ \ \ \   /'__`\
"  \ \ \\ \ /\  __/\ \ \L\ \ \ \_\ \ \ \_\ \_/\  __/
"   \ \_\ \_\ \____\\ \ ,__/\ \__\\ \_\/\____\ \____\
"    \/_/\/ /\/____/ \ \ \/  \/__/ \/_/\/____/\/____/
"                     \ \_\
"                      \/_/

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

filetype off                  " required!
filetype plugin indent on
syntax on
set nocompatible              " be iMproved
set laststatus=2
set statusline=%{GitBranch()}


" let Vundle manage Vundle required!
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-scripts/DoxygenToolkit.vim'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-fugitive'
"Bundle 'Rip-Rip/clang_complete'

" Plugin requirements
let g:Powerline_symbols = 'fancy'

" Doxygen setup
let g:DoxygenToolkit_interCommentTag = "** "
let g:doxygenToolkit_authorName="Jean Royer"
let g:DoxygenToolkit_cinoptions = "c0C1"

" Syntastic with c++
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -I /usr/local/include'
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_remove_include_errors = 1

" Macros
nmap <F8> :NERDTreeToggle<CR>
nmap <F9> :TagbarToggle<CR>

"Compile with gmake instead of make
set makeprg=gmake

set backspace=2
set laststatus=2
set shiftwidth=2
set tabstop=8
set expandtab
set smarttab

set autoindent
set smartindent

set relativenumber

set cc=80

set tw=79

set nowrap

set number

set ruler

set list
set listchars=tab:>-,trail:@

set mouse=a

colorscheme ron
