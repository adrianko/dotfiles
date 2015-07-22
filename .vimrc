set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'gmarik/Vundle.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'bling/vim-airline'
Bundle 'airblade/vim-gitgutter'
call vundle#end()
syntax on
set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab
set backspace=2
set autoindent
set number
set colorcolumn=120
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="120,".join(range(120,999),",")
set ignorecase
set ai
set si
set smartcase
set ruler
set nobackup
set nowb
set noswapfile
set mouse=a
set nowrap
set textwidth=0
set wrapmargin=0
set cursorline
au BufRead,BufNewFile Vagrantfile set filetype=ruby
au BufRead,BufNewFile *.pp set filetype=ruby
au BufRead,BufNewFile *.gradle set filetype=groovy
au BufRead,BufNewFile *.go set filetype=go
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:syntastic_mode_map = {'mode': 'active', 'active_filetypes': ['c'], 'passive_filetypes': ['go']}
let g:gitgutter_map_keys = 0
filetype plugin indent on
imap <S-Tab> <C-o><<
