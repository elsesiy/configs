local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Appearance
  use 'joshdick/onedark.vim'
  use 'myusuf3/numbers.vim'
  use 'ap/vim-css-color'
  use 'kyazdani42/nvim-web-devicons'
  use 'machakann/vim-highlightedyank'
  use 'folke/lsp-colors.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Completion
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- https://github.com/ray-x/lsp_signature.nvim#attach-the-plugin
  use {
    'ray-x/lsp_signature.nvim',
    config = function() require('lsp_signature').setup() end
  }

  -- https://github.com/numToStr/Comment.nvim#-installation
  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end
  }
  use 'tpope/vim-surround'
  use 'mg979/vim-visual-multi'

  -- Git
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'junegunn/gv.vim'
  use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically

  -- Semantic language support
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'nvim-treesitter/nvim-treesitter-refactor'

  use {
    'j-hui/fidget.nvim', -- Useful status updates for LSP
    config = function() require('fidget').setup() end
  }

  -- add pictograms to built-in lsp https://github.com/onsails/lspkind-nvim
  use {
    'onsails/lspkind-nvim',
    config = function() require('lspkind').init() end
  }

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  -- Syntactic language support
  use 'simrat39/rust-tools.nvim'

  use {
    'ray-x/go.nvim',
    config = function() require('go').setup() end
  }

  -- Nav
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    }
  }

  -- Undo
  use 'mbbill/undotree'

  -- Misc
  use 'ThePrimeagen/vim-be-good'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
