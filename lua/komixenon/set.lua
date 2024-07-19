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

-- Detect OS and set paths accordingly
local os_name = vim.loop.os_uname().sysname

if os_name == "Windows_NT" then
    local user_profile = os.getenv("USERPROFILE")
    if user_profile then
        vim.opt.directory = user_profile .. "\\vimfiles\\swap\\"
        vim.opt.backupdir = user_profile .. "\\vimfiles\\backup\\"
        vim.opt.undodir = user_profile .. "\\vimfiles\\undodir\\"
    else
        print("Error: USERPROFILE environment variable is not set.")
    end
else
    local home_dir = os.getenv("HOME")
    if home_dir then
        vim.opt.directory = home_dir .. "/.vim/swap//"
        vim.opt.backupdir = home_dir .. "/.vim/backup//"
        vim.opt.undodir = home_dir .. "/.vim/undodir//"
    else
        print("Error: HOME environment variable is not set.")
    end
end

vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "120"  -- Replace with "80" or "80,120" for multiple columns
