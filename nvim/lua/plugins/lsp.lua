return {
  -- tools
  {
    "williamboman/mason.nvim",

    opts = function(_, opts)
      vim.list.extend(opts.ensure_installed, {
        -- arduino
        "arduino_language_server",
        -- bash
        "bashls",
        -- C/C++
        "clangd",
        -- cmake
        "cmake",
        -- docker
        "dockerls",
        -- JSON
        "jsonls",
        -- java
        "jdtls",
        -- latex
        "ltex",
        -- lua
        "lua_ls",
        -- markdown
        "marksman",
        -- matlab
        "matlab_ls",
        -- python
        "pyright",
        -- xml
        "lemminx",
        -- yaml
        "yamlls",
      })
    end,
  },

  -- lsp servers
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = true },
      capabilities = {
        workspace = {
          didChangeWatchedFiles = {
            dynamicRegistration = false,
          },
        },
      },

      servers = {
        arduino_language_server = {},
        bashls = {},
        clangd = {},
        cmake = {},
        dockerls = {},
        jsonls = {},
        jdtls = {},
        ltex = {},
        lua_ls = {
          single_file_support = true,
          settings = {
            Lua = {
              workspace = {
                checkThirdParty = false,
              },
              completion = {
                workspaceWord = true,
                callSnippet = "Both",
              },
              misc = {
                parameters = {},
              },
              hover = {
                expandAlias = false,
              },
              hint = {
                enable = true,
                setType = false,
                paramType = true,
                paramName = "Disable",
                semicolon = "Disable",
                arrayIndex = "Disable",
              },
              doc = {
                privateName = { "^_" },
              },
            },
          },
        },
        marksman = {},
        matlab_ls = {},
        pyright = {},
        lemminx = {},
        yamlls = {},
      },

      setup = {},
    },
  },
} -- return
