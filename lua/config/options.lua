-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.relativenumber = false
vim.cmd([[highlight link @neorg.links.file @neorg.links.location.heading.2]])

vim.g.maplocalleader = ";"
vim.cmd(
  [[nnoremap <leader>p :lua require("nabla").popup()<CR>" Customize with popup({border = ...})  : `single` (default), `double`, `rounded`]]
)

local opts = { noremap = true, silent = false }

-- Create a new note after asking for its title.
vim.api.nvim_set_keymap("n", "<leader>zn", "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", opts)

-- Insert link to note
vim.api.nvim_set_keymap("n", "<leader>zl", "<Cmd>ZkInsertLink<CR>", opts)

-- Open notes.
vim.api.nvim_set_keymap("n", "<leader>zo", "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", opts)

-- Open notes associated with the selected tags.
vim.api.nvim_set_keymap("n", "<leader>zt", "<Cmd>ZkTags<CR>", opts)

-- Search for the notes matching a given query.
vim.api.nvim_set_keymap(
  "n",
  "<leader>zg",
  ":lua require('telescope.builtin').live_grep({prompt_title='Find notes', search_dirs={'~/zk'}})<CR>",
  opts
)
-- Search for the notes matching the current visual selection.
vim.api.nvim_set_keymap("v", "<leader>zf", ":'<,'>ZkMatch<CR>", opts)
