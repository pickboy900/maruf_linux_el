set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}
"Code folding
Plugin 'tmhedberg/SimpyFold'
"Auto-Indentation
Plugin 'vim-scipts/indentpython.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" All of your Plugins must be added before the following line
call vundle#end()            " required
"NeoBundle 'davidhalter/jedi-vim'
" Do not load vim-pyenv until *.py is opened and
" make sure that it is loaded after jedi-vim is loaded.
"NeoBundleLazy 'lambdalisue/vim-pyenv', {
"        \ 'depends': ['davidhalter/jedi-vim'],
"        \ 'autoload': {
"        \   'filetypes': ['python', 'python3'],
"        \ }}
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
execute pathogen#infect()
let python_highlight_all=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
syntax on
set nu
set splitbelow
set splitright
set encoding=utf-8
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
let g:SimpyFold_docstring_preview=1

"Full Stack
au BufNewFile,BufRead *.js, *.html, *.css, *.c
					\ set tabstop=2
					\ set softtabstop=2
					\ set shiftwidth=2
"Flaggin unnecessary whitespace
"au BufRead,BufNewFile *.py, *.pyw,*.c, *.h match BadWhitespace /\s\+$/
