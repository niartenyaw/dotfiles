return {
  {
    'Wansmer/treesj',
    keys = { '<leader>m', '<space>j', '<space>s' },
    dependencies = { 'nvim-treesitter/nvim-treesitter' }, -- if you install parsers with `nvim-treesitter`
    config = function()
      require('treesj').setup({ --[[ your config ]] })
    end,
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  },
  -- { 'nvim-mini/mini.surround' },
}
