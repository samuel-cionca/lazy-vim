return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = { "nvim-lua/plenary.nvim" },

  opts = function()
    -- Detect WSL by checking `WSL_DISTRO_NAME` or /proc/version
    local is_wsl = vim.fn.has("wsl") == 1 or string.match(vim.fn.readfile("/proc/version")[1] or "", "Microsoft")

    -- Define paths
    local win_personal = "/mnt/c/Users/SamuelCionca/Dropbox/ObsidianVault/"
    local win_work = "/mnt/c/Users/SamuelCionca/Dropbox/ObsidianVault/work/"

    local linux_personal = "/home/osic/Dropbox/ObsidianVault/"
    local linux_work = "/home/osic/Dropbox/ObsidianVault/work/"

    local personal_path = is_wsl and win_personal or linux_personal
    local work_path = is_wsl and win_work or linux_work

    return {
      workspaces = {
        {
          name = "personal",
          path = personal_path,
          overrides = { notes_subdir = "notes" },
        },
        {
          name = "work",
          path = work_path,
          overrides = { notes_subdir = "../notes" },
        },
      },
    }
  end,
}
