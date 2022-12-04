--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
-- general
-- lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "tokyonight"

lvim.leader = "space"
-- add your own keymapping
-- lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
--vim.opt.timeoutlen = 1000
vim.opt.showmode = true
vim.opt.relativenumber = true
vim.opt.hlsearch = true
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.list = false
vim.opt.inccommand = "split"
vim.opt.scrolloff = 0
vim.opt.smartindent = false
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false
vim.opt.shiftround = true
vim.opt.guifont = "FiraCode Nerd Font:h12"
vim.opt.cmdheight = 1
vim.opt.updatetime = 50

lvim.transparent_window = true

lvim.line_wrap_cursor_movement = false
lvim.builtin.alpha.active = false
lvim.builtin.lir.active = false
lvim.builtin.comment.active = true
lvim.builtin.terminal.active = true
lvim.builtin.project.active = true
lvim.builtin.indentlines.active = false
lvim.builtin.treesitter.ignore_install = { "kotlin" }
lvim.builtin.treesitter.ensure_installed = { "ruby" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.nvimtree.setup.open_on_setup = false
lvim.builtin.treesitter.highlight.additional_vim_regex_highlighting = false
lvim.builtin.treesitter.playground.enable = true
-- lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
-- lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.lsp.document_highlight = true

lvim.lsp.diagnostics.virtual_text = true

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true


-- Plugins
-- =====================================
require("user.plugins").setup()

-- Keybindings
-- =====================================
require("user.keybindings").setup()

-- WhichKey bindings
-- =====================================
-- require("user.whichkey").setup()
