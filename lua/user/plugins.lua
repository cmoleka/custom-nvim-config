local M = {}

M.setup = function()
  local configs = require('user.plugin-configs')
  lvim.plugins = {
    {
      "mg979/vim-visual-multi",
      config = function()
        vim.cmd([[
                let g:VM_maps = {}
                let g:VM_mouse_mappings = 1
                ]])
      end,
    },
    {
      "zbirenbaum/copilot.lua",
      cmd = "Copilot",
      event = { "VimEnter" },
      config = function()
        require("user.copilot")
      end,
    },
    {
      "zbirenbaum/copilot-cmp",
      after = { "copilot.lua" },
      config = function()
        require("copilot_cmp").setup()
      end,
    },
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
    {
      "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
      config = function()
        require("lsp_lines").setup()
      end,
    },
    {
      "windwp/nvim-ts-autotag",
      config = function()
        require("nvim-ts-autotag").setup()
      end
    },
    {
      "windwp/nvim-autopairs",
      config = function()
        require("nvim-autopairs").setup {
          disable_filetype = { "TelescopePrompt", "vim" }
        }
      end
    },
    {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        local status, null_ls = pcall(require, "null-ls")
        if (not status) then return end
        null_ls.setup()
      end
    },
    {
      "MunifTanjim/prettier.nvim",
      config = function()
        local status, prettier = pcall(require, "prettier")
        if (not status) then return end
        prettier.setup {
          bin = 'prettierd',
          filetypes = {
            "css",
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "json",
            "scss",
            "less"
          }
        }
      end
    },
    {
      "lewis6991/gitsigns.nvim",
    },
  }

end

return M
