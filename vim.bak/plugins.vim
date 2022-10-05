call plug#begin('~/.vim/plugged')

"airline

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"ayu
Plug 'ayu-theme/ayu-vim' " or other package manager

"nerdtree
Plug 'preservim/nerdtree' 

"auto close brackets
Plug 'jiangmiao/auto-pairs'
call plug#end()

for f in split(glob('~/.vim/configplugins/*.vim'), '\n')
    exe 'source' f
endfor
