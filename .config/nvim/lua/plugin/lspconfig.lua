return {
	'neovim/nvim-lspconfig',
	config = function()
		-- local capabilities = require("cmp_nvim_lsp").default_capabilities()
		-- local lspconfig = require 'lspconfig'


		vim.api.nvim_create_autocmd('LspAttach', {
			group = vim.api.nvim_create_augroup('MyLspAttach', { clear = true }),
			callback = function(event)
				local map = function(keys, func, desc)
					vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
				end
				map('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinitions')
				map('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
				map('gi', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
				map('D', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinition')
				map('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
				map('K', vim.lsp.buf.hover, 'Hover Documentation')
				map('<leader>rn', vim.lsp.buf.rename, '[R]e[N]ame')
				map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
				map('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
				map('<leader>fo', function() vim.lsp.buf.format { async = true } end, '[F][O]rmat')
				map('<leader>e', function() vim.diagnostic.open_float(0, {scope="line"}) end, '[E]rror (open_float)')
			end,
		})
	end
}
