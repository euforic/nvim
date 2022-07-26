local M = {}

function M.config()
  local status_ok, typescript = pcall(require, "typescript")
  if status_ok then
    typescript.setup(require("core.utils").user_plugin_opts("plugins.typescript", {
      disable_commands = false, -- prevent the plugin from creating Vim commands
      disable_formatting = false, -- disable tsserver's formatting capabilities
      debug = false, -- enable debug logging for commands
    }))
  end
end

return M
