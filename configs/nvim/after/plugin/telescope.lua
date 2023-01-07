-- https://github.com/nvim-telescope/telescope-fzf-native.nvim#telescope-setup-and-configuration
require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            'node_modules',
            'vendor'
        }
    }
}

require('telescope').load_extension('fzf')
