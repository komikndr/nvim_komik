local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    -- Bind default keymaps for LSP actions to buffer
    lsp_zero.default_keymaps({buffer = bufnr})
end)

-- Mason setup
require('mason').setup({})
require('mason-lspconfig').setup({
    handlers = {
        lsp_zero.default_setup,
    },
})

-- Customizing the Python LSP (pylsp) settings
-- require('lspconfig').pylsp.setup({
--     settings = {
--         pylsp = {
--             configurationSources = {"flake8"},  -- Optional, choose the linter
--             plugins = {
--                 pycodestyle = {
--                     ignore = {"E501"},  -- Ignore E501 (line too long)
--                     maxLineLength = 120,  -- Optionally set a custom line length limit
--                 },
--             },
--         },
--     },
-- })
