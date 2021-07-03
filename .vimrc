let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

all plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-github-dashboard'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'nanotech/jellybeans.vim'
Plug 'leafgarland/typescript-vim'
Plug 'herringtondarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'

call plug#end()

let g:jsx_ext_required = 0
let g:jellybeans_use_lowcolor_black=0
colorscheme jellybeans

if has ("syntax")
	syntax on
endif

set number relativenumber
set nu rnu
set autoindent
set cindent
set tabstop=4
set shiftwidth=4
set paste!
set showmatch

