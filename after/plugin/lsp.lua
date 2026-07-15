require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "pylsp" },
  automatic_enable = false,
})

vim.lsp.config("pylsp", {
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
  settings = {
    pylsp = {
      configurationSources = { "flake8" },
      plugins = {
        pycodestyle = {
          ignore = { "E501", "W503" },
          maxLineLength = 120,
        },
      },
    },
  },
})

vim.lsp.enable("pylsp")

vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Open diagnostic float" })
vim.keymap.set("n", "]d", function()
  vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Next diagnostic" })
vim.keymap.set("n", "[d", function()
  vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Previous diagnostic" })
