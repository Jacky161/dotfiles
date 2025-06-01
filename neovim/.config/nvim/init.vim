" Must install vim-plug for neovim: https://github.com/junegunn/vim-plug
" Then simply run :PlugInstall


" Disable Arrow Keys
":map <Up> <Nop>
":map <Left> <Nop>
":map <Right> <Nop>
":map <Down> <Nop>

" Disable Mouse Mode for proper copy paste (no longer needed)
"set mouse=

" Disable Dumb Tabs for spaces instead
set shiftwidth=4 smarttab
set expandtab
set tabstop=8 softtabstop=0

" Line Numbers
set number

" Plug Plugins
call plug#begin()

Plug 'navarasu/onedark.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'folke/tokyonight.nvim'

call plug#end()
" Themes
"set background=dark " or light if you want light mode
"colorscheme gruvbox

"colorscheme tokyonight-storm
" Vim
let g:onedark_config = {
    \ 'style': 'darker',
\}
colorscheme onedark

" Good Clipboard
set clipboard+=unnamedplus
