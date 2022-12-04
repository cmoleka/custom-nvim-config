local M = {}

M.setup = function()
  local configs = require('user.plugin-configs')
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
    {
      "sindrets/diffview.nvim",
      cmd = { "DiffviewOpen", "DiffViewClose", "DiffviewToggleFiles", "DiffviewFocusFiles", "DiffviewRefresh" },
      config = configs.diffview,
    },
    {
      "nvim-treesitter/playground",
      config = function()
        require "nvim-treesitter.configs".setup {
          playground = {
            enable = true,
            disable = {},
            updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
            persist_queries = false, -- Whether the query persists across vim sessions
            keybindings = {
              toggle_query_editor = 'o',
              toggle_hl_groups = 'i',
              toggle_injected_languages = 't',
              toggle_anonymous_nodes = 'a',
              toggle_language_display = 'I',
              focus_language = 'f',
              unfocus_language = 'F',
              update = 'R',
              goto_node = '<cr>',
              show_help = '?',
            },
          }
        }
      end,
    },
  }

end

return M
