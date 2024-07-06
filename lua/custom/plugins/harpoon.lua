return {
  'ThePrimeagen/harpoon',
  event = 'VimEnter', -- (Optional) Load this plugin when Vim starts. Adjust as needed.
  config = function()
    require('harpoon').setup() -- Initialize harpoon
    -- Set up your keymaps for harpoon below
    vim.keymap.set('n', '<leader>a', function()
      require('harpoon.mark').add_file()
    end)
    vim.keymap.set('n', '<C-e>', function()
      require('harpoon.ui').toggle_quick_menu()
    end)
    vim.keymap.set('n', '<C-h>', function()
      require('harpoon.ui').nav_file(1)
    end)
    vim.keymap.set('n', '<C-t>', function()
      require('harpoon.ui').nav_file(2)
    end)
    vim.keymap.set('n', '<C-n>', function()
      require('harpoon.ui').nav_file(3)
    end)
    vim.keymap.set('n', '<C-s>', function()
      require('harpoon.ui').nav_file(4)
    end)
  end,
}
