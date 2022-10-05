filetype plugin indent on
set tabstop=4
set shiftwidth=4
set scrolloff=4
set expandtab
set number
set relativenumber

source ~/.nvim/plugins.vim
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Focus NerdTREE
nnoremap <leader>n :NERDTreeFocus<CR>
" Start NERDTree automatically
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

:tnoremap <Esc> <C-\><C-n>
