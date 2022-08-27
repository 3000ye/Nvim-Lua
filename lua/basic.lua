-- 基础设置

vim.o.background = "dark"  -- 设置背景为暗色
vim.o.encoding = "utf-8"  -- 设置编码为 utf-8
vim.o.number = true  -- 显示行号
vim.o.termguicolors = true  -- 更多的色彩 -- 24bit RGB
vim.o.mouse = "a"  -- 在任何模式中启用鼠标
vim.o.errorbells = false -- 关闭 nvim 的 bell 提示音
vim.o.hidden = true -- 关闭buffer设置
vim.o.magic = true -- 正则搜索支持
vim.o.virtualedit = "block" -- 设置鼠标
vim.o.clipboard = "unnamedplus"  -- 设置剪切板
vim.o.wildignorecase = true  -- 
vim.o.wildignore = ".git, .hg, .svn, *.pyc, *.o, *.out, *.jpg, *.jpeg, *.png, *.gif, *.zip, **/tmp/**, *.DS_Store, **/node_moduels/**, **/bower_modules/**"
vim.o.backup = false  -- 禁用备份
vim.o.writebackup = false
vim.o.backupskip = "/tmp/*, $TMPDIR/*, $TMP/*, $TEMP/*, */shm/*, /private/var/*, .vault.vim"
vim.o.swapfile = false
vim.o.history = 2000  -- 保存2000条历史信息
-- vim.o.shada = "!, '300, <50, @100, s10, h"  -- 保存信息
vim.o.smarttab = true  -- 智能tab
vim.o.shiftround = true
vim.o.timeout = true
vim.o.ttimeout = true
vim.o.timeoutlen = 500
vim.o.ttimeoutlen = 0
vim.o.updatetime = 100
vim.o.redrawtime = 1500
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.infercase = true
vim.o.incsearch = true
vim.o.wrapscan = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.ruler = true
vim.o.showmode = false
vim.o.scrolloff = 2
vim.o.sidescrolloff = 5
vim.o.foldlevelstart = 99
vim.o.cursorline = true
vim.o.cursorcolumn = true
vim.o.list = true
vim.o.showtabline = 2
vim.o.winwidth = 30
vim.o.winminwidth = 10
vim.o.pumheight = 15
vim.o.helpheight = 12
vim.o.previewheight = 12
vim.o.showcmd = false
vim.o.cmdheight = 2
vim.o.cmdwinheight = 5
vim.o.equalalways = false
vim.o.laststatus = 2
vim.o.display = "lastline"
vim.o.autoread = true
vim.o.autowrite = true
vim.o.undofile = true
vim.o.synmaxcol = 2500
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.wrap = false
vim.o.linebreak = true
vim.o.hlsearch = true

vim.g.python_host_prog = "/usr/bin/python"
vim.g.python3_host_prog = "/usr/bin/python3"


if vim.fn.has('wsl') then
  vim.cmd [[
  augroup Yank
  autocmd!
  autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
  augroup END
  ]]
end
