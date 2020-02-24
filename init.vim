" Based off of https://yufanlu.net/2018/09/03/neovim-python/

call plug#begin('~/.local/share/nvim/plugged')

Plug 'Valloric/YouCompleteMe'              " Plug 'ncm2/ncm2-jedi' alternative to YCM if needed
                                           " .local/share/nvim/plugged/YouCompleteMe/install.py
                                           " needs to be run
Plug 'wincent/command-t'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'                 " Better Visual Guide
Plug 'w0rp/ale'                            " syntax check
Plug 'Chiel92/vim-autoformat'              " Formater

call plug#end()

filetype plugin indent on

syntax on
syntax enable
set foldmethod=indent 

map <S-Right> :bnext<CR>
map <S-Left> :bprevious<CR>
map <S-Up> :enew<cr>
map <S-Down> :bp <BAR> bd #<CR>

" colorscheme
let base16colorspace=256
colorscheme base16-default-dark
set background=dark

" True Color Support if it's available in terminal
if has("termguicolors")
    set termguicolors
endif
if has("gui_running")
  set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:blocks
endif

set number
set relativenumber
set hidden
set mouse=a
set noshowmode
set noshowmatch
set nolazyredraw

" Turn off backup
set nobackup
set noswapfile
set nowritebackup

" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase

" Tab and Indent configuration
set expandtab
set tabstop=4
set shiftwidth=4
 
" Ale
let g:ale_lint_on_enter = 0 
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']}
let g:ale_python_flake8_use_global = 1

" Airline (status bar)
let g:airline_left_sep  = ''
let g:airline_right_sep = ''
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
