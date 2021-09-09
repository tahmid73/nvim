call plug#begin('~/.vim/plugged')
Plug 'sainnhe/gruvbox-material'
Plug 'wakatime/vim-wakatime'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'alvan/vim-closetag'
call plug#end()


"random shits
set number
syntax on
set noswapfile

"theme
colorscheme gruvbox-material
set background=dark
"Coc server
let g:coc_global_extensions = ['coc-snippets', 'coc-json', 'coc-phpls', 'coc-pairs', 'coc-clangd', 'coc-java', 'coc-html', 'coc-css', 'coc-explorer', 'coc-sql', 'coc-python']
:au FocusLost * :wa


"Python Keybinds
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
"C++
nnoremap <C-c> :!g++ -o  %:r.out % -std=c++11<Enter>
nnoremap <C-x> :!./%:r.out

