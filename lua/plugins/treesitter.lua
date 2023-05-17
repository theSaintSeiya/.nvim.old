return {
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
    build = ":TSUpdate",
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = {
          'c', 'cpp',
          'css',
          'go',
          'html',
          'javascript',
          'lua',
          'rust',
          'tsx',
          'typescript',
          'vimdoc',
          'vim',
          'vue',
        },

        auto_install = true,
        sync_install = false,

        autotag = { enable = true },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true, disable = { 'python' }
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = '<S-space>',
            node_incremental = '<S-space>',
            node_decremental = '<S-Z>',
          },
        },
      }
    end
  },

  'nvim-treesitter/playground',
}
