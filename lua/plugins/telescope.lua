local builtin = require("telescope.builtin")

-- 进入 telescope 页面会是插入模式，回到正常模式就可以用 j/k 来移动了
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})               -- 查找文件
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) 	            -- 检索文件中的内容, 环境里要安装 ripgrep
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})                  -- 查找缓冲区中的文件
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})                -- 查找帮助文件
