syntax on
set nocompatible
set noerrorbells
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
"set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hlsearch

set clipboard=unnamed

set colorcolumn=80
highlight ColorColumn ctermbg=4 guibg=lightgrey


call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'vim-airline/vim-airline'
Plug 'vhda/verilog_systemverilog.vim'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine
Plug 'blueForgeCo/vim-snippets'
"Plug 'honza/vim-snippets'

call plug#end()

set background=dark
colorscheme gruvbox

runtime macros/matchit.vim

" ---------------------- Key Mapping ----------------------

map <F2> :NERDTree<CR>

" Don't use Ex mode, use Q for formatting
map Q gq

" Setup C-j & C-k to move half-page down/up
map <C-j> <C-d>
map <C-k> <C-u>

" Configure splits to happen below current buffer, ensure terminal is opend
" below current buffer
set splitbelow

" Fix the width of NERDTree
autocmd VimEnter * set winfixwidth

" Fix for backspace not working.
" refer: https://stackoverflow.com/questions/11560201/backspace-key-not-working-in-vim-vi
set backspace=indent,eol,start

" CTRL+P to open FZF
nnoremap <silent> <C-p> :FZF<CR>

" <leader>q to quit current buffer
nnoremap <leader>q :q!<CR>

" <leader>Q to quit vim
nnoremap <leader>Q :qa!<CR>

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
" Set ultisnips triggers
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
