-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- local st_modules = require "nvchad_ui.statusline"
-- local config = require("nvconfig").ui.statusline рррор

local function lua_keymap()
  -- print(vim.opt.keymap)
  -- for k,v in pairs(vim.opt.keymap)
  -- do print(k)
  local km = { "EN" , "RU"}
  local  m = vim.o.iminsert
  return " %#string#"..km[m+1]
end

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "gruvchad",

  hl_override = {
  	Comment = { italic = true },
  	["@comment"] = { italic = true },
  },
    statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    order = { "mode", "file", "git", "lua_keymap", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor" },nil,
    modules ={  lua_keymap =  lua_keymap },
    overriden_modules =  function (modules)
      return  table.insert(modules , 2 ,lua_keymap ) end,
    },

  nvdash = {
    load_on_startup = true,

    header = {
      "           ▄ ▄                   ",
      "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
      "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
      "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
      "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
      "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
      "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
      "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
      "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
    },

    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "  Recent Projects", "Spc f p", "Telescope projects" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  }
}

return M
