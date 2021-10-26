" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'call plug#begin('~/.vim/plugged')
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug  'tpope/vim-fugitive' 

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Initialize plugin system
call plug#end()

colorscheme gruvbox
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
inoremap <silent><expr> <c-space> coc#refresh()
" COC Settings -------------------------
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=2 
set number
set tabstop=4
set shiftwidth=4
set expandtab
set tw=186 linebreak
