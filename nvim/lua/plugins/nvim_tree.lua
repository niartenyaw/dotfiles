return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      renderer = {
        group_empty = true,
        -- icons = {
        --   show = {
        --     file = false,
        --     folder = false,
        --     folder_arrow = false,
        --     git = false,
        --   },
        -- },
      },
      filters = {
        custom = { "^.git$" }
      },
    })

    vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
  end
}
