return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     require("nvchad.configs.lspconfig").defaults()
  --     require "configs.lspconfig"
  --   end,
  -- },
  --
  -- {
  -- 	"williamboman/mason.nvim",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"lua-language-server", "stylua",
  -- 			"html-lsp", "css-lsp" , "prettier"
  -- 		},
  -- 	},
  -- },
  --
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
  {
	  "epwalsh/obsidian.nvim",
	  version = "*",  -- recommended, use latest release instead of latest commit
	  lazy = true,

	  ft = "markdown",
	  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
	  -- event = {
	  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
	  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
	  --   "BufReadPre path/to/my-vault/**.md",
	  --   "BufNewFile path/to/my-vault/**.md",
	  -- },
	  dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",

		-- see below for full list of optional dependencies 👇
	  },
	  opts = {
		workspaces = {
		  {
			name = "work",
			path = "~/Documents/sync/Notes",
		  },
		},

		-- see below for full list of options 👇
	  },
	}
}
