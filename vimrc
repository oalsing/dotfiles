execute pathogen#infect()
" Tabs and line number
:set number
:set expandtab
:set tabstop=4
:set shiftwidth=4
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
map <c-d> :quit<CR>
nmap <silent> <c-k> :wincmd k<CR>                                                                                                                       
nmap <silent> <c-j> :wincmd j<CR>                                                                                                                       
nmap <silent> <c-h> :wincmd h<CR>                                                                                                                       
nmap <silent> <c-l> :wincmd l<CR>
" Commands
:command WQ wq
:command Wq wq
:command W w
:command Q q

" Indention
nmap <Tab> >>
nmap <S-Tab> <<
