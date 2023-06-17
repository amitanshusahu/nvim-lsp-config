require("mason").setup()
require("mason-lspconfig").setup()

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require("lspconfig").lua_ls.setup {}
-- require("lspconfig").rust_analyzer.setup {}
-- ...
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "tsserver" },
}

-- Setting up servers after mason-lspconfig
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- lua setup
require("lspconfig").lua_ls.setup {
	capabilities = capabilities
}

--typescript setup
require("lspconfig").tsserver.setup {
  capabilities = capabilities
}

-- emmet
require("lspconfig").emmet_ls.setup { 
    capabilities = capabilities
}

-- css
require("lspconfig").cssls.setup{
    capabilities = capabilities
}

-- cssmodules
require("lspconfig").cssmodules_ls.setup {
    capabilities = capabilities
}
