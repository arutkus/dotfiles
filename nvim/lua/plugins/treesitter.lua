return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  config = function()
    -- Disable vim regex highlighting before setting up treesitter
    vim.g.skip_ts_context_commentstring_module = true
    
    require('nvim-treesitter.configs').setup {
      ensure_installed = { 
        "c", "lua", "vim", "vimdoc", "query", "javascript", "typescript", 
        "go", "terraform", "make", "cmake", "json", "yaml", "bash", 
        "markdown", "markdown_inline", "regex", "dockerfile"
      },

      sync_install = false,
      auto_install = true,
      
      -- Prevent treesitter from breaking when parsers fail
      ignore_install = {},

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        -- Disable slow treesitter highlight for large files
        disable = function(lang, buf)
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
      },

      indent = {
        enable = true,
        -- Disable for problematic languages
        disable = { "python", "yaml" },
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = "grc",
          node_decremental = "grm",
        },
      },

      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
          },
        },
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            ["]m"] = "@function.outer",
          },
          goto_previous_start = {
            ["[m"] = "@function.outer",
          },
        },
      },
    }

    -- Folding configuration
    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
    vim.opt.foldenable = false -- Start with folds open
  end
}
