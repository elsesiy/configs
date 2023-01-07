-- TAB in general mode will move to text buffer
vim.keymap.set('n', '<TAB>', ':bnext<CR>')

-- SHIFT-TAB will go back
vim.keymap.set('n', '<S-TAB>', ':bprevious<CR>')

-- Better tabbing
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

vim.keymap.set('n', '<Leader>o', 'o<Esc>^Da')
vim.keymap.set('n', '<Leader>O', 'O<Esc>^Da')

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- nvim tree
vim.keymap.set('n', '<C-f>', ':NvimTreeFocus<CR>')
vim.keymap.set('n', '<C-t>', ':NvimTreeToggle<CR>')

-- telescope
vim.keymap.set('n', '<Leader>ff', '<Cmd>Telescope find_files<CR>')
vim.keymap.set('n', '<Leader>fg', '<Cmd>Telescope git_commits<CR>')
vim.keymap.set('n', '<Leader>fz', '<Cmd>Telescope live_grep<CR>')
vim.keymap.set('n', '<Leader>fb', '<Cmd>Telescope buffers<CR>')
vim.keymap.set('n', '<Leader>fh', '<Cmd>Telescope help_tags<CR>')

-- show undo tree
vim.keymap.set('n', '<Leader>u', ':UndotreeToggle<CR>')

-- clipboard ops
vim.keymap.set('x', '<Leader>p', '\"_dP')
vim.keymap.set('n', '<Leader>Y', '\"+Y', { noremap = false })
vim.keymap.set('n', '<Leader>y', '\"+y')
vim.keymap.set('v', '<Leader>y', '\"+y')
vim.keymap.set('n', '<Leader>d', '\"_d')
vim.keymap.set('v', '<Leader>d', '\"_d')

-- format
vim.keymap.set('n', '<Leader>fmt', function()
    vim.lsp.buf.format()
end)
