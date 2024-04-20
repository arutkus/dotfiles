return {
  'akinsho/nvim-bufferline.lua',
  lazy = false,
  config = function()
    require('bufferline').setup({
      options = {
        mode = 'buffers',
        numbers = 'ordinal',
        separator_style = {"|", "|"},
        diagnostics = 'nvim_lsp',
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = false,
        enforce_regular_tabs = false,
        sort_by = 'insert_at_end',
        offsets = {
          {
            filetype = 'NvimTree',
            highlight = "Directory",
            separator = true,
            text = "ls"
          },
        },
      },
    })

    vim.api.nvim_set_keymap('n', '<leader>1', '<cmd>lua require("bufferline").go_to_buffer(1, true)<cr>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>2', '<cmd>lua require("bufferline").go_to_buffer(2, true)<cr>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>3', '<cmd>lua require("bufferline").go_to_buffer(3, true)<cr>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>4', '<cmd>lua require("bufferline").go_to_buffer(4, true)<cr>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>5', '<cmd>lua require("bufferline").go_to_buffer(5, true)<cr>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>6', '<cmd>lua require("bufferline").go_to_buffer(6, true)<cr>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>7', '<cmd>lua require("bufferline").go_to_buffer(7, true)<cr>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>8', '<cmd>lua require("bufferline").go_to_buffer(8, true)<cr>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>9', '<cmd>lua require("bufferline").go_to_buffer(9, true)<cr>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>$', '<cmd>lua require("bufferline").go_to_buffer(-1, true)<cr>', { noremap = true, silent = true })

  end
}

