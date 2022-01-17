-- Customize theme here
require("onedark").setup {
    style = "dark",
    term_colors = false
}


-- Set theme here
local colorscheme = "onedark"

-- Use protected call
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
