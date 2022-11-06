" Basic key settings
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab

" All things color
syntax on 
set background=dark
let g:everforest_background = 'medium'
colorscheme everforest

" Text settings
set number 
set showcmd 
filetype plugin indent on

" NERDTree settings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
