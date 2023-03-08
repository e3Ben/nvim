vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('user.options')
require('user.plugins')
require('user.colorscheme')
require('user.lsp')
require('user.nvim-tree')
require('user.telescope')
require('user.comment')
require('user.tree-sitter')
require('user.mappings')
require('user.toggleterm')
require('user.lsp.completion')



-- local opts = { noremap=true, silent=true }
-- vim.keymap.set('i', '<leader>s', function()
-- 	vim.lsp.omnifunc()
-- 	-- vim.lsp.buf.format {
-- 	-- 	formatting_options = {
-- 	-- 		insertSpaces = true,
-- 	-- 		tabSize = 4
-- 	-- 	}
-- 	-- }
-- end, opts)
-- vim.api.nvim_set_keymap('n', '<leader>r', ':source $MYVIMRC<cr>', opts)
--
