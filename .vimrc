call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

let g:airline_powerline_fonts = 1 
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

au BufEnter * if bufname('#') =~ 'NERD_tree' && bufname('%') !~ 'NERD_tree' && winnr('$') > 1 | b# | exe "normal! \<c-w>\<c-w>" | :blast | endif

set termguicolors

set background=dark

colorscheme onedark
syntax on
set number
highlight Normal ctermbg=None
highlight LineNr ctermfg=DarkGrey

map <C-n> :NERDTreeToggle<CR>
