vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup()

vim.api.nvim_create_autocmd('BufEnter', {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match('NvimTree_') ~= nil then
      vim.cmd 'quit'
    end
  end
})
