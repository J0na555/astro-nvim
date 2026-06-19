-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  init = function() vim.opt.runtimepath:prepend(vim.fn.stdpath "data" .. "/lazy/nvim-treesitter") end,
  opts = {
    ensure_installed = {
      "markdown",
      "markdown_inline",
    },
    indent = {
      disable = { "yaml" },
    },
  },
}
