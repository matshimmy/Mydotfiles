""""""""""""""""""""""""""""""""Vundle""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"nerd commenter
Plugin 'scrooloose/nerdcommenter'

"Enhanced JavaScript Syntax for Vim
Plugin 'pangloss/vim-javascript'
Plugin 'morhetz/gruvbox'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ternjs/tern_for_vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"""""""""""""""""""""""""""""End Vundle""""""""""""""""""""""""""""""""""""
"makes vim colourful
syntax enable
set t_Co=256
"set background=light
set background=dark
colorscheme gruvbox

"changes from NERDCommenterInvert to NERDCommenterInsert
imap <leader>ci <plug>NERDCommenterInsert

set clipboard=unnamed
set number
set showcmd
set hlsearch
"auto close bracket
inoremap { {}<LEFT>

"tabs
map <F7> :tabp<CR>
imap <F7> <ESC>:tabp<CR>
map <F8> :tabn<CR>
imap <F8> <ESC>:tabn<CR>
map <C-n> :tabe 



map <F2> :tabe ~/.vimrc<CR>
map <F3> :w<CR>
imap <F3> <ESC>:w<CR>
nnoremap <F4> :set list!<CR>
set pastetoggle=<F12>
map <F5> :source ~/.vimrc<CR>
map <F9> :noh<CR>


"set mouse=nicr
"fix backspace problems
set backspace=2 " make backspace work like most other apps
set backspace=indent,eol,start

"HTML for spaces instead of tabs stuff
set autoindent
filetype indent on
autocmd Filetype html setlocal st=2 sw=2 expandtab
