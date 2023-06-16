vim.opt.termguicolors = true
vim.cmd[[set nu]]
vim.cmd[[syntax on]]
vim.cmd[[set mouse=a]]
vim.cmd[[set autoindent expandtab tabstop=4 shiftwidth=4]]
vim.cmd[[set cursorline]]

-- set bg transparent
vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
