" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'w0rp/ale'
Plugin 'rking/ag.vim'
Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'
Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype plugin indent on

" General Settings
set number
set nowrap
set autoread
set clipboard=unnamed
set noswapfile
set mouse=a
set ignorecase
set smartcase
set hidden
set hlsearch
set incsearch

" backspace fix
set backspace=indent,eol,start

" tab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Theme stuff
" https://github.com/chriskempson/base16-shell
syntax on
set guifont=Source\ Code\ Pro:h15

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Airline
let g:airline_theme='dark'
set laststatus=2

" Fuzzy find
" `brew install fzf`
set rtp+=/usr/local/opt/fzf
let g:fzf_launcher = "~/.vim/fzf.sh %s"

" no bells
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" vim-move
let g:move_key_modifier = 'C'

" Ale config
" let g:ale_linters = {'javascript':  ['eslint']}
let g:ale_fixers = {'javascript':  ['prettier']}
" let g:ale_fix_on_save = 1
