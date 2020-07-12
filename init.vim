" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'scrooloose/nerdtree'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf.vim', { 'do': './install --all' }
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mileszs/ack.vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'unblevable/quick-scope'
Plug 'voldikss/vim-floaterm'
Plug 'justinmk/vim-sneak'

" Initialize plugin system
call plug#end()
:set termguicolors
lua require'colorizer'.setup()

" Floaterm
let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1

nnoremap <SPACE> <Nop>
let mapleader=" "

" Paste in a selected region without overwriting the current buffer.
" "_ uses the black hole register
vnoremap <leader>p "_dP

" Copy and paste using the clipboard
map <Leader>y "+y<cr>
map <Leader>p "+p<cr>

" Search
map <Leader>s :/\c
map <Leader>g :Files<cr>

" Perforce
map <Leader>a :!p4 add %<cr>
map <Leader>e :!p4 edit %<cr>

" Screen rendering
map <Leader>r :redraw!<cr>

" Airline
let g:airline_powerline_fonts = 1

" Nerd tree
map <Leader>n :NERDTreeFocus<cr>
map <Leader>o :NERDTreeFind<cr>

" C++ 
map <Leader>f :!clang-format -sort-includes -i %<cr>
map <Leader>i o#include ""<Esc>ci"
map <Leader>I o#include <lt>><Esc>ci<lt>

" Rainbow parenthesis
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}'], ['<', '>']]

" nvim-colorizer
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" General
map <Leader>w :!chmod +w %<cr>


 " Use alt + hjkl to resize windows
 nnoremap <M-j>    :resize -2<CR>
 nnoremap <M-k>    :resize +2<CR>
 nnoremap <M-h>    :vertical resize -2<CR>
 nnoremap <M-l>    :vertical resize +2<CR>

" Escape alternatives: 
 inoremap jk <Esc>
 inoremap kj <Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Window movement
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Coc stuff
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <Leader>c :CocCommand explorer<CR>
map <Leader>q :CocSearch <C-R><C-W><cr>

" FZF stuff
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

" Sneak
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1 " case insensitive sneak

" immediately move to the next instance of search, if you move the cursor
" sneak is back to default behavior
let g:sneak#s_next = 1

" Editor customization
set termguicolors
set hidden "Hide modified buffers rather than warn and close
set number
set relativenumber

let g:gruvbox_contrast_dark = 'hard' 
colorscheme gruvbox
set bg=dark

filetype plugin on
:set hlsearch
:set linespace=2  

set showmatch " highlight matching [{()}]
set expandtab " tabs are spaces
set cursorline " highlight current line
set vb " Turn off the audible bell
set t_vb= " Don't let the bell flash the screen

syntax enable                           " Enables syntax highlighing
set nowrap                              " Display long lines as just one line
set ruler                                           " Show the cursor position all the time
"set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                        " treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set laststatus=0                        " Always display the status line
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set noshowmode                          " No need to show mode when using airline

