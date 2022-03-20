# nvim
## What's this?
It's my neovim setup. The main goal for it is to be as minimal and maintainable as possible so that I can use neovim for other things than configuring neovim.

## It has some features
- The IDE-like stuff: autocomplete, rename, hover, go to definition etc. with native LSP
- Better syntax highlighting with treesitter
- Other qol stuff like a proper file browser, some git integration, visual navigation between buffers
- Easy setup for multiple languages
- Also works as a note taking app / non-coding text editor for markdown files
- See [plugins.lua](https://github.com/eemilhaa/nvim/blob/main/lua/user/plugins.lua) for a complete list of plugins

## It also tries to keep things simple
- Use only the absolutely necessary plugins to achieve the aforementioned
- Use the defaults for plugins and for neovim when sensible
- No weird UI / UX shenanigans: nothing pops at your face / hijacks the cursor / gets inserted unless you explicitly choose so

*This config is based on the excellent [neovim from scratch](https://github.com/LunarVim/Neovim-from-scratch) template*
