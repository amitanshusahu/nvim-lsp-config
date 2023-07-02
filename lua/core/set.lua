vim.opt.termguicolors = true
vim.cmd[[set nu]]
vim.cmd[[syntax on]]
vim.cmd[[set mouse=a]]
vim.cmd[[set autoindent expandtab tabstop=4 shiftwidth=4]]
vim.cmd[[set cursorline]]

-- set bg transparent
vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})


-- cmds 
vim.api.nvim_create_user_command("DiagnosticToggle", function()
	local config = vim.diagnostic.config
	local vt = config().virtual_text
	config {
		virtual_text = not vt,
		underline = vt,
	    signs = not vt,
	}
end, { desc = "toggle diagnostic" });
-- turn off dy defaut
vim.diagnostic.config({
    virtual_text = false,
    underline = true,
    signs = false,
})
