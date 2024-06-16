return {
  {
    "telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-live-grep-args.nvim",
        build = "make",
      },
      -- "nvim-telescope/telescope-file-browser.nvim",
    },

    keys = {
      {
        "<leader>ff",
        function()
          local builtin = require("telescope.builtin")
          builtin.find_files({
            no_ignore = false,
            hidden = true,
          })
        end,
        desc = "Find Files",
      },
      {
        "<leader>fw",
        function()
          local builtin = require("telescope").extensions.live_grep_args
          builtin.live_grep_args({
            additional_args = { "--hidden" },
          })
        end,
        desc = "Live Grep",
      },
    },

    config = function(_, opts)
      local telescope = require("telescope")
      --  local fb_actions = require("telescope").extensions.file_browser.actions

      opts.defaults = vim.tbl_deep_extend("force", opts.defaults, {
        wrap_results = true,
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        mappings = {
          n = {},
        },
        extensions = {
          live_grep_args = {
            auto_quoting = true,
          },
        },
      })
      opts.pickers = {
        diagnostics = {
          theme = "ivy",
          initial_mode = "normal",
          layout_config = {
            preview_cutoff = 9999,
          },
        },
      }

      telescope.setup(opts)
      require("telescope").load_extension("fzf")
      -- require("telescope").load_extension("file_browser")
    end,
  },
}
