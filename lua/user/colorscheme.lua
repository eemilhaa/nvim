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

-- TODO
if colorscheme == "rose-pine" then
    vim.cmd("set background=light")
    vim.g.rose_pine_disable_italics = true
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

if colorscheme == "nightfox" then
    local nightfox = require(colorscheme) 
    nightfox.setup({
        fox = "nordfox", -- change the colorscheme to use nordfox
        styles = {
            comments = "italic", -- change style of comments to be italic
            keywords = "bold", -- change style of keywords to be bold
            functions = "bold" -- styles can be a comma separated list
        },
--        inverse = {
--            match_paren = true, -- inverse the highlighting of match_parens
--        },
--        colors = {
--            red = "#FF000", -- Override the red color for MAX POWER
--            bg_alt = "#000000",
--        },
--        hlgroups = {
--            TSPunctDelimiter = { fg = "${red}" }, -- Override a highlight group with the color red
--            LspCodeLens = { bg = "#000000", style = "italic" },
--        }
    })
    nightfox.load()
    return
end

-- Set theme here, use protected call
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
end
