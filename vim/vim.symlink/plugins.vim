filetype off

call plug#begin('~/.vim/plugged')

" Utilities
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
"Plug 'tpope/vim-surround'
"Plug 'benmills/vimux'
"Plug 'scrooloose/syntastic'
"Plug 'tpope/vim-fugitive'
Plug 'marcweber/vim-addon-mw-utils' | Plug 'garbas/vim-snipmate'
Plug 'derekwyatt/vim-fswitch', { 'for': 'C' }
Plug 'xolox/vim-misc' | Plug 'xolox/vim-notes'
Plug 'vim-scripts/taglist.vim', { 'for': 'C' }
Plug 'brookhong/cscope.vim'
"Plug 'Valloric/YouCompleteMe'

" Colorscheme/
"Plug 'chriskempson/base16-vim'

" Languages
"Plug 'tpope/vim-markdown', { 'for': 'markdown' }
"Plug 'klen/python-mode', { 'for': 'python' }
Plug 'crucerucalin/qml.vim'

call plug#end()
filetype plugin indent on
