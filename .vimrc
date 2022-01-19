set nocompatible

" Deactivate info text in netrw
let g:netrw_banner = 0
" Set netrw window size in percent
let g:netrw_winsize = 50

" Activate Omni completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Use Markdown syntax in vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" Remap the ESC key
inoremap jk <ESC>
vnoremap jk <ESC>

" Turn on syntax highlighting.
syntax on

" Disable the swapfile
set noswapfile

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" Backspace over anything.
set backspace=indent,eol,start

" Allow hidden buffers
set hidden

" Make search case-insensitive when all characters in the string
" being searched are lowercase. Make the search case-sensitive if
" it contains any capital letters.
set ignorecase
set smartcase

" Highlight all search results
set hlsearch

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell
set noerrorbells visualbell t_vb=

" Enable mouse support
set mouse+=a

" Configure folding functionality
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
