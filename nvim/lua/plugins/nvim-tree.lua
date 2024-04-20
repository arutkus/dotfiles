return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    -- disable netrw at the very start of your init.lua (strongly advised)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- set termguicolors to enable highlight groups
    vim.opt.termguicolors = true

    -- Set up nvim-tree plugin with custom key mappings
    require('nvim-tree').setup({
      view = {
        width = 40,
      },
      actions = {
        open_file = {
          resize_window = false
        }
      }
    })

    vim.api.nvim_set_keymap('n', '<C-\\>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
  end
}
