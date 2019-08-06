set number
set autowriteall
" set background=dark

"let g:gruvbox_contrast_dark = 'medium'
"let g:gruvbox_contrast_light = 'medium'

" filetype indent plugin on

let mapleader=","
set timeout timeoutlen=1500

"""""""""""""""""""""""""""""""""""
" Disable Swap files
"""""""""""""""""""""""""""""""""""
set noswapfile

""""""""""""""""""""""""""""""""""""
" color themes
"colorscheme gruvbox
" colorscheme bw

"""""""""""""""
" Colors and fonts
"""""""""""""""
" set t_Co=256 " colors
" highlight Normal guifg=#4f8c88 guibg=#022e34
"highlight Normal guibg=#042E34 

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

" Plug 'morhetz/gruvbox'

call plug#end()

""""""""""""""""""
"" Groove box """"
""""""""""""""""""

syntax off



