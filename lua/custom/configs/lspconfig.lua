local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
    vim.diagnostic.config({
--      virtual_text = false,
      update_in_insert = true,
--      float = { border = "rounded"}
    })
  end,
  capabilities = capabilities,
}
