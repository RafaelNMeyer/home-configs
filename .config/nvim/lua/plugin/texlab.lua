return   {
	'f3fora/nvim-texlabconfig',
	config = function()
		require('texlabconfig').setup({
			{
				ft = { 'tex', 'bib' },
				build = 'go build -o ~/.local/bin/',
				cache_activate = true,
				cache_filetypes = { 'tex', 'bib' },
				cache_root = vim.fn.stdpath('cache'),
				reverse_search_start_cmd = function()
					return true
				end,
				reverse_search_edit_cmd = vim.cmd.edit,
				reverse_search_end_cmd = function()
					return true
				end,
				file_permission_mode = 438,
			} })
		-- Texlab :TexlabBuild and :TexlabForward
		vim.keymap.set('n', '<leader>lf', '<cmd>TexlabForward<cr>', { silent = true, noremap = true })
		vim.keymap.set('n', '<leader>lb', '<cmd>TexlabBuild<cr>', { silent = true, noremap = true })
	end
}
