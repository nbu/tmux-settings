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
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ryanoasis/vim-devicons'

call plug#end()

set laststatus=2
set t_Co=256

syntax on
colorscheme deus
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set guifont=Inconsolata\ Nerd\ Font\ 14
set encoding=utf-8
set hlsearch
set incsearch

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

command! TabsShow :set list | :set listchars=tab:>-
command! TabsHide :set nolist
command! TabsExpand :set expandtab
command! TabsNoExpand :set noexpandtab
cmap w!! w !sudo tee %
