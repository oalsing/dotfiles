set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround' " cs%'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on
syntax on

" Tabs and line number
:set number
:set expandtab
:set tabstop=4
:set shiftwidth=4
":set textwidth=80
:set colorcolumn=+1
:set ruler
"Show tabs and trail"
:set listchars=tab:>~,trail:.,nbsp:_
:set list

" Nerdtree on mac
let g:NERDTreeDirArrows=0

" Scheme
:colorscheme elflord
:set background=dark

" Clipboard Mac OSX
"set clipboard=unnamed,unnamedplus
" Backspace mac
:set backspace=indent,eol,start

" Indentation
:filetype indent on
:filetype plugin on
:filetype on
:set ai
:set si

" Search
:set incsearch
:set hlsearch

" This rewires n and N to do the highlighing...
nnoremap <silent> n   n:call HLNext(0.4)<cr>
nnoremap <silent> N   N:call HLNext(0.4)<cr>

" OR ELSE ring the match in red...
function! HLNext (blinktime)
    highlight RedOnRed ctermfg=red ctermbg=red
    let [bufnum, lnum, col, off] = getpos('.')
    let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
    echo matchlen
    let ring_pat = (lnum > 1 ? '\%'.(lnum-1).'l\%>'.max([col-4,1]) .'v\%<'.(col+matchlen+3).'v.\|' : '')
                \ . '\%'.lnum.'l\%>'.max([col-4,1]) .'v\%<'.col.'v.'
                \ . '\|'
                \ . '\%'.lnum.'l\%>'.max([col+matchlen-1,1]) .'v\%<'.(col+matchlen+3).'v.'
                \ . '\|'
                \ . '\%'.(lnum+1).'l\%>'.max([col-4,1]) .'v\%<'.(col+matchlen+3).'v.'
    let ring = matchadd('RedOnRed', ring_pat, 101)
    redraw
    exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
    call matchdelete(ring)
    redraw
endfunction

" Map
map <F7> mzgg=G`z<CR>
map <C-n> :NERDTreeToggle<CR>
map <S-b> :new<CR>
map <S-v> :vert new<CR>
map + <c-w>+
map - <c-w>-
map <s-n> <c-w><
map <s-m> <c-w>>
map <c-x> :quit<CR>
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>   
nmap <silent> <c-h> :wincmd h<CR>                                                                    
nmap <silent> <c-l> :wincmd l<CR>
map <C-u> m`b~``

" Commands
:command QW wq
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

"ctrpl
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildmode=list:longest,full
set wildignore=*~,*.swp
set wildignore+=a.out,*.a,*.o,*.class
set wildignore+=*.aux,*.idx,*.ilg,*.ind,*.lof,*.lot,*.out,*.toc
set wildignore+=*.tar,*.gz,*.zip
set wildignore+=.git/*,.gitkeep,.svn/*,.hg/*
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn)$',
            \ 'file': '\v\.(exe|so|dll)$',
            \ 'link': 'some_bad_symbolic_links',
            \ }
let g:ctrlp_max_files = 0

" gitgutter
let g:gitgutter_realtime = 1
set updatetime=250

" airline
set laststatus=2
