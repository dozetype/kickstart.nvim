-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

local plugins = {
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional, for icons
    cmd = { "NvimTreeToggle", "NvimTreeFindFile" },   -- lazy load on command
    keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "Toggle File Tree" },
    },
    config = function()
      require("nvim-tree").setup {
        view = {
          width = 30,
          side = "left",
        },
        renderer = {
          icons = {
            show = {
              git = true,
              folder = true,
              file = true,
              folder_arrow = true,
            },
          },
        },
        filters = {
          dotfiles = false,
        },
      }
    end,
  },
  {
    "stevearc/overseer.nvim",
    opts = {},
    keys = {
      { "<leader>tt", "<cmd>OverseerToggle<CR>", desc = "Toggle Tasks" },
      { "<leader>tr", "<cmd>OverseerRun<CR>", desc = "Run Task" },
    },
  }
}

return plugins