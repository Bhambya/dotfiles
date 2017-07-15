set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'valloric/youcompleteme'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype indent plugin on

syntax on
colorscheme molokai
set number
set smartindent

" no tabs
set expandtab
set shiftwidth=4
set softtabstop=4

" Disable automatic commenting on new line etc.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Suggestions for commands
set wildmenu

if has('gui_running')
  set guifont=Monospace\ 11
  set lines=999 columns=999
endif

set listchars=trail:.,tab:--
set list
highlight TrailingWhitespace ctermbg=darkgreen guibg=darkgreen
call matchadd('TrailingWhitespace', '\ \+$', -1)
highlight IndentTabs ctermbg=grey guibg=grey
call matchadd('IndentTabs', '^\t\+', -1, 55)

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" Set to auto read when a file is changed from the outside
set autoread
au CursorHold * checktime

" No annoying sound on errors
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set tm=500

set clipboard=unnamedplus

" for vim-airline
set laststatus=2
let g:airline_theme='wombat'

if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    set t_ut=
endif

" Split line at current character
nnoremap K i<CR><Esc>

" How can I map a specific key or shortcut to open NERDTree?
map <C-n> :NERDTreeFind<CR>
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" HBURG specification
au BufNewFile,BufRead *.tpg setlocal ft=haskell
