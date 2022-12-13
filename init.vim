" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'scrooloose/nerdtree'
Plug 'mbbill/undotree'
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
Plug 'edkolev/tmuxline.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ciaranm/inkpot'
"Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
"Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

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

" Save, because :w always ends up being :W over ssh.
map <Leader>s :w<cr>
map <Leader>S :w!<cr>

" Copy and paste using the clipboard
map <Leader>y "+y<cr>
map <Leader>p "+p<cr>

" Search
map <Leader>g :Files<cr>
map <Leader>G :Files .  <C-R><C-W><cr>

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
"map <Leader>f :!clang-format -sort-includes -i %<cr>
map <Leader>f :!sbindent -sort-includes %<cr>
map <Leader>i o#include ""<Esc>ci"
map <Leader>I o#include <lt>><Esc>ci<lt>

" Undo Tree
map <Leader>u :UndotreeToggle<cr>
let g:undotree_HighlightChangedText = 0

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

nnoremap <C-TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"


nnoremap <silent> K :call <SID>show_documentation()<CR>

" Use K to show documentation in preview window.
function! s:show_documentation()
          if (index(['vim','help'], &filetype) >= 0)
                      execute 'h '.expand('<cword>')
          else
     "           call CocAction('doHover')
          endif
endfunction

" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')

" Window movement
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"nmap <Leader>c :CocCommand explorer --no-toggle<CR>
nmap <Leader>c :CocCommand explorer<CR>
map <Leader>q :CocSearch <C-R><C-W><cr>
"coc explorer
let g:coc_explorer_global_presets = {
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\ }
" Use preset argument to open it
nmap <leader>ef :CocCommand explorer --preset floating<CR>

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
" set relativenumber

let g:gruvbox_contrast_dark = 'hard' 
colorscheme gruvbox
 "set bg=dark


filetype plugin on
:set hlsearch
:set linespace=2  

set showmatch " highlight matching [{()}]
set expandtab " tabs are spaces
set cursorline " highlight current line
set vb " Turn off the audible bell
set t_vb= " Don't let the bell flash the screen

syntax enable         
set nowrap             
set ruler               
"set cmdheight=2         
"set iskeyword+=-          
set iskeyword+=          
set mouse=a                
set splitbelow              
set splitright               
set conceallevel=0                      
set laststatus=0                       
set cursorline                        
set showtabline=2                    
set nobackup                        
set nowritebackup                  
set updatetime=300                
set timeoutlen=500               
set formatoptions-=cro          
set clipboard=unnamedplus      
set noshowmode                

let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : '#W',
      \'c'    : '#{pane_current_path}',
      \'win'  : ['#I', '#{b:pane_current_path}'],
      \'cwin' : ['#I', '#{b:pane_current_path}'],
      \'x'    : '#(date)',
      \'z'    : '#H'}

source $HOME/.config/nvim/private.vim

hi FloatermBorder guifg=green

lua << EOF
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>E', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>Q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}
require('lspconfig')['clangd'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

EOF


nnoremap <leader>h <cmd>ClangdSwitchSourceHeader<cr>

" let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']
let g:completion_matching_strategy_list = ['exact', 'substring', 'all']
let g:completion_matching_smart_case = 1
" set completeopt=menuone,noinsert,noselect
set completeopt=menu,preview
autocmd BufEnter * lua require'completion'.on_attach()

lua <<EOF

require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = {}, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = {},  -- list of language that will be disabled
  },
}
EOF

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>fc <cmd>lua require('telescope.builtin').command_history()<cr>
nnoremap <leader>fo <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>
nnoremap <leader>fr <cmd>lua require('telescope.builtin').lsp_references()<cr>
nnoremap <leader>fd <cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>
nnoremap <leader>fc <cmd>lua require('telescope.builtin').lsp_code_actions()<cr>


" Make the background layer transparent.
highlight Normal ctermbg=NONE guibg=NONE

nmap <Leader>B :highlight Normal guibg=NONE<CR>
nmap <Leader>b :highlight Normal guibg=#000000<CR>

