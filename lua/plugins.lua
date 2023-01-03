return require('packer').startup(function(use)
  -- Packer can manage itself
use 'wbthomason/packer.nvim'

use {
    'williamboman/mason.nvim',
    'mfussenegger/nvim-dap',
    'jayp0521/mason-nvim-dap.nvim',
}

use { 'rcarriga/nvim-dap-ui',
  requires = {'mfussenegger/nvim-dap'}
 }
use {
  'VonHeikemen/lsp-zero.nvim',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},
    -- Snippets
    {'L3MON4D3/LuaSnip'},
    {'rafamadriz/friendly-snippets'},
  }
}
use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
       local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
       ts_update()
    end,
}
use {'nvim-treesitter/playground'}

use {
  'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    }
  }

use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use {'mbbill/undotree'}
use {'mileszs/ack.vim'}
use {'morhetz/gruvbox'}
use({
    'rose-pine/neovim',
    as = 'rose-pine',
})
end)
