
require("plugins.plugins-setup")
require("plugins.lualine")
require("plugins.nvim-tree")
require("plugins.treesitter")
require("plugins.coc")
require("plugins.nvim-lastplace")
require("plugins.noice")
require("plugins.bufferline")
require("plugins.tokyonight")
require("plugins.gitsigns")

-- 引用 lua/core/options.lua 配置文件
require("core.keymaps")
require("core.options")
require("plugins.telescope")
