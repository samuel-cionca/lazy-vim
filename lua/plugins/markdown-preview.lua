return {
  -- Install markdown preview, use npx if available.
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = function(plugin)
    if vim.fn.executable("npx") then
      vim.cmd("!cd " .. plugin.dir .. " && cd app && npx --yes yarn install")
    else
      vim.cmd([[Lazy load markdown-preview.nvim]])
      vim.fn["mkdp#util#install"]()
    end
  end,
  init = function()
    if vim.fn.executable("npx") then
      vim.g.mkdp_filetypes = { "markdown" }
      -- C:\Program Files\BraveSoftware\Brave-Browser\Application
      -- vim.g.mkdp_browser = "/mnt/c/Program\\ Files/Firefox\\ Developer\\ Edition/firefox.exe"
      vim.g.mkdp_browser = "C:\\Program Files\\Firefox Developer Edition\\firefox.exe"
      -- vim.g.mkdp_browserfunc = 'system("xdg-open http://localhost:8888")'
      -- Optional: Set port explicitly
      -- vim.g.mkdp_port = "8888"
    end
  end,
}
