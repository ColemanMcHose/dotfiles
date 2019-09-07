set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'editorconfig/editorconfig-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let mapleader = "\<Space>"

let g:newrw_banner=0

set relativenumber
set incsearch

set autoindent
"set textwidth=100

nnoremap <leader>dgl :diffg LO<CR>
nnoremap <leader>dgr :diffg RE<CR>

inoremap {<CR> {<CR>}<C-o>O
inoremap sys System.out.println();<ESC>hi
inoremap cdl console.log();<ESC>hi


nnoremap <leader>w <C-W><C-W>

nnoremap ç <C-E>
nnoremap √ <C-Y>
nnoremap o o<ESC>
nnoremap O O<ESC>


nnoremap ≠ <C-W>+<C-W>+
nnoremap – <C-W>-<C-W>-
nnoremap ≥ <C-W>><C-W>>
nnoremap ≤ <C-W><<C-W><

nnoremap <leader>eb :e ~/.bash_profile<CR>
nnoremap <leader>rb :!source ~/.bash_profile<CR>
nnoremap <leader>rv :source $MYVIMRC<CR> 
"":! cp $MYVIMRC ~/.vrapperrc 
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>vs :vsplit<CR><C-W><C-W>
nnoremap <leader>sv :vsplit $MYVIMRC<CR>

nnoremap <leader>n :tabnew<Space>
nnoremap <leader>l :bn<CR>
nnoremap <leader>k :bp<CR>
nnoremap <leader>dd :bd<CR>
nnoremap <leader>ds :bd<CR>:vs<CR>:bn<CR>
nnoremap <leader>bs :ls<CR> 
nnoremap <leader>tn :e ~/.menotes<CR> 
nnoremap <leader>v <C-V>
nnoremap <leader>p Pa`<ESC>lvepF`xde
nnoremap <leader>cf <C-V>$%I//<ESC><ESC>


"":command W w     texlo texlo


nnoremap <leader>h yw :vsplit  <CR> <C-W><C-W> :find %:r.h <CR> /<C-R>"<CR>


nnoremap ÷÷ :q<CR>
nnoremap LL :q<CR>
nnoremap :Q :q
nnoremap :W :w

set tabstop=4
set shiftwidth=4
set expandtab
nnoremap > >>
nnoremap < <<

set ruler
set laststatus =2

set nocompatible
syntax enable
filetype plugin on
set path+=**
set wildmenu

command! Maketags !ctags -R .
 
set backupdir=.backup/,~/.backup/,/tmp//
set directory=.swp/,~/.swp/,/tmp//
set undodir=.undo/,~/.undo/,/tmp//

"NERD tree"
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
:cmap  tree NERDTree
nnoremap  <leader>tr :NERDTree<CR>
nnoremap  <leader>tu ggjjo


colorscheme monokai
