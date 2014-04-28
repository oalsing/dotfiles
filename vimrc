set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'basepi/vim-conque'

call vundle#end()
filetype plugin indent on
" Tabs and line number
:set number
:set expandtab
:set tabstop=4
:set shiftwidth=4
:set textwidth=80
:set colorcolumn=+1
:set ruler

" Scheme
:colorscheme elflord
:set background=dark

" Indentation
:filetype indent on
:filetype plugin on
:filetype on
:set ai
:set si

" Search
:set incsearch

" Map
map <F7> mzgg=G`z<CR>
map <C-n> :NERDTreeToggle<CR>
map + <c-w>+
map - <c-w>-
map <s-n> <c-w><
map <s-m> <c-w>>
map <c-x> :quit<CR>
nmap <silent> <c-c> :ConqueTerm bash<Cr>
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>   
nmap <silent> <c-h> :wincmd h<CR>                                                                    
nmap <silent> <c-l> :wincmd l<CR>
map <C-u> m`b~``

" Commands
:command WQ wq
:command Wq wq
:command W w
:command Q q

" Indention
nmap <Tab> >>
nmap <S-Tab> <<

"" Rainbow parantheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
