
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
" Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()
set termguicolors
let ayucolor="mirage"
colorscheme ayu
let g:airline_theme='ayu_mirage'
source ~/.nvim/plugconfs/coc.vim
