return {
  { 'mfussenegger/nvim-dap',
    config = function()
      local dap = require("dap")


      local widgets = require("dap.ui.widgets")
      local scopes_sidebar = widgets.sidebar(widgets.scopes, { number = true, wrap = false })
      vim.keymap.set("n", "<leader>ds", scopes_sidebar.toggle, { desc = 'DAP: Toggle "scopes" in sidebar' })

      vim.api.nvim_set_keymap('n', '<leader>db', '<cmd> DapToggleBreakpoint <cr>', { noremap = true, silent = true })
    end,
  },
  { 'leoluz/nvim-dap-go',
    config = function()
      require('dap-go').setup()
    end
  },
}
