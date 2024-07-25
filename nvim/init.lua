require("config.lazy")

vim.o.tabstop = 2 -- A TAB character looks like 4 spaces
vim.o.wrap = false -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 2 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 2 -- Number of spaces inserted when indenting 
vim.opt.relativenumber = true -- sets vim.opt.relativenumber
vim.opt.number = true -- sets vim.opt.number
vim.o.spell = false -- sets vim.opt.spell
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"


vim.opt.clipboard:append("unnamedplus")

vim.g.clipboard = {
  name = "wl-clipboard",
  copy = {
    ["+"] = "wl-copy",
    ["*"] = "wl-copy",
  },
  paste = {
    ["+"] = "wl-paste",
    ["*"] = "wl-paste",
  },
  cache_enabled = 0,
}
