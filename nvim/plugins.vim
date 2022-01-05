
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
"Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
set termguicolors
autocmd vimenter * ++nested colorscheme gruvbox
"source /home/shinwoir/.local/share/nvim/plugged/ayu-vim/colors/ayu.vim
"let ayucolor="mirage"
"colorscheme ayu
call plug#end()
