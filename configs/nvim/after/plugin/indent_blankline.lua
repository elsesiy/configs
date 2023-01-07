-- add | indent https://github.com/lukas-reineke/indent-blankline.nvim
require('indent_blankline').setup {
    char = "",
    context_char = "│",
    show_current_context = true,
    show_current_context_start = true,
    filetype_exclude = { 'NvimTree' },
}
