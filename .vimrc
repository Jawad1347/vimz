set rtp+=/home/julia/anna/lib/python3.7/site-packages/powerline/bindings/vim/
set laststatus=2
set nu rnu

set nocompatible              " required
filetype off                  " required

" Remember to install vundle first, try the guide https://realpython.com/vim-and-python-a-match-made-in-heaven/

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" file tree screw loose
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" super searching ctrl+p
Plugin 'kien/ctrlp.vim'

" git integeration
Plugin 'tpope/vim-fugitive'

" powerline statusline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


" folding
Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

" Auto complete YMC you complete me
" Bundle 'Valloric/YouCompleteMe'
" let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" python with virtualenv support
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"   project_base_dir = os.environ['VIRTUAL_ENV']
" exec(compile(open(activate_this, "rb").read(), activate_this, 'exec'), dict(__file__=activate_this))
"   execfile(activate_this, dict(__file__=activate_this))
" EOF

" syntax highlighting
Plugin 'vim-syntastic/syntastic'
" PEP 8 checking for syntax
Plugin 'nvie/vim-flake8'

" pretty highlighting
let python_highlight_all=1
syntax on

" color colour scheme to go with syntax highlighting
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
if has('gui_running')
  set background=dark
  colorscheme solarized
"else
"  colorscheme zenburn
endif
" solarized colour scheme switching with F5 key
" call togglebg#map("<F5>")


" auto indent
Plugin 'vim-scripts/indentpython.vim'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable folding
set foldmethod=indent
set foldlevel=99

" Pep8 folding pyflake wise
au BufNewFile,BufRead *.py:
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css:
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" review trailing white space
" definding Bad white space before using it
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" UTF-8 Support
set encoding=utf-8

" copy and paste as well
set clipboard=unnamed
