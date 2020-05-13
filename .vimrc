"set nocompatible              " be iMproved, required
"filetype off                  " required


"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required
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

"Bundle Scripts-----------------------------
if &compatible
	set nocompatible               " Be iMproved
endif
 " Required:
set runtimepath+=/home/maruf-dev/.vim/bundle/neobundle.vim/
  "
" Required:
call neobundle#begin(expand('/home/maruf-dev/.vim/bundle'))
  "
  " " Let NeoBundle manage NeoBundle
  " " Required:
NeoBundleFetch 'Shougo/neobundle.vim'
  "
  " " Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'vim-syntastic/syntastic'
NeoBundle 'nvie/vim-flake8'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'vim-syntastic/syntastic'
NeoBundle 'nvie/vim-flake8'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
NeoBundle 'ascenator/L9', {'name': 'newL9'}
"Code folding
NeoBundle 'tmhedberg/SimpylFold'
"Auto-Indentation
NeoBundle 'vim-scripts/indentpython.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'kien/ctrlp.vim'
"Plugin 'davidhalter/jedi-vim'
NeoBundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" " NeoBundle 'flazz/vim-colorschemes'
  "
  " " You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
  "
  " " Required:
call neobundle#end()
  "
  " " Required:
filetype plugin indent on
  "
  " " If there are uninstalled bundles found on startup,
  " " this will conveniently prompt you to install them.
NeoBundleCheck
  " "End NeoBundle Scripts-------------------------
  "
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
