"░▒▓█ Vim config
"░▒▓█ Settings
"Start Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
filetype off
syntax on
set number
set noswapfile
set nocompatible
set term=screen-256color
set mouse=a
"░▒▓█ Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
"░▒▓█ Nertree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let NERDTreeMouseMode=1
let NERDTreeShowHidden=1
"░▒▓█ Airline
let g:airline_powerline_fonts=1
let g:airline_theme='base16color'
"░▒▓█ Colors
hi LineNr ctermfg=darkblue
hi VertSplit ctermfg=8
"colorscheme chocolate
"░▒▓█ indentLine
let g:indentLine_color_term=8
let g:indentLine_char='┆'
"let g:indentLine_color_term = 234
"let g:indentLine_setColors = 0
"let g:indentLine_setConceal = 1
"let g:indentLine_color_dark = 1
"let g:indentLine_color_tty_light = 7
"░▒▓█ Listchars
set fillchars+=vert:\ 
set list listchars=eol:¬,trail:·,tab:•\ ,extends:»,precedes:«
"░▒▓█ Indentation settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"set textwidth=80
"set colorcolumn=80
"set smarttab
"set smartindent
"░▒▓█ Keybinds
autocmd VimEnter * AirlineToggleWhitespace
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
"Close Nerdtree when its the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"End Vundle
call vundle#end()
