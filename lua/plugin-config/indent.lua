vim.opt.termguicolors = true
vim.cmd [[highlight indentblanklineindent1 guibg=#8fbcbb gui=nocombine]]
vim.cmd [[highlight indentblanklineindent2 guibg=#88c0d0 gui=nocombine]]
vim.cmd [[highlight indentblanklineindent3 guibg=#bf616a gui=nocombine]]
vim.cmd [[highlight indentblanklineindent4 guibg=#d08770 gui=nocombine]]
vim.cmd [[highlight indentblanklineindent5 guibg=#ebcb8b gui=nocombine]]
vim.cmd [[highlight indentblanklineindent6 guibg=#a3be8c gui=nocombine]]
vim.cmd [[highlight indentblanklineindent7 guibg=#b48ead gui=nocombine]]

vim.cmd [[highlight indentblanklineindent1 guibg=#8fbcbb gui=nocombine]]
vim.cmd [[highlight indentblanklineindent2 guibg=#88c0d0 gui=nocombine]]
vim.cmd [[highlight indentblanklineindent3 guibg=#bf616a gui=nocombine]]
vim.cmd [[highlight indentblanklineindent4 guibg=#d08770 gui=nocombine]]
vim.cmd [[highlight indentblanklineindent5 guibg=#ebcb8b gui=nocombine]]
vim.cmd [[highlight indentblanklineindent6 guibg=#a3be8c gui=nocombine]]
vim.cmd [[highlight indentblanklineindent7 guibg=#b48ead gui=nocombine]]

vim.opt.list = true
vim.opt.listchars:append "space: "

require("indent_blankline").setup {
  indent_blankline_char = " ",
  indnet_blankline_char_blankline = " ",
  show_end_of_line = true,

  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6",
    "IndentBlanklineIndent7",
  },
}
