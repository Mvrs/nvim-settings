" curl -fLO $HOME/.config/nvim/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
set number


set nocompatible		" be iMproved, required
filetype off 			" required

call plug#begin('~/.config/nvim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

colorscheme onedark
map <C-n> :NERDTreeToggle<CR>
map <C-k> :tabp<CR>
map <C-l> :tabn<CR>
"set colorcolumn=80
"highlight ColorColumn guibg=black
set tabstop=2
set smartindent
set hlsearch

" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
