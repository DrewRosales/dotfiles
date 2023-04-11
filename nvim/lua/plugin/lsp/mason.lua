local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  return
end

mason.setup()

mason_lspconfig.setup({
ensure_installed = {
  "clangd", -- C
  "arduino_language_server", -- arduino
  "jsonls", -- JSON
  "ltex", -- LaTEX
  "lua_ls", -- lua
  "marksman", -- markdown
  "rust_analyzer", -- rust
  "vimls", -- vim
  },
  automatic_isntallation = false,
})
