local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

keymap.set("n", "<leader>%", ":split<Return>", opts)
keymap.set("n", '<leader>"', ":vsplit<Return>", opts)
