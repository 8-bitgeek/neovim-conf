-- 默认不开启 nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

vim.keymap.set('n', '<leader>v', ":NvimTreeFindFile<CR>")

local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
end

local api = require("nvim-tree.api")

-- vim.keymap.set('n', 's', api.node.open.vertical, opts("Open: Vertical Split"))
vim.keymap.set('n', '?', api.tree.toggle_help, opts("Help"))
