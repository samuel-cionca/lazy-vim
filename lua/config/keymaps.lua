-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
  "n", --normal mode
  "<leader>sx",
  require("telescope.builtin").resume, --resume the last telescope picker that happend to be oppend
  { noremap = true, silent = true, desc = "Resume" } -- make it not recursive and silent
)
-- vim.keymap.set("n", "<leader>p", function()
--   vim.cmd("setlocal paste! | setlocal paste?")
-- end, { silent = true })

-- prime start
-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- prime end

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
  require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
  require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>")
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)
-- NvimTreeToggle<CR>
-- vim.keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<C-l>", ":LspRestart<CR>")

-- barbar.nvim #start
-- local map = vim.api.nvim_set_keymap
-- local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Move to previous/next
vim.keymap.set("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
vim.keymap.set("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
-- Re-order to previous/next
vim.keymap.set("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
vim.keymap.set("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
-- Goto buffer in position...
vim.keymap.set("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
vim.keymap.set("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
vim.keymap.set("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
vim.keymap.set("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
vim.keymap.set("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
vim.keymap.set("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
vim.keymap.set("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
vim.keymap.set("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
vim.keymap.set("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
vim.keymap.set("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)
-- Pin/unpin buffer
vim.keymap.set("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
vim.keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
vim.keymap.set("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)
-- Sort automatically by...
vim.keymap.set("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
vim.keymap.set("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
vim.keymap.set("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
vim.keymap.set("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
-- barbar.nvim #END

-- Sam's Keymaps

vim.api.nvim_set_keymap(
  "n",
  "<leader>do",
  "<cmd>lua vim.diagnostic.open_float()<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<CR>", { noremap = true, silent = true })
-- The following command requires plug-ins "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", and optionally "kyazdani42/nvim-web-devicons" for icon support
-- telescope keybindings
vim.api.nvim_set_keymap("n", "<leader>dd", "<cmd>Telescope diagnostics<CR>", { noremap = true, silent = true })
-- tmux
vim.keymap.set("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", { silent = true })
vim.keymap.set("n", "<C-\\>", "<Cmd>NvimTmuxNavigateLastActive<CR>", { silent = true })
vim.keymap.set("n", "<C-Space>", "<Cmd>NvimTmuxNavigateNavigateNext<CR>", { silent = true })

-- markdown-preview
vim.keymap.set("n", "<C-s>", "<Cmd>MarkdownPreview<CR>", { silent = true })
-- "<M" - The meta key is another name for the alt key. This is akin to how the Windows key is called the super key in the Linux world.
vim.keymap.set("n", "<M-s>", "<Cmd>MarkdownPreviewStop<CR>", { silent = true })
vim.keymap.set("n", "<C-p>", "<Cmd>MarkdownPreviewToogle<CR>", { silent = true })

-- Replace harpoon with telescope for search/preview window
-- Enable line numbers in Telescope preview window
vim.cmd("autocmd User TelescopePreviewerLoaded setlocal number")
-- Live Grep (Root Dir) - No input prompt, starts searching instantly
vim.keymap.set("n", "<leader>sg", function()
  require("telescope.builtin").live_grep({ cwd = vim.loop.cwd() })
end, { noremap = true, silent = true, desc = "Live Grep (Root Dir)" })

-- Live Grep (cwd) - No input prompt, searches in current working directory
vim.keymap.set("n", "<leader>SG", function()
  require("telescope.builtin").live_grep({ cwd = vim.fn.getcwd() })
end, { noremap = true, silent = true, desc = "Live Grep (cwd)" })

-- Find Files (Root Dir)
vim.keymap.set("n", "<leader>ff", function()
  require("telescope.builtin").find_files({ cwd = vim.loop.cwd() })
end, { noremap = true, silent = true, desc = "Find Files (Root Dir)" })

-- Find Files (cwd)
vim.keymap.set("n", "<leader>fF", function()
  require("telescope.builtin").find_files({ cwd = vim.fn.getcwd() })
end, { noremap = true, silent = true, desc = "Find Files (cwd)" })

-- Find Current File
vim.keymap.set("n", "<leader>fc", function()
  require("telescope.builtin").find_files({ default_text = vim.fn.expand("%:t") })
end, { noremap = true, silent = true, desc = "Find Current File" })

-- Find All Files (including hidden)
vim.keymap.set("n", "<leader>fa", function()
  require("telescope.builtin").find_files({ hidden = true })
end, { noremap = true, silent = true, desc = "Find All Files" })

-- Recent Files (Root Dir) - Lists recently opened files globally
vim.keymap.set("n", "<leader>fr", function()
  require("telescope.builtin").oldfiles({ cwd = vim.loop.cwd() })
end, { noremap = true, silent = true, desc = "Recent (Root Dir)" })

-- Recent Files (cwd) - Lists recently opened files in current directory
vim.keymap.set("n", "<leader>fR", function()
  require("telescope.builtin").oldfiles({ cwd = vim.fn.getcwd() })
end, { noremap = true, silent = true, desc = "Recent (cwd)" })

-- Keybinding to Source Current File Instantly
vim.keymap.set("n", "<leader>fs", function()
  -- Get the full file path of the current buffer
  local filepath = vim.fn.expand("%:p")
  -- Open command-line window and prefill with :so <file>
  vim.api.nvim_feedkeys(":so " .. filepath, "n", true)
end, { noremap = true, silent = true, desc = "Source Current File" })

-- rest.nvim 
-- vim.keymap.set("n", "<leader>rr", "<cmd>Rest run<CR>", { silent = true }
vim.keymap.set("n", "<leader>ro", function()
  local path = vim.fn.expand("~/.cache/nvim/kulala/body.txt")
  if vim.fn.filereadable(path) == 1 then
    vim.cmd("edit " .. path)
    vim.bo.filetype = "json" -- auto-set JSON so syntax highlighting works
    pcall(function()
      vim.cmd("%!jq .")
    end) -- pretty-print (only if jq installed)
  else
    print("No Kulala response file found")
  end
end, { noremap = true, silent = false, desc = "Open last Kulala response" })
vim.keymap.set("n", "<leader>rr", function()
  require("kulala").run()
end, { noremap = true, silent = false, desc = "Run request & open response" })

vim.keymap.set("n", "P", function()
  vim.cmd("put")
end)
-- vim.keymap.set("n", "<space>S", function()
--   vim.fn.execute("z=")
-- end, { desc = "Show spelling suggestions" })
