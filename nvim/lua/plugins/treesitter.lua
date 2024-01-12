return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "cmake",
        "comment",
        "gitcommit",
        "gitignore",
        "http",
        "meson",
        "ninja",
        "c",
        "cpp",
        "cuda",
        "dockerfile",
        "java",
        "json",
        "markdown",
        "python",
      })
    end,
  },
}
