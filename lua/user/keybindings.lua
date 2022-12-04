local M = {}

M.setup = function()
  -- Key Mappings
  lvim.leader = "space"
  vim.api.nvim_set_keymap("i", "jk", "<ESC>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("i", "kj", "<ESC>", { noremap = true, silent = true })
  lvim.keys.insert_mode["k,j"] = "<ESC>"
  lvim.keys.insert_mode["j,k"] = "<ESC>"
  lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
  -- Navigate to next buffer
  vim.api.nvim_set_keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
  lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
  lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
  -- Editing Keymaps
  -- enter space before cursor
  vim.api.nvim_set_keymap("n", "sb", "i <ESC>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("n", "sa", "a <ESC>", { noremap = true, silent = true })
  -- -- Moving a line up or down
  lvim.keys.normal_mode["<A-Up>"] = ":m .-2<CR>=="
  lvim.keys.normal_mode["<A-Down>"] = ":m .+1<CR>=="
end

return M
