call plug#begin('~/.vim/plugged')
  " Make sure you use single quotes
  
  " Theme
  Plug 'kaicataldo/material.vim', { 'branch': 'main' }

  " Navigation
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

  " Snippets - https://www.sirver.net/blog/2011/12/30/first-episode-of-ultisnips-screencast/
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'

  " Commenting Code
  Plug 'tpope/vim-commentary'

  " Run commands while in VIM
  Plug 'skywind3000/asyncrun.vim'

  " Fast Brackets
  Plug 'tpope/vim-surround'

  " CSV Filetype
  Plug 'chrisbra/csv.vim'

  " Table Formatting - https://github.com/dhruvasagar/vim-table-mode
  Plug 'dhruvasagar/vim-table-mode'

  " Alignment ?
  Plug 'junegunn/vim-easy-align'

  " Multiple Cursors - https://github.com/mg979/vim-visual-multi/wiki/Quick-start#select-word-or-subword-under-cursor
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}

  " ? Don't know
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'https://github.com/AndrewRadev/splitjoin.vim'

call plug#end()

" settings
set number
set tabstop=4
set shiftwidth=4
set shiftround
" set expandtab

set backspace=indent,eol,start
set nocp                    " 'compatible' is not set

filetype plugin on          " plugins are enabled

" Style
let g:material_theme_style = 'default'
colorscheme material
hi TabLineFill ctermfg=249 ctermbg=232
hi TabLine ctermfg=249 ctermbg=236
hi TabLineSel ctermfg=Black ctermbg=2

let mapleader = "-"
let maplocalleader = "\\"

" ~/.vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" quick save ?? not sure if needed
nnoremap <c-s> :w<cr>
inoremap <c-s> <esc>:w<cr>i

" prevent accidental close
nnoremap ZZ <nop>

" quick exit insert mode
inoremap jk <esc>

" quick redo
nnoremap U <c-r>

" quick line moves
nnoremap <S-Down> :m .+1<CR>==
nnoremap <S-Up> :m .-2<CR>==
inoremap <S-Down> <Esc>:m .+1<CR>==gi
inoremap <S-Up> <Esc>:m .-2<CR>==gi
vnoremap <S-Down> :m '>+1<CR>gv=gv
vnoremap <S-Up> :m '<-2<CR>gv=gv

" enhanced movements
nnoremap H 0
vnoremap H 0
nnoremap L $
vnoremap L $

" Better tab experience - from https://webdevetc.com/
noremap <leader>te :tabnew<cr>:Ex<cr>
noremap <leader>tn :tabnew<cr>
noremap <leader>t<leader> :tabnext<cr>
noremap <leader>tv :tabmove
noremap <leader>tc :tabclose<cr>
noremap <leader>to :tabonly<cr>

" multiwindows
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" vim config
augroup filetype_vim
	autocmd!
	autocmd FileType vim nnoremap <buffer> <localleader>c I <esc>
	autocmd FileType vim nnoremap <buffer> <localleader>v 0x
	autocmd FileType vim vnoremap <buffer> <localleader>c I <esc>
	autocmd FileType vim vnoremap <buffer> <localleader>v 0x

augroup END

" Vim table config
let g:table_mode_header_fillchar='='

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
