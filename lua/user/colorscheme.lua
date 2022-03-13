-- Select theme here
local colorscheme = "onedark"

-- Theme-specific customizations here
--if colorscheme == "catppuccin" then
--    local setup = {
--        styles = {
--            comments = "NONE",
--            functions = "NONE",
--            keywords = "NONE",
--            strings = "NONE",
--            variables = "NONE",
--        }
--    }
--    require(colorscheme).setup(setup)
--end

--if colorscheme == "onedark" then
--    require(colorscheme).setup {
--        style = "warm",
--        term_colors = true
--    }
--end

if colorscheme == "material" then
    vim.g.material_style = "darker"
    require(colorscheme).setup({
        contrast = {
            sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
            floating_windows = true, -- Enable contrast for floating windows
            line_numbers = false, -- Enable contrast background for line numbers
            sign_column = false, -- Enable contrast background for the sign column
            cursor_line = false, -- Enable darker background for the cursor line
            non_current_windows = false, -- Enable darker background for non-current windows
            popup_menu = true, -- Enable lighter background for the popup menu
        },
        italics = {
            comments = true, -- Enable italic comments
            keywords = false, -- Enable italic keywords
            functions = true, -- Enable italic functions
            strings = false, -- Enable italic strings
            variables = false -- Enable italic variables
        },
--        contrast_filetypes = { -- Specify which filetypes get the contrasted (darker) background
--            "terminal", -- Darker terminal background
--            "packer", -- Darker packer background
--            "qf" -- Darker qf list background
--        },
--        high_visibility = {
--            lighter = false, -- Enable higher contrast text for lighter style
--            darker = false -- Enable higher contrast text for darker style
--        },
--        disable = {
--            borders = false, -- Disable borders between verticaly split windows
--            background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
--            term_colors = false, -- Prevent the theme from setting terminal colors
--            eob_lines = false -- Hide the end-of-buffer lines
--        },
--        lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )
--        async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)
--        custom_highlights = {} -- Overwrite highlights with your own
    })
end

--if colorscheme == "nord" then
--    --vim.g.nord_contrast = false
--    --vim.g.nord_borders = false
--    --vim.g.nord_disable_background = false
--    --vim.g.nord_italic = true
--end


-- Set theme here, use protected call
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
end
