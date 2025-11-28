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
