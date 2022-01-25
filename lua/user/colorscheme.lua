-- Customize theme here
--require("onedark").setup {
--    style = "warm",
--    term_colors = true
--}


-- Set theme here
local colorscheme = "catppuccin"

-- Use protected call
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
