-- Select theme here
local colorscheme = 'kanagawa'

if colorscheme == 'catppuccin' then
    vim.g.catppuccin_flavour = 'frappe'
end

if colorscheme == "kanagawa" then
    local default_colors = require("kanagawa.colors").setup()
    local overrides = {
        VertSplit  = { fg = default_colors.bg_dark, bg = "NONE" },
    }
    require(colorscheme).setup({ overrides = overrides })
end

local status_ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)
if not status_ok then
    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    return
end
