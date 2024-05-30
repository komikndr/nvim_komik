vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.directory = os.getenv("USERPROFILE") .. "\\vimfiles\\swap\\"
vim.opt.backupdir = os.getenv("USERPROFILE") .. "\\vimfiles\\backup\\"

vim.opt.undodir = os.getenv("USERPROFILE") .. "\\vimfiles\\undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "120"   -- Replace with "80" or "80,120" for multiple columns
