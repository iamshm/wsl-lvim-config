lvim.builtin.project.patterns = { ".git" }
lvim.builtin.project.detection_methods = { "pattern" }
-- general
lvim.log.level = "warn"
lvim.format_on_save = true

lvim.transparent_window=true
vim.g.gruvbox_material_pallete = "original"
vim.g.gruvbox_material_ui_contrast = "high"
-- Additional Plugins
lvim.plugins = {
    {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "*" }, {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end,
},
  {'mattn/emmet-vim'},
  {"sainnhe/sonokai"},
  {"projekt0n/github-nvim-theme"},
  {"sainnhe/gruvbox-material"},
  {"p00f/nvim-ts-rainbow",},
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },{
  "karb94/neoscroll.nvim",
  event = "WinScrolled",
  config = function()
  require('neoscroll').setup({
        -- All these keys will be mapped to their corresponding default scrolling animation
        mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
        '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
        hide_cursor = true,          -- Hide cursor while scrolling
        stop_eof = true,             -- Stop at <EOF> when scrolling downwards
        use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
        respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil,        -- Default easing function
        pre_hook = nil,              -- Function to run before the scrolling animation starts
        post_hook = nil,              -- Function to run after the scrolling animation ends
        })
  end
},
}

vim.g.user_emmet_leader_key = "<C-z>"
vim.g.user_emmer_settings = {
  ['javascript'] = {
    extends = 'jsx'
  },
}

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
vim.cmd[[vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>]]
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = ""
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

lvim.colorscheme = "gruvbox-material"
-- lvim.colorscheme = "github_dark_default"


local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup({{exe = "prettier", filetypes = {"typescript" , "typescriptreact","javascript","javascriptreact" ,"html" ,"css" , "json" , "markdown"} }})
local linters = require "lvim.lsp.null-ls.linters"
linters.setup({{exe = "eslint_d", filetypes = { "typescript" , "typescriptreact","javascript","javascriptreact" } }})


local nls_ok, nls = pcall(require, "null-ls")
if nls_ok then
  nls.config {
    debounce = 150,
    save_after_format = false,
    sources = {
      nls.builtins.diagnostics.eslint_d,
      nls.builtins.code_actions.eslint_d,
    }
  }
end
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
