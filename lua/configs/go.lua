local M = {}

function M.config()
  local status_ok, go = pcall(require, "go")
  if status_ok then
    local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
    go.setup(require("core.utils").user_plugin_opts("plugins.go", {
      lsp_cfg = {
        capabilities = capabilities,
      },
      lsp_codelens = false,
      lsp_diag_virtual_text = false,
    }))
    vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)
  end
end

return M
