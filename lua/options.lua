require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

vim.opt.relativenumber = true
vim.opt.wrap = true -- wrap lines
vim.opt.colorcolumn = "80"
-- use treesitter folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false
vim.opt.foldlevel = 1
vim.opt.foldnestmax = 1
-- //
-- Keyboard & language
vim.opt.keymap = "russian-jcukenwin"
-- Язык ввода при старте Вима ≡ Английский
vim.opt.iminsert = 0
-- Аналогично настраивается «режим поиска»
vim.opt.imsearch = 0
vim.opt.spell = false --{ "spelllang" , "en_us,ru_ru,ru_yo" }
vim.opt.spelllang = "en_us,ru_ru,ru_yo"
-- " Чтобы вместо Ctrl-^ нажимать Ctrl-L
