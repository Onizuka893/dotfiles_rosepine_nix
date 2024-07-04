return {
  'nvim-treesitter/nvim-treesitter',
  event = { "BufReadPre", "BufNewFile" },
  build = ':TSUpdate',
  dependencies = {
		"windwp/nvim-ts-autotag",
	},
  config = function()
	local treesitter = require("nvim-treesitter.configs")

	treesitter.setup({
		sync_install = false,
		auto_install = true,
		highlight = {enable = true},
		autotag = {enable = true},
		indent = {enable = true},
		ensure_installed = {
				"html",
				"json",
				"css",
				"lua",
				"go",
				"dockerfile",
				"gitignore",
				"markdown",
				"bash",
			},
		incremental_selection = {
			  enable = true,
			  keymaps = {
					init_selection = "<C-Space>",
					node_incremental = "<C-Space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
	})
  end,
}
