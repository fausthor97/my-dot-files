call plug#begin('~/.vim/plugged')
" themes
Plug 'morhetz/gruvbox'
Plug 'relastle/bluewery.vim'
Plug 'Lokaltog/vim-distinguished'

" plugs
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'mileszs/ack.vim'
Plug 'pangloss/vim-javascript'
call plug#end()

set relativenumber
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set sw=2
set noshowmode
syntax on
set modifiable
set nowrap

colorscheme gruvbox

" easy motion shortcut
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)

cnoreabbrev Ack Ack!
nnoremap <Leader>f :Ack!<Space>

" nerd tree toggle
map <C-n> :NERDTreeToggle<CR>
" close window if only open editor is nerd tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ctrlp ignore files in .gitignore
 let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
