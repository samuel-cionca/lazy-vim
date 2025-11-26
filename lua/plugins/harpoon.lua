return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local harpoon = require("harpoon")

    -- dynamic menu sizing
    local screen_width = vim.api.nvim_get_option("columns")
    local screen_height = vim.api.nvim_get_option("lines")
    local width_percentage = 0.47
    local height_percentage = 0.3

    harpoon:setup({
      menu = {
        width = math.floor(screen_width * width_percentage),
        height = math.floor(screen_height * height_percentage),
      },
    })
  end,

  keys = {
    -- add file
    {
      "<leader>a",
      function()
        require("harpoon"):list():add()
      end,
      desc = "Mark file with harpoon",
    },

    -- quick menu
    {
      "<C-e>",
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = "Show harpoon marks",
    },

    -- navigation (prev/next)
    {
      "<leader>hn",
      function()
        require("harpoon"):list():next()
      end,
      desc = "Harpoon next",
    },
    {
      "<leader>hp",
      function()
        require("harpoon"):list():prev()
      end,
      desc = "Harpoon previous",
    },

    -- direct slot selects (correct indices!)
    {
      "<leader>1",
      function()
        require("harpoon"):list():select(1)
      end,
      desc = "harpoon 1",
    },
    {
      "<leader>2",
      function()
        require("harpoon"):list():select(2)
      end,
      desc = "harpoon 2",
    },
    {
      "<leader>3",
      function()
        require("harpoon"):list():select(3)
      end,
      desc = "harpoon 3",
    },
    {
      "<leader>4",
      function()
        require("harpoon"):list():select(4)
      end,
      desc = "harpoon 4",
    },
    {
      "<leader>5",
      function()
        require("harpoon"):list():select(5)
      end,
      desc = "harpoon 5",
    },
    {
      "<leader>6",
      function()
        require("harpoon"):list():select(6)
      end,
      desc = "harpoon 6",
    },
  },
}
