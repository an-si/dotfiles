" " UTF-8 als Default-Encoding
set encoding=utf8

set nocompatible              " be iMproved, required
filetype off                  " required

" git clone https://github.com/VundleVim/Vundle.vim.git ~/Dotfiles/vim/bundle/Vundle.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/Dotfiles/vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'davidhalter/jedi-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'mxw/vim-jsx'
Plugin 'mhartington/oceanic-next'
Plugin 'rakr/vim-one'
Plugin 'vim-airline/vim-airline'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/syntastic'
Plugin 'gcorne/vim-sass-lint'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'moll/vim-node'
Plugin 'dkprice/vim-easygrep'

call vundle#end()            " required

filetype plugin indent on

" syntax highlighting
let python_highlight_all=1
syntax on

" indention
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" number lines
set nu
set textwidth=100
set colorcolumn=100
"set cursorcolumn

" visual
syntax enable

if (has("termguicolors"))
    set termguicolors
endif

"colorscheme solarized
"colorscheme OceanicNext
colorscheme one

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  set t_ut=
endif


if has('gui_macvim')
    set guifont=Inconsolata-dz\ for\ Powerline:h16
else
	set guifont=Inconsolata\ 13
endif

" Tagbar
map TB :TagbarToggle<CR>

" live search
set incsearch
set hlsearch
set ignorecase
set smartcase

set wildmode=list:longest
set wildignore=*.pyc


" " hide macvim toolbar
set guioptions-=T

" show git branch
"set statusline=%<%f\ %{fugitive#statusline()}\ %=\ col:%c%V\ ascii:%b\ pos:%o\ lin:%l,%L\ %P

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" pyflakes
let g:pyflakes_use_quickfix = 0

" nerdtee
let NERDTreeIgnore = ['\.pyc$']

" airline
let g:airline_powerline_fonts = 1
"let g:airline_theme='oceanicnext'
let g:airline_theme='one'
set laststatus=2

"syntastic
let g:syntastic_python_python_exec = '/usr/local/bin/python3'
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_javascript_eslint_exec = '/usr/local/bin/eslint'
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_php_checkers = ['phpcs']
let g:syntastic_php_phpcs_args = "--standard=PSR2"
"let g:syntastic_sass_lint_args = '--config /Users/ansi/src/mmx/src/.sass-lint.yaml'
"let g:syntastic_sass_checkers=["sass_lint"]
"let g:syntastic_scss_checkers=["sass_lint"]

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️ '
let g:syntastic_style_warning_symbol = '💩'

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"ctrp
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/collected_static/*,*/dist/*,*/public/*,*/node_modules/*

let mapleader = "\<Space>"

set hidden
