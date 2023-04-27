local builtin = require("telescope.builtin")
local testing = require("user.testing")

local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>w', ':w<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>li', ':LspInfo<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>ll', ':LspLog<cr>', opts)

vim.api.nvim_set_keymap('n', '<F5>', ':lua print("debug/continue/pause")<cr>', opts)
vim.api.nvim_set_keymap('n', '<F10>', ':lua print("step over")<cr>', opts)
vim.api.nvim_set_keymap('n', '<F11>', ':lua print("step into")<cr>', opts)
vim.api.nvim_set_keymap('n', '<F12>', ':lua print("step out")<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>dr', ':lua print("restart")<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>ds', ':lua print("stop")<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>db', ':lua print("toggle breakpoint")<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>b', ':lua print("build")<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>c', ':lua print("clean")<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>t', ':lua print("test")<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>t', ':lua print("watch")<cr>', opts)
vim.api.nvim_set_keymap('i', 'kj', '<esc>', opts)


-- telescope
vim.keymap.set('n', '<C-p>', function()
    builtin.find_files({hidden=true})
end, opts)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, opts)
vim.keymap.set('n', '<leader>fb', builtin.buffers, opts)
vim.keymap.set('n', '<leader>fh', builtin.help_tags, opts)

vim.keymap.set('n', '<leader>t', ':ToggleTerm<cr>', opts)
vim.keymap.set('t', '<escape>', '<cmd>ToggleTerm<cr>', opts)

vim.keymap.set('v', '<C-f>', '"py/\\V<C-r>p<cr>', opts)
