return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown_lines"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
      progress = { enabled = false },
      signature = { enabled = false },
    },
    routes = {
      {
        filter = { event = "msg_show", find = "%d+L, %d+B" },
        opts = { skip = true },
      },
      {
        filter = { event = "msg_show", find = "written" },
        opts = { skip = true },
      },
      {
        filter = { event = "msg_show", find = "already" },
        opts = { skip = true },
      },
    },
    presets = {
      bottom_search = true,
      command_palette = true,
      long_message_to_split = true,
      inc_rename = false,
      lsp_doc_border = false,
    },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
}
