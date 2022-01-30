require 'paq-nvim' {

  'savq/paq-nvim';                                          -- package manager itself

  'nvim-lua/plenary.nvim';                                  -- dependancy for a lot of plugins

  'hoob3rt/lualine.nvim';                                   -- statusbar
  'akinsho/nvim-bufferline.lua';                            -- top bufferline

  'neovim/nvim-lspconfig';                                  -- lsp
  'hrsh7th/nvim-cmp';                                       -- completion
  'hrsh7th/cmp-nvim-lsp';                                   -- lsp suppliment
  'saadparwaiz1/cmp_luasnip';                               -- nvim-cmp support
  'L3MON4D3/LuaSnip';                                       -- snippets

  'nvim-treesitter/nvim-treesitter';                        -- treesitter
  'windwp/nvim-ts-autotag';                                 -- autoclose html tags
  'windwp/nvim-autopairs';                                  -- autopairs

  'lewis6991/gitsigns.nvim';                                -- gitsigns

  'kyazdani42/nvim-tree.lua';                               -- tree
  'kyazdani42/nvim-web-devicons';                           -- icons

  'numtostr/FTerm.nvim';                                    -- terminal

  'norcalli/nvim-colorizer.lua';                            -- colorizer

  'ful1e5/onedark.nvim';                                    -- theme

  'lukas-reineke/indent-blankline.nvim';                    -- indentation

  'iamcco/markdown-preview.nvim';                           -- markdown-preview

  'mfussenegger/nvim-dap';                                  -- debugging

  -- language specific plugins
  'simrat39/rust-tools.nvim';                               -- rust
}

require("settings")
require("keybinds")
require("plugins")
require("lsp")
