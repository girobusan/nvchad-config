-- fixed by :; me
return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {

  },
  {
    "ahmedkhalf/project.nvim",
    lazy=false,
    config = function()
      require("project_nvim").setup {
        silent_chdir = false,
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

    -- 󰄳  eslint_d (keywords: typescript, javascript)
    -- 󰄳  eslint-lsp (keywords: javascript, typescript)
    -- 󰄳  lua-language-server (keywords: lua)
    -- 󰄳  stylua (keywords: lua, luau)
    -- 󰄳  trivy (keywords: c, c#, c++, dart, docker, elixir, go, helm, java, javascript, php, python, ruby, rust, terraform, typescript)
    -- 󰄳  ts-standard (keywords: typescript)
    -- 󰄳  typescript-language-server (keywords: typescript, javascript)
    -- 󰄳  vtsls (keywords: javascript, typescript)

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server", "stylua",
        "html-lsp", "css-lsp" , "prettier",
        "typescript-language-server",
        "eslint_d" , "eslint_lsp"
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css" , "javascript", "markdown"
      },
    },
  },
}
