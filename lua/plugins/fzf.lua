-- lua/plugins/fzf.lua
return {
  "ibhagwan/fzf-lua",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- optional, but nice
  },
  config = function()
    local fzf = require("fzf-lua")

    fzf.setup({
      -- simple preset, no fancy transform binds
      "default",
      winopts = {
        height = 0.85,
        width = 0.80,
        row = 0.5,
        col = 0.5,
        border = "rounded",
      },
      fzf_opts = {
        -- keep this minimal; if you had global FZF_DEFAULT_OPTS with weird --bind,
        -- we *don't* repeat it here
        ["--ansi"] = "",
        ["--info"] = "inline",
      },
    })

    -- keymaps (adjust to your liking)
    local map = vim.keymap.set
    local opts = { noremap = true, silent = true }

    map("n", "<leader>ff", fzf.files, { desc = "Find files (fzf-lua)" })
    map("n", "<leader>fg", fzf.live_grep, { desc = "Live grep (fzf-lua)" })
    map("n", "<leader>fb", fzf.buffers, { desc = "Buffers (fzf-lua)" })
    map("n", "<leader>fh", fzf.help_tags, { desc = "Help tags (fzf-lua)" })
  end,
}
