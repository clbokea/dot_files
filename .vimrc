set number
set autowriteall

filetype indent plugin on

let mapleader=","
set timeout timeoutlen=1500

"""""""""""""""""""""""""""""""""""
" Disable Swap files
"""""""""""""""""""""""""""""""""""
set noswapfile

""""""""""""""""""""""""""""""""""""
" color themes
""""""""""""""""""""""""""""""""""""
"""""""""""""""
" Colors and fonts
"""""""""""""""
set t_Co=256 " colors
highlight Normal guifg=#4f8c88 guibg=#022e34


"""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""

" if the vim plugins manager vim-plug is not present, install it
" using the system wide .vimrc
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" directory for plugins
call plug#begin('~/.vim/plugged')

" file and directory tree
Plug 'scrooloose/nerdtree'

" Comments
Plug 'scrooloose/nerdcommenter'

call plug#end()

"""""""""""""""""""""""""""""""""
" NerdTree
"""""""""""""""""""""""""""""""""
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>



