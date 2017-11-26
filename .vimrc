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
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'w0rp/ale'
Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'
Plugin 'chriskempson/base16-vim'
Plugin 'mileszs/ack.vim'
Plugin 'matze/vim-move'

call vundle#end()
filetype plugin indent on

" General Settings
set number
set nowrap
set autoread
set clipboard=unnamed
set mouse=a
set ignorecase
set smartcase
set hidden
set hlsearch
set incsearch

" swapfile in .vim dir
:set directory=$HOME/.vim/swapfiles//

" backspace fix
set backspace=indent,eol,start

" tab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Disable stupid warning from go plugin
let g:go_version_warning = 0

" Theme stuff
" https://github.com/chriskempson/base16-shell
syntax on
set guifont=Source\ Code\ Pro:h15

" Switch theme with shell helpers  BASE16_*
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Airline
let g:airline_theme='dark'
set laststatus=2

" Fuzzy find
" `brew install fzf`
" leader + t to bring up menu
set rtp+=/usr/local/opt/fzf
let g:fzf_launcher = "~/.vim/fzf.sh %s"
nnoremap <silent> <Leader>t :FZF<cr>

" no bells
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" vim-move
" move selected lines up and down with ctrl+j / k
let g:move_key_modifier = 'C'

" ack
" open with leader + g
" close with leader + x
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
nnoremap <silent> <Leader>g :Ack<cr>
nnoremap <silent> <Leader>x :cclose<cr> 

" Ale config
" let g:ale_linters = {'javascript':  ['eslint']}
let g:ale_fixers = {'javascript':  ['prettier']}
" let g:ale_fix_on_save = 1
