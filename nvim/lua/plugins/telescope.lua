return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
	local keymap = vim.keymap

	keymap.set("n", "<leader><space>", "<cmd>Telescope fd<CR>")
	keymap.set("n", "<leader>ff", "<cmd>Telescope live_grep<CR>")
  end
}
