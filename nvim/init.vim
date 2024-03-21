" init.vim
" Noah Shoap
" Config file for my Neovim install

" Plugins
call plug#begin("~/.config/nvim/plugged")

" Actual extensions
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'

" Themes
Plug 'ellisonleao/gruvbox.nvim'
Plug 'Mofiqul/dracula.nvim'
Plug 'sainnhe/everforest'
Plug 'rebelot/kanagawa.nvim'

call plug#end()

" lightline plug config
let g:lightline = {
	\ 'colorscheme': 'ayu_mirage',	
	\}

" NERDTree
let g:NERDTreeShowHidden = 1 
 " hide helper
let g:NERDTreeIgnore = ['^node_modules$'] " ignore node_modules to increase load speed 
let g:NERDTreeStatusline = '' " set to empty to use lightline
" " Toggle
noremap <silent> <C-b> :NERDTreeToggle<CR>
" " Close window if NERDTree is the last one
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" " Map to open current file in NERDTree and set size
nnoremap <leader>pv :NERDTreeFind<bar> :vertical resize 45<CR>

" Appearance related config
set termguicolors
set background=dark
colorscheme kanagawa
set noshowmode

" Usability config
set number
set mouse=a

" Tab settings
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
