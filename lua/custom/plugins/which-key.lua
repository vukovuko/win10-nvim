return {
  'folke/which-key.nvim',
  event = 'VeryLazy',

  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    -- Your configuration options can go here
    presets = true, -- Enable the default presets
    -- Configure any other options as needed
  },
  keys = {
    {
      '<leader>?', -- Key sequence to trigger which-key
      function()
        require('which-key').show { global = false }
      end,
      desc = 'Buffer Local Keymaps (which-key)',
    },
    {
      '<leader>c',
      "<cmd>echo '[C]ode'<CR>",
      desc = '[C]ode',
      mode = 'n',
    },
    {
      '<leader>d',
      "<cmd>echo '[D]ocument'<CR>",
      desc = '[D]ocument',
      mode = 'n',
    },
    {
      '<leader>r',
      "<cmd>echo '[R]ename'<CR>",
      desc = '[R]ename',
      mode = 'n',
    },
    {
      '<leader>s',
      "<cmd>echo '[S]earch'<CR>",
      desc = '[S]earch',
      mode = 'n',
    },
    {
      '<leader>w',
      "<cmd>echo '[W]orkspace'<CR>",
      desc = '[W]orkspace',
      mode = 'n',
    },
    {
      '<leader>t',
      "<cmd>echo '[T]oggle'<CR>",
      desc = '[T]oggle',
      mode = 'n',
    },
    {
      '<leader>h',
      "<cmd>echo 'Git [H]unk'<CR>",
      desc = 'Git [H]unk',
      mode = 'n',
    },
  },
}
