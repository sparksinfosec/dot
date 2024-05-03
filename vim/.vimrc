if has("eval")
	let skip_defaults_vim = 1 
endif 

set nocompatible 

set autoindent

set tabstop=4 
set softtabstop=4
set expandtab

set noignorecase 

set autowrite

set shortmess=aoOtTi


" colorscheme=gruvbox (need to use a plugin for this additional info needed)
set background=dark

set termguicolors 



set number

" Scroll off sets 5 lines to the cursor (bottom and top of page) when moving
" vertically using j/k
set so=5

set showmode 

set ruler

set smartindent 

set listchars=space:*,trail:*,nbsp:*,extends:>,precedes:<,tab:\|>

set textwidth=72

" risky but cleaner 

set nobackup
set noswapfile
set nowritebackup

set hlsearch
set incsearch
set linebreak


set history=100

set ttyfast

set showmatch

set mouse+=a

set showcmd

set backspace=indent,eol,start


" disable arrow keys (vi muscle memory)
noremap <up> :echoerr "Umm, use k instead"<CR>
noremap <down> :echoerr "Umm, use j instead"<CR>
noremap <left> :echoerr "Umm, use h instead"<CR>
noremap <right> :echoerr "Umm, use l instead"<CR>
inoremap <up> <NOP>
inoremap <down> <NOP>
inoremap <left> <NOP>
inoremap <right> <NOP>
" Comment out above to remove

if filereadable(expand("~/.vim/autoload/plug.vim"))

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

call plug#end()
colorscheme gruvbox
endif


