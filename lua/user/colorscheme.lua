-- Set theme here
local colorscheme = "rose-pine"

-- Theme-specific customizations here
if colorscheme == "rose-pine" then
    require(colorscheme).set('moon')
end

if colorscheme == "onedark" then
    require(colorscheme).setup {
        style = "warm",
        term_colors = true
    }
end

-- Use protected call
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
