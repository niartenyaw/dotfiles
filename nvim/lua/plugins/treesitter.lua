return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      -- A list of parser names, or "all" (the listed parsers MUST always be installed)
      ensure_installed = { "lua", "vim", "vimdoc", "markdown", "markdown_inline", "javascript", "typescript", "python" },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering buffer
      -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
      auto_install = true,

      highlight = {
        enable = true,

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
      },
    })

    -- vim.opt.foldmethod = "expr"
    -- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

    local vim = vim
    local api = vim.api
    local M = {}
    -- function to create a list of commands and convert them to autocommands
    -------- This function is taken from https://github.com/norcalli/nvim_utils
    function M.nvim_create_augroups(definitions)
      for group_name, definition in pairs(definitions) do
        api.nvim_command("augroup " .. group_name)
        api.nvim_command("autocmd!")
        for _, def in ipairs(definition) do
          local command = table.concat(vim.tbl_flatten({ "autocmd", def }), " ")
          api.nvim_command(command)
        end
        api.nvim_command("augroup END")
      end
    end

    local autoCommands = {
      -- other autocommands
      open_folds = {
        { "BufReadPost,FileReadPost", "*", "normal zR" },
      },
    }

    M.nvim_create_augroups(autoCommands)
  end
}
