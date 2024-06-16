return {
  -- tools
  {
    "williamboman/mason.nvim",

    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua", -- lua
        "selene",
        "luacheck",
        "clangd", --c/cpp
        "cmake-language-server",
        "bash-language-server",
        "dockerfile-language-server",
        "pyright", --python
        "jdtls", --java
        "json-lsp", --json
        -- "ltex-ls", --latex
        "shfmt", --sh format
        "marksman", -- markdown
        "yaml-language-server", --yaml
      })
    end,
  },

  { -- lspconfig
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = true },

      servers = {
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
                parameters = {
                  -- "--log-level=trace",
                },
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
              type = {
                castNumberToInteger = true,
              },
              diagnostics = {
                disable = { "incomplete-signature-doc", "trailing-space" },
                -- enable = false,
                groupSeverity = {
                  strong = "Warning",
                  strict = "Warning",
                },
                groupFileStatus = {
                  ["ambiguity"] = "Opened",
                  ["await"] = "Opened",
                  ["codestyle"] = "None",
                  ["duplicate"] = "Opened",
                  ["global"] = "Opened",
                  ["luadoc"] = "Opened",
                  ["redefined"] = "Opened",
                  ["strict"] = "Opened",
                  ["strong"] = "Opened",
                  ["type-check"] = "Opened",
                  ["unbalanced"] = "Opened",
                  ["unused"] = "Opened",
                },
                unusedLocalExclude = { "_*" },
              },
              format = {
                enable = false,
                defaultConfig = {
                  indent_style = "space",
                  indent_size = "2",
                  continuation_indent_size = "2",
                },
              },
            },
          },
        }, -- !lua_ls

        clangd = {},
        cmake = {},

        bashls = {},
        dockerls = {},
        jsonls = {},
        -- ltex = {},
        yamlls = {},
      }, -- !servers

      setup = {},
    }, -- !opts
  }, -- !lspconfig
} -- !return
