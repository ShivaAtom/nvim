return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  opts = {
    pickers = {
      find_files = {
        theme = "poimandres",
      }
    }
  },
  config = function ()
    require("telescope").setup{
      fzf = {
        fuzzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mode = "smart_case",       
      }
    }
    require("telescope").load_extension("fzf")
  end,
  keys = {
    {
      "<leader>pp",
      function ()
        require("telescope.builtin").find_files()
      end
    },
    {
      "<leader>oo",
      function ()
        require("telescope.builtin").buffers()
      end
    },
    {
      "<leader>ff",
      function ()
        require("telescope.builtin").help_tags()
      end
    },
  }
}
