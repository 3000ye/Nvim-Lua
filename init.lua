-- 基础配置
require("basic")

-- Packers 插件管理
require("plugins")

-- 快捷键映射
require("keymap")

-- 自动补全
require("plugin-config/lsp")
require("plugin-config/nvim-lsp-installer")
require("plugin-config/autopairs")

-- 主题设置
vim.cmd[[colorscheme nord]]

-- Example config in lua
vim.g.nord_contrast = true
vim.g.nord_borders = false
vim.g.nord_disable_background = true
vim.g.nord_italic = false
vim.g.nord_uniform_diff_background = true

-- Load the colorscheme
require('nord').set()

-- rainbow 彩虹括号
require("plugin-config/rainbow")

-- 自动化操作
require("autocmd")

-- 自动格式化
require("plugin-config/formatter")

-- 彩虹缩进
require("plugin-config/indent")

-- 光标居中
require("plugin-config/stay-centered")
