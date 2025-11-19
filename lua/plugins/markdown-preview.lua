return {
  -- Install markdown preview, use npx if available.
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = function(plugin)
    if vim.fn.executable("npx") == 1 then
      vim.cmd("!cd " .. plugin.dir .. " && cd app && npx --yes yarn install")
    else
      vim.cmd([[Lazy load markdown-preview.nvim]])
      vim.fn["mkdp#util#install"]()
    end
  end,
  init = function()
    if vim.fn.executable("npx") == 1 then
      vim.g.mkdp_filetypes = { "markdown" }

      -- detect WSL
      local is_wsl = vim.fn.has("wsl") == 1
        or (
          vim.fn.filereadable("/proc/version") == 1
          and string.match(table.concat(vim.fn.readfile("/proc/version"), "\n"), "Microsoft")
        )

      if is_wsl then
        -- Windows
        vim.g.mkdp_browser = "C:\\Program Files\\Firefox Developer Edition\\firefox.exe"
      else
        -- Linux Mint 22
        vim.g.mkdp_browser = "/usr/bin/firefox-devedition"
      end
    end
  end,
}
