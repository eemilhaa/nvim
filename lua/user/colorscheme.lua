-- Select theme here
local colorscheme = "dracula"

-- Theme-specific customizations here
if colorscheme == "catppuccin" then
    vim.g.catppuccin_flavour = "frappe"
end


if colorscheme == "gruvbox" then
    vim.g.gruvbox_sign_column = "bg0"
end


if colorscheme == "kanagawa" then
    local default_colors = require("kanagawa.colors").setup()
    local overrides = {
        VertSplit  = { fg = default_colors.bg_dark, bg = "NONE" },
    }
    require(colorscheme).setup({ overrides = overrides })
end

if colorscheme == "onedark" then
    require(colorscheme).setup {
        style = "darker",
    }
end

if colorscheme == "material" then
    vim.g.material_style = "darker"
    require(colorscheme).setup({
        contrast = {
            sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
            floating_windows = false, -- Enable contrast for floating windows
            line_numbers = false, -- Enable contrast background for line numbers
            sign_column = false, -- Enable contrast background for the sign column
            cursor_line = false, -- Enable darker background for the cursor line
            non_current_windows = false, -- Enable darker background for non-current windows
            popup_menu = true, -- Enable lighter background for the popup menu
        },
        italics = {
            comments = true, -- Enable italic comments
            keywords = true, -- Enable italic keywords
            functions = true, -- Enable italic functions
            strings = false, -- Enable italic strings
            variables = false -- Enable italic variables
        },
    })
end

-- Set theme here, use protected call
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
end
