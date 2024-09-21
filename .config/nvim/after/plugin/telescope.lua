require('telescope').setup {
  defaults = {
    prompt_prefix = "🔍 ",
    selection_caret = "> ",
    path_display = { "truncate" },
  },
}


local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
