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
map <Leader>f :!clang-format -sort-includes -i %<cr>
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

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
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

nmap <Leader>c :CocCommand explorer --no-toggle<CR>
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

syntax enable         
set nowrap             
set ruler               
"set cmdheight=2         
set iskeyword+=-          
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

hi FloatermBorder guifg=red

lua << EOF
--require('lspconfig').clangd.setup{}
local nvim_lsp = require('lspconfig')
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

  -- Set some keybinds conditional on server capabilities
  if client.resolved_capabilities.document_formatting then
    buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  elseif client.resolved_capabilities.document_range_formatting then
    buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
  end

  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec([[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
  end
end

-- Use a loop to conveniently both setup defined servers 
-- and map buffer local keybindings when the language server attaches
local servers = { "clangd", "rust_analyzer", "tsserver" }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup { on_attach = on_attach }
end
EOF
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']
let g:completion_matching_smart_case = 1
set completeopt=menuone,noinsert,noselect
autocmd BufEnter * lua require'completion'.on_attach()
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = {}, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = {},  -- list of language that will be disabled
  },
}
EOF
