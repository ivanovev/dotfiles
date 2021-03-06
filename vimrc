
set foldmethod=indent
set foldlevel=100

set tabstop=4 shiftwidth=4 expandtab
set softtabstop=4
set shiftwidth=4
" set noexpandtab

set background=dark
set ignorecase

set autowrite

highlight Comment ctermfg=darkgreen
set listchars+=precedes:<,extends:>,tab:>-,trail:-
nmap <leader>l :set list!<CR>

set switchbuf=usetab,newtab

nnoremap <A-Left>   :tabprevious<CR>
nnoremap <A-Right>  :tabnext<CR>
nnoremap <A-Insert> :tabnew<CR>

map <F2> :wa<CR>
map <F3> :NERDTreeToggle<CR>
map <F4> :TagbarToggle<CR> 
map <F5> :wa<CR>:make<CR>
map <F6> :cope<CR>
map <F7> :cn<CR>
map <F8> :cp<CR>
map <F9> :cclose<CR>

nmap <leader>f :CommandT<CR>
nmap <leader>b :CommandTBuffer<CR>

nnoremap  <Leader>z    :let &scrolloff=999-&scrolloff<CR>

set nocompatible              " be iMproved, required
filetype off                  " required

"=====================================================
" Vundle settings
"=====================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'      " let Vundle manage Vundle, required

"---------=== Code/project navigation ===-------------
Plugin 'scrooloose/nerdtree'            " Project and file navigation
Plugin 'majutsushi/tagbar'              " Class/module browser
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()            " required
filetype on
filetype plugin on
filetype plugin indent on

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'

