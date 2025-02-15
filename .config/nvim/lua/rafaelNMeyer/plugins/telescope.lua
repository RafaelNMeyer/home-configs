return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', function()
      local contains_git = (#vim.fs.find(
        { '.git' }, { path = '.', upward = true }) ~= 0)

      if contains_git then
        return builtin.git_files()
      end

      return builtin.find_files({ hidden = true, no_ignore = true })
    end, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
  end
}
