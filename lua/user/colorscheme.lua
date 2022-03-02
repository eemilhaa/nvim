-- Select theme here
local colorscheme = "nord"

-- Theme-specific customizations here
if colorscheme == "catppuccin" then
    local setup = {
        styles = {
            comments = "NONE",
            functions = "NONE",
            keywords = "NONE",
            strings = "NONE",
            variables = "NONE",
        }
    }
    require(colorscheme).setup(setup)
end

if colorscheme == "onedark" then
    require(colorscheme).setup {
        style = "warm",
        term_colors = true
    }
end

if colorscheme == "material" then
    vim.g.material_style = "darker"
end

if colorscheme == "nord" then
    --vim.g.nord_contrast = false
    --vim.g.nord_borders = false
    --vim.g.nord_disable_background = false
    --vim.g.nord_italic = true
end


-- Set theme here, use protected call
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
end
