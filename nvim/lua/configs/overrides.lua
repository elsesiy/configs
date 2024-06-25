local M = {}

M.mason = {
	ensure_installed = {
		-- dap
		"delve",

		-- lsp
		"bash-language-server",
		"gopls",
		"jdtls",
		"lua-language-server",
		"nil",
		"terraform-ls",
		"rust-analyzer",
		"yaml-language-server",

		-- formatting
		"gofumpt",
		"goimports",
		"jq",
		"shfmt",
		"stylua",
		"yamlfix",

		-- lint
		"golangci-lint",
		"shellcheck",
		"sqlfluff",
		"tflint",
		"tfsec",
		"yamllint",

		-- spelling
		"codespell",
	},
}

M.treesitter = {
	ensure_installed = {
		"bash",
		"dockerfile",
		"go",
		"gomod",
		"hcl",
		"java",
		"json",
		"lua",
		"make",
		"markdown",
		"markdown_inline",
		"nix",
		"proto",
		"regex",
		"rust",
		"sql",
		"terraform",
		"vim",
		"vimdoc",
		"yaml",
	},
}

M.telescope = {
	defaults = {
		file_ignore_patterns = {
			"node_modules",
			"vendor",
		},
	},
	extensions_list = { "git_file_history", "git_worktree", "noice", "ui-select" },
}

M.which_key = {
	show_help = false,
	show_keys = false,
}

M.cmp = {
	enabled = function()
		-- disable completion for prompts such as telescope
		if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
			return false
		end

		-- keep command mode completion enabled when cursor is in a comment
		if vim.api.nvim_get_mode().mode == "c" then
			return true
		end

		-- disable completion in comments
		local context = require("cmp.config.context")
		return not context.in_treesitter_capture("comment") and not context.in_syntax_group("Comment")
	end,
}

return M
