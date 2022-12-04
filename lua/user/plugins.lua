local M = {}

M.setup = function()
  -- local configs = require('user.plugin-configs')
  lvim.plugins = {
    { "github/copilot.vim" },
    {
      "tpope/vim-surround",
    },
    {
      "iamcco/markdown-preview.nvim",
      ft = "markdown",
      run = ":call mkdp#util#install()",
      config = function()
        vim.g.mkdp_auto_start = 1
      end,
    },
    {
      "tpope/vim-commentary",
    },
  }

end

return M
