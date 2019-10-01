set number
set autowriteall
set background=dark

filetype indent plugin on

let mapleader=","
set timeout timeoutlen=1500

"""""""""""""""""""""""""""""""""""
" Disable Swap files
"""""""""""""""""""""""""""""""""""
set noswapfile

""""""""""""""""""""""""""""""""""""
" color themes
" colorscheme PaperColor

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
" Plug 'NLKNguyen/papercolor-theme'
call plug#end()

""""""""""""""""""""""""
"" plugin end """"""""""
""""""""""""""""""""""""

syntax off

" Disable parentheses matching depends on system. This way we should address all cases (?)
set noshowmatch
" NoMatchParen " This doesnt work as it belongs to a plugin, which is only
" loaded _after_ all files are.
" " Trying disable MatchParen after loading all plugins


function! g:FckThatMatchParen ()
	if exists(":NoMatchParen")
		:NoMatchParen
	endif
endfunction

augroup plugin_initialize
	autocmd!
	autocmd VimEnter * call FckThatMatchParen()
augroup END

""" On linux """
set noshowmatch
