-- 插件管理

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    print("Installing packer close and reopen Neovim...")
    vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end,
    },
    git = {
        default_url_format = 'git@github.com:%s'
    },
})

-- Install your plugins here

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- 颜色主题 Nord 风格
  use({'shaunsingh/nord.nvim', commit = "78f5f001709b5b321a35dcdc44549ef93185e024"})

  -- lsp自动补全
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "neovim/nvim-lspconfig" -- enable LSP
  use "nvim-lua/plenary.nvim" -- Useful lua functions used by lots of plugins
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-nvim-lua"

  -- rainbow 颜色括号
  use 'luochen1990/rainbow'

  -- 自动匹配括号
  use({ "windwp/nvim-autopairs", commit = "fa6876f832ea1b71801c4e481d8feca9a36215ec" }) -- Autopairs, integrates with both cmp and treesitter

  -- wakatime
  use 'wakatime/vim-wakatime'

  -- 自动格式化
  use 'mhartington/formatter.nvim'

  -- Markdown实时预览
  use 'iamcco/markdown-preview.nvim'

  -- 彩虹缩进
  use "lukas-reineke/indent-blankline.nvim"

end)
