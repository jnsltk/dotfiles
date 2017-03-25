"░▒▓█ Vim config
" Start Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"░▒▓█ Settings
filetype off
syntax on
set number
set noswapfile
set nocompatible
set title
set shortmess=at
set cursorline
set term=screen-256color
set background=dark
set mouse=a
set clipboard=unnamedplus
set hidden
set laststatus=2
set equalalways
set noshowmode
"░▒▓█ Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'gabrielelana/vim-markdown'
Plugin 'pangloss/vim-javascript'
Plugin 'shougo/neocomplete.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
"░▒▓█ Markdown
"let g:vim_markdown_folding_disabled=1
"set conceallevel=2
"░▒▓█ Neocomplete
let g:acp_enableAtStartup=0
let g:neocomplete#enable_at_startup=1
let g:neocomplete#enable_smart_case=1
let g:neocomplete#sources#syntax#min_keyword_length=3
" Omni completion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"░▒▓█ Nertree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let NERDTreeMouseMode=1
let NERDTreeShowHidden=1
"░▒▓█ Airline
let g:airline_powerline_fonts=1
let g:airline_theme='base16color'
"░▒▓█ Colors
hi LineNr ctermfg=8
hi CursorLine ctermbg=black
hi CursorLineNr ctermfg=blue
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
let mapleader=","
let maplocalleader=","
nmap <silent> <leader>w :set invwrap<CR>:set wrap?<CR>
"nmap <silent> <leader>f :tabn
:map <F5> :checktime<CR>
"░▒▓█ Autocommands
autocmd VimEnter * AirlineToggleWhitespace
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
" Close Nerdtree when its the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" End Vundle
call vundle#end()
