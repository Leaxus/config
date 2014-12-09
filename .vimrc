" DESCRIPTION
" .vimrc file
" AUTHORS
" by Alex Phonesavanh alias Leaxus
" More plugins in http://vimawesome.com

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" Add Plugins bellow
Plugin 'gmarik/Vundle.vim'
Plugin 'Syntastic' " Identify syntax error
Plugin 'tpope/vim-fugitive' " Git rapper
Plugin 'bling/vim-airline' " Status/tabline
Plugin 'altercation/vim-colors-solarized' " Famous scheme color solarized
" Plugin 'Tagbar'

call vundle#end()
filetype plugin indent on

" Activate color syntax
syntax enable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic vim options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ttimeoutlen=50
set laststatus=2
set autoread " reaload the file when it is change from outside
set autowrite " save the file when we leave
set nobackup
set encoding=utf-8 " force to utf-8 usefull for Windows
set noswapfile
set hidden " hide buffers instead of closing them
set updatetime=500 " usefull for tagbar plugin

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set tabstop=8 " Number of spaces representing by a tab
set softtabstop=2 " Number of spaces when tab is pressed
set shiftwidth=2 " Number of spaces inserted/removed when using < or >
set expandtab " Insert spaces instead of tab
set smarttab " Use shiftwidth instead of tabstop abd softtabstop
set autoindent " Auto indent the code

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ergonamie
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set mouse=a " Allow mouse to be used
set number " Display line number on the left
set scrolloff=5 " Scroll when the pointor is at the 5th first/last lines
set showmode
set showcmd
set wildmenu
set wildmode=list:longest:full
" color column greater or equal than 80
if version >= 80
    set colorcolumn=+1
endif
set showmatch
set wrap
set textwidth=79
" set statusline=%f\ %l\|%c\ %m%=%p%%\ (%Y%R)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Design
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Solarized options
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_degrade=1
let g:solarized_contrast="high"
let g:solarized_visibility="high"

set background=dark
colorscheme solarized

au VimEnter * AirlineTheme powerlineish

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set C++ default compiler and compiler options
let g:syntastic_cpp_compiler='clang++'
let g:syntastic_cpp_compiler_options='-Werror -Wall -Wextra -std=c++1y -pedantic'
let g:syntastic_cpp_check_header=1

" Set C default compiler and compiler options
let g:syntastic_c_compiler='clang'
let g:syntastic_c_compiler_options='-Werror -Wall -Wextra -std=c99 -pedantic'
let g:syntastic_c_check_header=1

" "@ Toggle Rainbow parentheses
"au VimEnter * RainbowParenthesesToggleAll
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

" Toggle Tagbar
"noremap <leader>tt :TagbarToggle<cr>
"
" " Toggle NERDTree
" noremap <leader>nt :NERDTreeToggle<cr>
"
" " Align all variable names with tabular
" noremap <leader>ta :Tab / [^ ]*;<cr>
"
" " Launch fugitive's gstatus
" noremap <leader>gs :Gstatus<cr>
"
" let g:airline_powerline_fonts=1
"
" " Set theme for Airline
