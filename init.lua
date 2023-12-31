require("core.keymaps")
require("plugins.plugins-setup")
require("plugins.lualine")
require("plugins.nvim-tree")
require("plugins.treesitter")
-- require("plugins.coc")
require("plugins.nvim-lastplace")
require("plugins.noice")
require("plugins.bufferline")
require("plugins.tokyonight")
require("plugins.gitsigns")
require("plugins.nvim-cmp")
require("plugins.mason")                    -- 需要保证 mason.lua 在 lsp.lua 之前加载
require("plugins.lsp")

-- 引用 lua/core/options.lua 配置文件
require("core.keymaps")
require("core.options")
require("plugins.telescope")
