local lsp = require('lsp-zero')
local util = require('lspconfig/util')
lsp.preset('recommended')

lsp.ensure_installed({
  'bashls',
  'gopls',
  'terraformls',
  'sumneko_lua',
  'rust_analyzer',
  'yamlls',
})

lsp.configure('gopls', {
  filetypes = { "go", "gomod" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
  init_options = {
    usePlaceholders = true,
  }
})

lsp.configure('yamlls', {
  settings = {
    yaml = {
      format = {
        enable = false,
        singleQuote = true,
      },
    },
  },
})

local rust_lsp = lsp.build_options('rust_analyzer', {})
require('rust-tools').setup({ server = rust_lsp })

lsp.nvim_workspace()

lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
})
