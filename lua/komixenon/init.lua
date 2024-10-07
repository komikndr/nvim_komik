require("komixenon.remap")
require("komixenon.set")


if vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1 then
  vim.opt.shell = 'pwsh'
  vim.opt.shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command'
  vim.opt.shellquote = ''
  vim.opt.shellxquote = ''
end

vim.api.nvim_create_user_command('VTerm', function()
  vim.cmd('vsplit | terminal')
end, {})
