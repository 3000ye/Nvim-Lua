-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    -- Formatter configurations for filetype "lua" go here
    -- and will be executed in order

    python = {
        function()
          return {
            exe = "python3 -m autopep8",
            args = {
              "--in-place --aggressive --aggressive",
              vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))
            },
            stdin = false
          }
        end
      },
    
    cpp = {
        function()
          return {
            exe = "clang-format",
            args = {
              "-assume-filename",
              util.escape_path(util.get_current_buffer_file_name()),
            },
            stdin = true,
            try_node_modules = true,
          }
        end
    },
    

    -- Use the special "*" filetype for defining formatter configurations on
    -- any filetype
    ["*"] = {
      -- "formatter.filetypes.any" defines default configurations for any
      -- filetype
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}

--配置保存文件自动格式化代码
vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePre * FormatWrite
augroup END
]],
  true
)
