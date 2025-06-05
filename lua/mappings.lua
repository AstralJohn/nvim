require "nvchad.mappings"

local map = vim.keymap.set

map("i", "<leader>q", "<ESC>", { silent = true, noremap = true })

map("n", "<leader>n", ":noh<CR>", { silent = true, noremap = true, desc = "Map <leader>n to :noh (No Highlight)" })

map("t", "<leader>t", function()
  require("nvterm.terminal").toggle "float"
end, { desc = "Toggle floating term" })

map("t", "<leader>h", function()
  require("nvterm.terminal").toggle "horizontal"
end, { desc = "Toggle horizontal term" })

map("t", "<leader>v", function()
  require("nvterm.terminal").toggle "vertical"
end, { desc = "Toggle vertical term" })

map("n", "<leader>t", function()
  require("nvterm.terminal").toggle "float"
end, { desc = "Toggle floating term" })

map("n", "<leader>h", function()
  require("nvterm.terminal").toggle "horizontal"
end, { desc = "Toggle horizontal term" })

map("n", "<leader>v", function()
  require("nvterm.terminal").toggle "vertical"
end, { desc = "Toggle vertical term" })

-- map("n", "<C-s>", ":MarkdownPreview<CR>", { noremap = true, silent = true, desc = "Markdown preview with ctrl-s" })

map("n", "<leader>fm", function()
  require("conform").format { lsp_format = "fallback" }
end, { desc = "Formatting" })

map("n", "<leader>cc", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>cc", "gc", { desc = "toggle comment", remap = true })
map("v", "<leader>cs", "gb", { desc = "toggle block comment", remap = true })
