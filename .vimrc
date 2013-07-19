"General Settings
syntax on
set ruler
set hidden "allow opening files in another buffer w/o saving the current buffer
set nocompatible
filetype off

set bs=2        " allow backspacing over everything in insert mode
set viminfo='20,\"50 " store 50 lines for each register, marks for last 20 files
set shiftwidth=4

"Search options
set hlsearch
set ignorecase
set smartcase " ignore case unless an uppercase letter is given

set diffopt+=iwhite " Ignore whitespace changes in vimdiff

set wc=9 "make tab do auto expand
set undolevels=1000
set slm=mouse " use the mouse for select mode
set gfn=fixed " set the gui font to fixed

" Methods for highlighting.  Can be overridden later.
hi Normal   term=NONE ctermfg=Green guifg=lightgreen
"hi Comment term=bold ctermfg=Cyan guifg=white
highlight Visual term=reverse  cterm=reverse guifg=lightgreen  guibg=black

" Settings for C programming
"   For *.c and *.h files set formatting of comments and set C-indenting on
"   For other files switch it off
"   Don't change the sequence, it's important that the line with * comes first.
autocmd BufRead * set formatoptions=tcql nocindent comments&
autocmd BufRead *.c,*.h set formatoptions=croql cindent comments=sr:/*,mb:*,el:*/,://
set cindent

"Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

"Bundles
Bundle 'bhilburn/kernel-coding-style'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/Rainbow-Parenthsis-Bundle'
Bundle 'vim-scripts/LustyJuggler'

"Color
set background=dark
colorscheme solarized
