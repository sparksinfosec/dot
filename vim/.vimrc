" Note of the verbose option for VIM
" verbose set option? (will show where the option is loaded from) test
" Like markdown getting a different local formatting option
" verbose set formatoption? (shows where it was loaded from 
" Likely local plugins see formatting option at bottom of doc for more detail

if has("eval")
	let skip_defaults_vim = 1 
endif 


" look at guicursor settings to make the cursor more visible


set cursorline

set laststatus=2
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

" remove as it impacts colors on tmux
" set termguicolors 



set number

" Scroll off sets 5 lines to the cursor (bottom and top of page) when moving
" vertically using j/k
set so=5

set showmode 

set ruler

set smartindent 

set listchars=space:*,trail:*,nbsp:*,extends:>,precedes:<,tab:\|>

" Setting this to prevent wrap in markdown see format options below for more
" information 
" Be careful with this default
set textwidth=0

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

let mapleader=","

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

" Might not need the wrap! as the formating takes care of that 
" set wrap!

" Formating is overridden by local plugins
" (/usr/share/vim/vim86/ftplugin)
set fo-=t   " don't auto-wrap text using text width
set fo+=c   " autowrap comments using textwidth with leader
set fo-=r   " don't auto-insert comment leader on enter in insert
set fo-=o   " don't auto-insert comment leader on o/O in normal
set fo+=q   " allow formatting of comments with gq
set fo-=w   " don't use trailing whitespace for paragraphs
set fo-=a   " disable auto-formatting of paragraph changes
set fo-=n   " don't recognized numbered lists
set fo+=j   " delete comment prefix when joining
set fo-=2   " don't use the indent of second paragraph line
set fo-=v   " don't use broken 'vi-compatible auto-wrapping'
set fo-=b   " don't use broken 'vi-compatible auto-wrapping'
set fo+=l   " long lines not broken in insert mode
set fo+=m   " multi-byte character line break support
set fo+=M   " don't add space before or after multi-byte char
set fo-=B   " don't add space between two multi-byte chars
set fo+=1   " don't break a line after a one-letter word
