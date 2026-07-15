-- llama.vim initializes before files in after/plugin. Reset its defaults so
-- its mappings and autocmds are recreated from this configuration.
vim.fn["llama#disable"]()

-- llama.vim creates its default InsertEnter mapping outside its augroup, so
-- disable() does not remove it. Delete only that stale plugin autocmd.
for _, autocmd in ipairs(vim.api.nvim_get_autocmds({ event = "InsertEnter" })) do
  if autocmd.command:find("llama#fim_inline", 1, true) then
    vim.cmd("autocmd! InsertEnter *")
    break
  end
end
pcall(vim.keymap.del, "i", "<leader>llf", { buffer = 0 })

vim.g.llama_config = vim.tbl_deep_extend("force", vim.g.llama_config, {
  endpoint_fim = "http://your_end_point:port/infill",
  endpoint_inst = "http://your_end_point:port/v1/chat/completions",
  model_fim = "Qwen3.6-35B",
  model_inst = "Qwen3.6-35B",

  auto_fim = false,
  enable_at_startup = true,

  n_prefix = 256,
  n_suffix = 64,
  n_predict = 128,
  t_max_prompt_ms = 500,
  t_max_predict_ms = 1000,
  show_info = 2,

  keymap_fim_trigger = "",
  keymap_fim_accept_full = "<C-l>",
  keymap_fim_accept_line = "",
  keymap_fim_accept_word = "",
  keymap_fim_next = "",
  keymap_fim_prev = "",

  keymap_inst_trigger = "",
  keymap_inst_rerun = "<leader>llr",
  keymap_inst_continue = "<leader>llc",
  keymap_inst_accept = "<leader>lla",
  keymap_inst_cancel = "<leader>llx",
  keymap_debug_toggle = "<leader>lld",
})

vim.fn["llama#enable"]()

vim.keymap.set("i", "<C-l>", function()
  vim.fn["llama#fim_accept"]("full")
end, { desc = "Llama: accept full suggestion" })

vim.keymap.set("n", "<leader>lle", function()
  vim.cmd(".LlamaInstruct")
end, { desc = "Llama: edit current line" })
