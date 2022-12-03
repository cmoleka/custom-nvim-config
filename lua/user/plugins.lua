local M = {}

M.setup = function()
  -- local configs = require('user.plugin-configs')
  lvim.plugins = {
    { "github/copilot.vim" },
    {
      "tpope/vim-surround",

      -- make sure to change the value of `timeoutlen` if it's not triggering correctly, see https://github.com/tpope/vim-surround/issues/117
      -- setup = function()
      --  vim.o.timeoutlen = 500
      -- end
    },
  }

end

return M
