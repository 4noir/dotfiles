call plug#begin()
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rhysd/vim-clang-format'
Plug 'dracula/vim', {'as':'dracula'}
call plug#end()
set termguicolors
" let ayucolor="mirage"
" colorscheme ayu
 colorscheme dracula
let g:airline_theme='base16_dracula'
let g:airline_powerline_fonts = 1
" let g:airline_theme='ayu_mirage'
source ~/.nvim/plugconfs/coc-conf.vim
source ~/.nvim/plugconfs/nerdtree.vim
