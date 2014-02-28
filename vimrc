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

" Commands
:command WQ wq
:command Wq wq
:command W w
:command Q q

" Change between buffers
noremap <C-h> :bprevious<CR>
noremap <C-l> :bnext<CR>

" Indention
nmap <Tab> >>
nmap <S-Tab> <<
