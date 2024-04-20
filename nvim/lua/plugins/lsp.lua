return {
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    config = function()
      local lsp_zero = require('lsp-zero')

      lsp_zero.extend_lspconfig()

      lsp_zero.on_attach(function(client, bufnr)
        -- see :help lsp-zero-keybindings
        -- to learn the available actions
        lsp_zero.default_keymaps({ buffer = bufnr })

        vim.keymap.set('n', 'gr', '<cmd>FzfLua lsp_references<cr>', { buffer = bufnr })
        vim.keymap.set('n', 'gd', '<cmd>FzfLua lsp_definitions<cr>', { buffer = bufnr })
        vim.keymap.set('n', 'gi', '<cmd>FzfLua lsp_implementations<cr>', { buffer = bufnr })
        vim.keymap.set('n', '<C-p>', '<cmd>FzfLua lsp_document_symbols<cr>', { buffer = bufnr })

        -- lsp debug logs, switch to "debug" to enable
        vim.lsp.set_log_level("off")
      end)
      require('mason').setup({})
      require('mason-lspconfig').setup({
        ensure_installed = {
          'gopls',
          'golangci_lint_ls',
          'terraformls',
          'lua_ls',
          'jsonnet_ls',
          'tsserver',
          'docker_compose_language_service',
          'dockerls',
          'yamlls',
        },
        handlers = {
          lsp_zero.default_setup,
          gopls = function()
            require('lspconfig').gopls.setup({
              settings = {
                gopls = {
                  completeUnimported = true,
                  usePlaceholders = true,
                  analyses = {
                    unusedparams = true,
                  },
                },
              },
            })
          end
        },
      })
    end
  },
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'L3MON4D3/LuaSnip' },
  {
    'hrsh7th/nvim-cmp',

    config = function()
      -- require('luasnip.loaders.from_vscode').lazy_load()
      local cmp = require('cmp')
      local luasnip = require('luasnip')

      local select_opts = { behavior = cmp.SelectBehavior.Select }

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end
        },
        sources = {
          { name = 'path' },
          { name = 'nvim_lsp', keyword_length = 1 },
          { name = 'buffer',   keyword_length = 3 },
          { name = 'luasnip',  keyword_length = 3 },
        },
        mapping = {
          ['<Up>'] = cmp.mapping.select_prev_item(select_opts),
          ['<Down>'] = cmp.mapping.select_next_item(select_opts),

          ['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
          ['<C-n>'] = cmp.mapping.select_next_item(select_opts),

          ['<C-u>'] = cmp.mapping.scroll_docs(-4),
          ['<C-d>'] = cmp.mapping.scroll_docs(4),

          ['<C-e>'] = cmp.mapping.abort(),
          ['<C-y>'] = cmp.mapping.confirm({ select = true }),
          ["<CR>"] = cmp.mapping.confirm({ select = false }),

          ['<C-f>'] = cmp.mapping(function(fallback)
            if luasnip.jumpable(1) then
              luasnip.jump(1)
            else
              fallback()
            end
          end, { 'i', 's' }),

          ['<C-b>'] = cmp.mapping(function(fallback)
            if luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { 'i', 's' }),

          ['<Tab>'] = cmp.mapping(function(fallback)
            local col = vim.fn.col('.') - 1

            if cmp.visible() then
              cmp.select_next_item(select_opts)
            elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
              fallback()
            else
              cmp.complete()
            end
          end, { 'i', 's' }),

          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item(select_opts)
            else
              fallback()
            end
          end, { 'i', 's' }),
        },
        window = {
          documentation = cmp.config.window.bordered()
        },
        formatting = {
          format = function(entry, item)
            local lsp_symbols = {
              Text = "   (Text) ",
              Method = "   (Method)",
              Function = "   (Function)",
              Constructor = "   (Constructor)",
              Field = " ﴲ  (Field)",
              Variable = "[] (Variable)",
              Class = "   (Class)",
              Interface = " ﰮ  (Interface)",
              Module = "   (Module)",
              Property = " 襁 (Property)",
              Unit = "   (Unit)",
              Value = "   (Value)",
              Enum = " 練 (Enum)",
              Keyword = "   (Keyword)",
              Snippet = "   (Snippet)",
              Color = "   (Color)",
              File = "   (File)",
              Reference = "   (Reference)",
              Folder = "   (Folder)",
              EnumMember = "   (EnumMember)",
              Constant = " ﲀ  (Constant)",
              Struct = " ﳤ  (Struct)",
              Event = "   (Event)",
              Operator = "   (Operator)",
              TypeParameter = "   (TypeParameter)",
            }
            item.kind = lsp_symbols[item.kind]
            item.menu = ({
              buffer = "[Buffer]",
              nvim_lsp = "[LSP]",
              luasnip = "[Snippet]",
              neorg = "[Neorg]",
            })[entry.source.name]

            return item
          end,
        },
      })
    end
  },
}
