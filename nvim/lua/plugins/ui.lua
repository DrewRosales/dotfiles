return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function()
      local logo = [[
  █     █░ ▒█████   ██▀███   ██ ▄█▀     █████▒▄▄▄        ██████ ▄▄▄█████▓▓█████  ██▀███  
 ▓█░ █ ░█░▒██▒  ██▒▓██ ▒ ██▒ ██▄█▒    ▓██   ▒▒████▄    ▒██    ▒ ▓  ██▒ ▓▒▓█   ▀ ▓██ ▒ ██▒
 ▒█░ █ ░█ ▒██░  ██▒▓██ ░▄█ ▒▓███▄░    ▒████ ░▒██  ▀█▄  ░ ▓██▄   ▒ ▓██░ ▒░▒███   ▓██ ░▄█ ▒
 ░█░ █ ░█ ▒██   ██░▒██▀▀█▄  ▓██ █▄    ░▓█▒  ░░██▄▄▄▄██   ▒   ██▒░ ▓██▓ ░ ▒▓█  ▄ ▒██▀▀█▄  
 ░░██▒██▓ ░ ████▓▒░░██▓ ▒██▒▒██▒ █▄   ░▒█░    ▓█   ▓██▒▒██████▒▒  ▒██▒ ░ ░▒████▒░██▓ ▒██▒
 ░ ▓░▒ ▒  ░ ▒░▒░▒░ ░ ▒▓ ░▒▓░▒ ▒▒ ▓▒    ▒ ░    ▒▒   ▓▒█░▒ ▒▓▒ ▒ ░  ▒ ░░   ░░ ▒░ ░░ ▒▓ ░▒▓░
   ▒ ░ ░    ░ ▒ ▒░   ░▒ ░ ▒░░ ░▒ ▒░    ░       ▒   ▒▒ ░░ ░▒  ░ ░    ░     ░ ░  ░  ░▒ ░ ▒░
   ░   ░  ░ ░ ░ ▒    ░░   ░ ░ ░░ ░     ░ ░     ░   ▒   ░  ░  ░    ░         ░     ░░   ░ 
     ░        ░ ░     ░     ░  ░                   ░  ░      ░              ░  ░   ░     
]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"

      local opts = {
        theme = "doom",
        hide = {
          statusline = false,
        },
        config = {
          header = vim.split(logo, "\n"),
          center = {
            {
              action = "ene | startinsert",
              desc = " New file",
              icon = " ",
              key = "n",
            },
            {
              action = 'lua require("persistence").load()',
              desc = " Restore Session",
              icon = " ",
              key = "s",
            },
            {
              action = "qa",
              desc = " Quit",
              icon = " ",
              key = "q",
            },
          },
          { type = "padding", val = 15 },
          footer = function()
            return {
              " Another Day, Another Dollar ",
            }
          end,
        },
      }

      return opts
    end,
  },

  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 5000,
    },
  },
}
