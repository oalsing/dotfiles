set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'fatih/vim-go'

call vundle#end()

filetype plugin indent on

syntax on

colorscheme elflord

set background=dark
set number
set expandtab
set tabstop=4
set shiftwidth=4
set ruler
set backspace=indent,eol,start


map <C-n> :NERDTreeToggle<CR>
map <S-b> :new<CR>
map <S-v> :vert new<CR>
map <c-x> :quit<CR>
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

nmap <Tab> >>
nmap <S-Tab> <<

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let NERDTreeShowHidden=1
