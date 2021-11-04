call plug#begin('~/.vim/plugged')
Plug 'sainnhe/gruvbox-material'
Plug 'wakatime/vim-wakatime'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'alvan/vim-closetag'
Plug 'vimsence/vimsence'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()


"random shits
set number
syntax on
set noswapfile

"set clipboard=unnamedplus
set clipboard=unnamed

"theme
colorscheme gruvbox-material
set background=dark
let g:airline_theme='gruvbox-material'
let g:airline_powerline_fonts = 1
"Coc server
let g:coc_global_extensions = ['coc-snippets', 'coc-eslint', 'coc-json', 'coc-phpls', 'coc-pairs', 'coc-clangd', 'coc-java', 'coc-html', 'coc-css', 'coc-explorer', 'coc-sql', 'coc-python']
:au FocusLost * :wa
au BufEnter,BufNew *.php :set filetype=html

"Python Keybinds
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
"C++
nnoremap <C-c> :!g++ -o  %:r.out % -std=c++11<Enter>
nnoremap <C-x> :!./%:r.out

nnoremap <space>e :CocCommand explorer<CR>
"mouse 
set mouse=a
"indent 
set smartindent
