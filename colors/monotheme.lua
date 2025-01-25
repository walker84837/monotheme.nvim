-- Clear existing highlights
vim.cmd("highlight clear")

-- Reset syntax if already enabled
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

-- Set options
vim.o.background = "dark"
vim.o.termguicolors = true

local colors = {
  black        = "#000000",
  gray_dark    = "#6b6b6b",
  gray_light   = "#c4c4c4",
  gray_mid     = "#b3b3b3",
  gray_dim     = "#999999",
  gray_subtle  = "#717171",
  gray_alt     = "#8a8a8a",
  green_light  = "#b5cabb",
  bg_dark      = "#202020",
  bg_darker    = "#464646",
  fg_light     = "#f8f8f8",
  fg_dimmed    = "#eeeeee",
  accent_dark  = "#7c7c7c",
  accent_mid   = "#adadad",
  accent_light = "#c0c0c0",
  green_dimmed = "#99ac9e",
  fg           = "#ffffff",
  bg           = "#000000"
}

local highlights = {
  Normal = { fg = colors.fg, bg = colors.bg },
  Comment = { fg = colors.gray_subtle, italic = true },
  Constant = { fg = colors.accent_light },
  String = { fg = colors.green_light },
  Identifier = { fg = colors.gray_light },
  Function = { fg = colors.accent_mid },
  Statement = { fg = colors.gray_mid },
  PreProc = { fg = colors.gray_dim },
  Type = { fg = colors.gray_alt },
  Special = { fg = colors.accent_dark },
  Underlined = { fg = colors.accent_light, underline = true },
  Todo = { fg = colors.fg_light, bg = colors.gray_dark },
  CursorLine = { bg = colors.bg_dark },
  CursorLineNr = { fg = colors.fg_light },
  Visual = { bg = colors.bg_darker },
  LineNr = { fg = colors.gray_subtle },
  VertSplit = { fg = colors.gray_dark },
  StatusLine = { fg = colors.fg_dimmed, bg = colors.bg_dark },
  StatusLineNC = { fg = colors.gray_dark, bg = colors.bg_dark }
}

for group, attrs in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, attrs)
end
