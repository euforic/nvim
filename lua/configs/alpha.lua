local M = {}

function M.config()
  local present, alpha = pcall(require, "alpha")
  if present then
    local utils = require "core.utils"
    local plugins_count = vim.fn.len(vim.fn.globpath(vim.fn.stdpath "data" .. "/site/pack/packer/start", "*", 0, 1))
    alpha.setup(utils.user_plugin_opts("plugins.alpha", {
      layout = {
        { type = "padding", val = 2 },
        {
          type = "text",
          val = utils.user_plugin_opts("header", {
            " ",
            " ",
            " ",
            " ",
            "               ___           _     ",
            "              / _|          (_)    ",
            "     ___ _   _| |_ ___  _ __ _  ___",
            "    / _ \\ | | |  _/ _ \\| '__| |/ __|",
            "   |  __/ |_| | || (_) | |  | | (__ ",
            "    \\___|\\__,_|_| \\___/|_|  |_|\\___|",
            "    ",
            "    ███    ██ ██    ██ ██ ███    ███",
            "    ████   ██ ██    ██ ██ ████  ████",
            "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
            "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
            "    ██   ████   ████   ██ ██      ██",
            " ",
            " ",
            " ",
          }, false),
          opts = {
            position = "center",
            hl = "DashboardHeader",
          },
        },
        { type = "padding", val = 2 },
        {
          type = "group",
          val = {
            utils.alpha_button("LDR f f", "  Find File  "),
            utils.alpha_button("LDR f o", "  Recents  "),
            utils.alpha_button("LDR f w", "  Find Word  "),
            utils.alpha_button("LDR f n", "  New File  "),
            utils.alpha_button("LDR f m", "  Bookmarks  "),
            utils.alpha_button("LDR S l", "  Last Session  "),
          },
          opts = {
            spacing = 1,
          },
        },
        {
          type = "text",
          val = {
            " ",
            " ",
            " ",
            " EuforicNVim loaded " .. plugins_count .. " plugins ",
          },
          opts = {
            position = "center",
            hl = "DashboardFooter",
          },
        },
      },
      opts = {},
    }))
  end
end

return M
