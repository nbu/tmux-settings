
call plug#begin()
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/leafgarland/typescript-vim.git'
Plug 'qpkorr/vim-bufkill'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'git://github.com/tpope/vim-surround.git'
Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/xolox/vim-misc'
Plug 'https://github.com/xolox/vim-session'
call plug#end()

syntax on
colorscheme deus
set tabstop=2
set shiftwidth=2
set expandtab
set guifont=Droid\ Sans\ Mono\ for\ Powerline:h11
set encoding=utf-8
"execute pathogen#infect('bundle/{}', '~/.vim/bundle/{}')

let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:session_autoload = 'no'
let g:session_autosave = 'no'

