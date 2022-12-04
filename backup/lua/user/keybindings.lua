local M = {}

M.setup = function()
  -- ========================================
  -- keymappings

  -- -- Navigate to next buffer
  vim.api.nvim_set_keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
  lvim.keys.normal_mode["<S-h>"] = ":BufferLineCycleNext<CR>"
  lvim.keys.normal_mode["<S-l>"] = ":BufferLineCyclePrev<CR>"
  -- lvim.keys.normal_mode["<A-Up>"] = ":lua require('harpoon.ui').nav_prev()<CR>"
  -- lvim.keys.normal_mode["<A-Down>"] = ":lua require('harpoon.ui').nav_next()<CR>"
  -- -- Exiting insert mode with jk
  lvim.keys.insert_mode["jk"] = "<ESC>"
  lvim.keys.insert_mode["kj"] = "<ESC>"
  -- -- Moving a line up or down
  lvim.keys.normal_mode["<A-Up>"] = ":m .-2<CR>=="
  lvim.keys.normal_mode["<A-Down>"] = ":m .+1<CR>=="

end

return M
