return function ()
  local null_ls = require('null-ls')
  local perfer_local = vim.fn.stdpath('data') .. '/mason/bin'
  null_ls.setup({
    -- log = {
    --   enable = true,
    --   level = "trace",
    --   use_console = "async",
    -- },
    sources = {
      -- null_ls.builtins.code_actions.gitsigns,
      -- null_ls.builtins.completion.spell,
      -- NOTE: cspell needs to installed first by using npm install -g cspell
      null_ls.builtins.diagnostics.cspell.with{
        prefer_local = perfer_local,
        diagnostics_postprocess = function(diagnostic)
            diagnostic.severity = diagnostic.message:find("Unknown word")
                and vim.diagnostic.severity["INFO"]
        end,
      },
      -- null_ls.builtins.diagnostics.codespell,
      null_ls.builtins.formatting.nginx_beautifier,
      null_ls.builtins.formatting.prettier.with{
        prefer_local = perfer_local
      },
      null_ls.builtins.formatting.sqlformat,
      null_ls.builtins.formatting.stylelint,
      -- null_ls.builtins.formatting.codespell,
      null_ls.builtins.hover.dictionary,
    }
  })
end
