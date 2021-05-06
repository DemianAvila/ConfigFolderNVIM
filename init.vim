set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'preservim/nerdtree'
  Plugin 'maxmellon/vim-jsx-pretty'
  Plugin 'yuezk/vim-js'
  Plugin 'Valloric/YouCompleteMe', { 'do': './install.py' }
  Plugin 'itchyny/lightline.vim'
  "plugins oara markdown
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-fugitive'
  Plugin 'godlygeek/tabular', {'for': 'markdown'}
  Plugin 'plasticboy/vim-markdown', {'for': 'markdown'}
  "Previsualizar el md
  "MarkdownPreview
  "MarkdownPreviewStop
  Plugin 'iamcco/markdown-preview.vim'
  "Plugin para haskell
  Plugin 'neovimhaskell/haskell-vim.git' 
  "emmet para autocompletado de html
  Plugin 'mattn/emmet-vim'
  
call vundle#end()

syntax on
filetype plugin indent on

" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p

:set number
:set laststatus=2

if !has('gui_running')
  set t_Co=256
endif


let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'helloworld' ] ]
      \ },
      \ }


inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"

"conectar al portapapeles
set clipboard+=unnamedplus


"lineas de configuración para haskell
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords



"Opciones para programación en general
"sintaxis
syntax on
"identar
set autoindent cindent smartindent showmatch
set sw=3

