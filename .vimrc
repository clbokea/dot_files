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
colorscheme gruvbox

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

Plug 'morhetz/gruvbox'
" Plug 'NLKNguyen/papercolor-theme'

" Start intro screen
Plug 'mhinz/vim-startify'

" Airline
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

" Code completion
"Plug 'valloric/youcompleteme'

call plug#end()

""""""""""""""""""""""""
"" plugin end """"""""""
""""""""""""""""""""""""
let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_contrast_light = 'hard'
syntax on


" togle background light/dark
map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" Fix indentation
" map <F7> gg=G<C-o><C-o>



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

" Access system clipboard
set clipboard=unnamed




""" On linux """
set noshowmatch

set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
" nnoremap <space> za


" For startify
let s:header = ['~/python_introduction> ']
"let s:footer = ['</__goodbye_Python__>']

function! s:center(lines) abort
  let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
  let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction

let g:startify_custom_header = s:header
"let g:startify_custom_footer = s:center(s:footer)
