-- Select theme here
local colorscheme = "onedark"

-- Theme-specific setups here
if colorscheme == "onedark" then
    require("onedark").setup {
        style = "warm",
        term_colors = true
    }
end

-- Set theme here, use protected call
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
end
