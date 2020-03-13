set nocompatible              " be iMproved, required
filetype off                  " required

" plugins (Vundle "
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"""""Plugins"""""
":PluginInstall
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'mattn/emmet-vim'
Plugin 'heavenshell/vim-jsdoc'
"Plugin 'Galooshi/vim-import-js'
Plugin 'pangloss/vim-javascript'
Plugin 'prettier/vim-prettier'
"Plugin 'moll/vim-node'
"Plugin 'skywind3000/asyncrun.vim'
Plugin 'w0rp/ale'
Plugin 'mxw/vim-jsx'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = "\<Space>"


let g:newrw_banner=0

set foldmethod=indent

" autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %

" Keep all folds open when a file is opened
augroup OpenAllFoldsOnFileOpen
    autocmd!
    autocmd BufRead * normal zR
augroup END

set relativenumber
nnoremap <leader>rl :set relativenumber!<CR>
set incsearch
set autoindent
set formatoptions-=cro

"avoid having to save on changing buffers 
set hidden
"set textwidth=100

"""""scrolling""""""
nnoremap ç 3<C-E>
nnoremap √ 3<C-Y>

"""""don't enter insert mode for o"""""
nnoremap o o<ESC>
nnoremap O O<ESC>

"""""window resizing"""""
"=<options>
nnoremap ≠ <C-W>+<C-W>+
"-<options>
nnoremap – <C-W>-<C-W>-
".<options>
nnoremap ≥ <C-W>><C-W>> 
",<options>
nnoremap ≤ <C-W><<C-W><

"""""edit vim/bash short cuts""""""
nnoremap <leader>eb :e ~/.bash_profile<CR>
nnoremap <leader>rb :!source ~/.bash_profile<CR>
nnoremap <leader>rv :source $MYVIMRC<CR> 
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :vsplit<CR><C-W><C-W>
nnoremap <leader>sh :split<CR><C-W><C-W>
nnoremap <leader>sev :vsplit $MYVIMRC<CR>

"""""buffer shortcuts"""""
nnoremap <leader>ww <C-W><C-W>
nnoremap <leader>wl <C-W>l
nnoremap <leader>wk <C-W>k
nnoremap <leader>wj <C-W>j
nnoremap <leader>wh <C-W>h
nnoremap <leader>l :bn<CR>
nnoremap <leader>k :bp<CR>
nnoremap <leader>bd :bd<CR>
nnoremap <leader>bc :bn<bar>bd#<CR>
nnoremap <leader>tn :e ~/.menotes<CR> 


"""""misc shortcuts"""""
"remap visual block
nnoremap <leader>v <C-V>
"paste but keep on clipboard
"nnoremap <leader>p ciw<C-R>0

"""""commenting shortcuts"""""

"comment functions
nnoremap <leader>cf <C-V>$%I//<ESC><ESC> 
"comment jsx  (single line)
nnoremap <leader>cx I{/*<ESC>A*/}<ESC>
nnoremap <leader>ucx _3x$xxx
"comment html (single line)
nnoremap <leader>ch I<!--<ESC>A--><ESC>
nnoremap <leader>uch _4x$xxx
"comment 1 line
nnoremap <leader>/ I// <ESC>

"""""documentation shortcuts""""""
nnoremap <leader>d :JsDoc<CR> 

"""""react snippets""""""
nnoremap <leader>us bceconst [<ESC>pa, <ESC>pb~biset<ESC>ea] = useState(
nnoremap <leader>ue auseEffect(() => {<CR><TAB><ESC>mdi<CR>}, []);<ESC>`dA

"""""snippets"""""
inoremap {<CR> {<CR>}<C-o>O
inoremap sys System.out.println();<ESC>hi
inoremap cdl console.log();<ESC>hi
nnoremap <leader>sc acatch(error){<CR>console.error(error);<CR>}<ESC>

""nnoremap <leader>if Occif(){<CR><ESC>jV beggings of if wrap

"""""vimdiff"""""
if &diff
    set cursorline
    map ] ]c
    map [ [c
    map L :diffget LO<CR>
    map R :diffget RE<CR>
    map B :diffget BA<CR>
    hi DiffAdd    ctermfg=233 ctermbg=LightGreen guifg=#003300 guibg=#DDFFDD gui=none cterm=none
    hi DiffChange ctermbg=white  guibg=#ececec gui=none   cterm=none
    hi DiffText   ctermfg=233  ctermbg=yellow  guifg=#000033 guibg=#DDDDFF gui=none cterm=none
endif


"nnoremap <leader>h yw :vsplit  <CR> <C-W><C-W> :find %:r.h <CR> /<C-R>"<CR>

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

nnoremap <leader>o :find 

command! Maketags !ctags -R .
 
set backupdir=.backup/,~/.backup/,/tmp//
set directory=.swp/,~/.swp/,/tmp//
set undodir=.undo/,~/.undo/,/tmp//

"""""ale"""""
set omnifunc=ale#completion#OmniFunc
"
" Enable completion where available.
" This setting must be set before ALE is loaded.
"
" You should not turn this setting on if you wish to use ALE as a completion
" source for other completion plugins, like Deoplete.
let g:ale_completion_enabled = 1

let g:ale_sign_error = '•'
let g:ale_sign_warning = '~'

"""""Prettier"""""

" max line length that prettier will wrap on
" Prettier default: 80
let g:prettier#config#print_width = 100

" number of spaces per indentation level
" Prettier default: 2
let g:prettier#config#tab_width = 4

" use tabs over spaces
" Prettier default: false
let g:prettier#config#use_tabs = 'false'

" print semicolons
" Prettier default: true
let g:prettier#config#semi = 'true'

" single quotes over double quotes
" Prettier default: false
let g:prettier#config#single_quote = 'true'

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'true'

" put > on the last line instead of new line
" Prettier default: false
let g:prettier#config#jsx_bracket_same_line = 'false'

" avoid|always
" Prettier default: avoid
let g:prettier#config#arrow_parens = 'avoid'

" none|es5|all
" Prettier default: none
let g:prettier#config#trailing_comma = 'es5'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown
" Prettier default: babylon
let g:prettier#config#parser = 'babylon'

" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'

" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'

" css|strict|ignore
let g:prettier#config#html_whitespace_sensitivity = 'css'



"""""NERD tree"""""
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
:cmap  tree NERDTree
nnoremap  <leader>tr :NERDTree<CR>
nnoremap  <leader>tu ggjjo
:let g:NERTreeMinimalUI=1

"""""lightline"""""
" seoul256
" one
" landscape
" wombat
" deus
let g:lightline = {
      \ 'colorscheme': 'deus',
      \ }

colorscheme elda

