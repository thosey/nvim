vim.wo.number = true
vim.o.termguicolors = true
vim.wo.wrap = false

vim.cmd('colorscheme tokyonight-night')
vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')

vim.cmd('set expandtab')

vim.cmd('let g:airline_powerline_fonts = 1');
vim.cmd("let g:tmuxline_preset = { \'a'    : '#S', \'b'    : '#W', \'c'    : '#{pane_current_path}', \'win'  : ['#I', '#{b:pane_current_path}'], \'cwin' : ['#I', '#{b:pane_current_path}'], \'x'    : '#(date)', \'z'    : '#H'}");

