-- Select theme here
local colorscheme = "catppuccin"

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

if colorscheme == "rose-pine" then
    require(colorscheme).set(
        'moon'
    )
    vim.g.rose_pine_disable_italics = true
end

if colorscheme == "onedark" then
    require(colorscheme).setup {
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
