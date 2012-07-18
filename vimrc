" " UTF-8 als Default-Encoding
set enc=utf-8

" load plugins
filetype off

call pathogen#infect()
call pathogen#helptags()

" syntax highlighting
filetype plugin indent on
syntax on

" indention
set tabstop=4
set shiftwidth=4
set softtabstop=4

" number lines
set nu
set textwidth=100
set colorcolumn=100
set cursorcolumn

" visual
set t_Co=256
set background=dark
colorscheme zenburn
let g:zenburn_force_dark_Background=1
if has('gui_macvim')
	set guifont=Inconsolata:h16
else
	set guifont=Inconsolata\ 13
endif

" fuzzyfinder shorcuts
map FF :FufCoverageFile<CR>
map FT :FufTag<CR>
map FB :FufBuffer<CR>

" Tagbar
map TB :TagbarToggle<CR>

" live search
set incsearch
set hlsearch
set ignorecase
set smartcase

set wildmode=list:longest

" " hide macvim toolbar
set guioptions-=T

" show git branch
set statusline=%<%f\ %h%m%r%h%w%y\ %{fugitive#statusline()}\ %=\ col:%c%V\ ascii:%b\ pos:%o\ lin:%l,%L\ %P

" Snipmate
autocmd FileType python set ft=python.django
autocmd FileType html set ft=htmldjango.html

" pyflakes
let g:pyflakes_use_quickfix = 0

" nerdtee
let NERDTreeIgnore = ['\.pyc$']
