-- NOTE: make sure jq is installed
-- sudo apt install jq
return {
  "mistweaverco/kulala.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  config = function()
    require("kulala").setup({
      result = {
        format = "json",
        show_headers = true,
      },
      opts = {
        window = {
          position = "right",
          width = 30,
          height = 20,
        },
      },
    })
    vim.filetype.add({
      extension = {
        ["http"] = "http",
      },
    })
  end,
}

-- return {
--   "mistweaverco/kulala.nvim",
--   dependencies = { "nvim-lua/plenary.nvim" },
--   opts = {},
--   config = function()
--     require("kulala").setup({
--       -- Default settings; adjust as needed
--       result = {
--         format = "json", -- Automatically formats JSON responses
--         show_headers = true, -- Show headers in the response pane
--       },
--       opts = {
--         window = {
--           position = "right", -- or "bottom"
--           width = 50, -- Adjust to your preference
--           height = 20,
--         },
--       },
--     })
--
--     -- Map <leader>rr to run the request under the cursor
--     -- vim.api.nvim_set_keymap(
--     --   "n",
--     --   "<leader>rr",
--     --   "<cmd>lua require('kulala').run()<CR>",
--     --   { noremap = true, silent = true, desc = "Run Request" }
--     -- )
--     vim.filetype.add({
--       extension = {
--         ["http"] = "http",
--       },
--     })
--     -- ✨ Syntax highlighting for .http files
--     --     vim.cmd([[
--     --   augroup KulalaSyntax
--     --     autocmd!
--     --     autocmd FileType http syntax match KulalaVariable "{{[^}]*}}"
--     --     autocmd FileType http syntax match KulalaHeaderKey "^\s*\zs\w\+\ze:"
--     --     autocmd FileType http syntax match KulalaJsonKey '"\zs[^"]\+\ze"\s*:'
--     --     autocmd FileType http syntax match KulalaJsonStringValue /:\s*"\zs[^"]\+\ze"
--     --     autocmd FileType http syntax match KulalaJsonNumberValue /:\s*\zs\d\+\ze[,\}]/
--     --   augroup END
--     -- ]])
--     --
--     --     -- Highlight `{{VAR}}`
--     --     vim.api.nvim_set_hl(0, "KulalaVariable", {
--     --       fg = "#FF966C", -- peach (Catppuccin)
--     --       bold = true,
--     --     })
--     --
--     --     -- Highlight keys like `Content-Type`
--     --     vim.api.nvim_set_hl(0, "KulalaHeaderKey", {
--     --       fg = "#4bccb6", -- green (Catppuccin)
--     --       bold = true,
--     --     })
--     --     vim.api.nvim_set_hl(0, "KulalaJsonKey", {
--     --       fg = "#4bccb6", -- green (or your preferred color)
--     --       bold = true,
--     --     })
--     --     vim.api.nvim_set_hl(0, "KulalaJsonStringValue", {
--     --       fg = "#4bccb6", -- green
--     --       bold = true,
--     --     })
--     --     vim.api.nvim_set_hl(0, "KulalaJsonConstantValue", {
--     --       fg = "#FF966C",
--     --       bold = true,
--     --     })
--     --     vim.api.nvim_set_hl(0, "KulalaHeaderValue", {
--     --       fg = "#4bccb6", -- green
--     --       bold = true,
--     --     })
--     --
--     --     vim.api.nvim_set_hl(0, "KulalaJsonStringValue", {
--     --       fg = "#4bccb6", -- green
--     --       bold = true,
--     --     })
--   end,
-- }
