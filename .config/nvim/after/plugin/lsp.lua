local lsp_zero = require('lsp-zero')


 require('lspconfig').intelephense.setup({
    root_dir = function ()
	return vim.loop.cwd()
    end,
})
