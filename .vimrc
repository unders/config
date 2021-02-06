" Reference:
"
"    * https://github.com/changemewtf/no_plugins/blob/master/no_plugins.vim
"    * https://www.guckes.net/vim/setup.html
"    * https://youtu.be/XA2WjJbmmoM How to Do 90% of What Plugins Do (With Just Vim)
"

" enter the current millenium
set nocompatible

" enable syntax and plugins (for netrw)

syntax on
filetype plugin on
au BufRead,BufNewFile *.svelte set filetype=html

" Search down into subfolders
" Provides tab-completion for all file-related tasks
" :b, :find, :ls
set path+=**

"a better menu in command mode
set wildmenu
set wildmode=longest:full,full

"Always show current position
set ruler

" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

"more characters will be sent to the screen for redrawing
set ttyfast

"time waited for key press(es) to complete. It makes for a faster key response
set ttimeout
set ttimeoutlen=50

"display incomplete commands
set showcmd

" Set to auto read when a file is changed from the outside
set autoread

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"always set autoindenting on
set autoindent

" Always show the status line
set laststatus=2

" v mark your text and y -> cmd + v or p
set clipboard=unnamed

set belloff=all

set autowrite

" FILE BROWSING

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
let g:netrw_winsize = 25


let mapleader = ","
map <leader>b :ls<cr>:b<space>
" open file with <cr> and close other windows with <cr>
map <leader>1 :w<cr> :edit . <cr>
nmap <cr> :only <cr>
map <leader>f :w<cr> :find<space>
