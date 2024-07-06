require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
map("i", "<C-L>", "<C-^>", { noremap = true , desc="Toggle language"})

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map( "n" ,"<leader>fp" , "<cmd>Telescope projects<CR>" ,{ noremap=true , desc="Telescope projects"})
map( {"n" , "i"} , "<leader>;" , "<cmd>Nvdash<CR>" , {  noremap=true , desc="Start screen"})

-- map({ "n", "i", "v"  }, "<C -s>", "<cmd> w <cr>")


-- map({ "n", "t" }, "<A-i>", function()
  -- require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
-- end, { desc = "Terminal Toggle Floating term" })
vim.keymap.set({ "t" , "i" }, "<leader><Esc>", "<C-\\><C-n>", { noremap = true , desc="Escape terminal (t mode)" })
