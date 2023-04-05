require("mason").setup()
require("mason-lspconfig").setup()

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require("lspconfig").lua_ls.setup {}
-- require("lspconfig").rust_analyzer.setup {}
-- ...
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls" },
}

-- Setting up servers after mason-lspconfig
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require("lspconfig").lua_ls.setup {
	capabilities = capabilities
}
