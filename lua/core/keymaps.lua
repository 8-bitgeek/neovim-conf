-- 设置引导键
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

-- ----------------- 插入模式下的配置 -----------------
keymap.set("i", "jj", "<ESC>`^")                            -- i 表示插入模式下，jj 表示用 jj 来替换 ESC 键

-- ----------------- 视觉模式下的配置 -----------------
-- 单行或多行移动: 选中后大写的 JK 来上下移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- ----------------- 普通模式下的配置 -----------------
keymap.set("n", "<leader>nh", ":noh<CR>")                   -- 关闭搜索高亮
keymap.set("n", "<leader>g", ":NvimTreeToggle<CR>")	        -- 打开/关闭 nvim-tree
keymap.set("n", "<leader>sv", ":vs<CR>")                    -- 水平分屏
keymap.set("n", "<leader>sh", ":sp<CR>")                    -- 垂直分屏
keymap.set("n", "<leader>sc", "<C-w>c")                     -- 关闭当前窗口
keymap.set("n", "<leader>so", "<C-w>o")                     -- 关闭其它窗口
keymap.set("n", "<leader>t", ":sp | terminal<CR>")          -- 下方打开 terminal
keymap.set("n", "<leader>vt", ":vsp | terminal<CR>")        -- 右侧打开 terminal
keymap.set("n", "<leader>bc", ":tabclose<CR>")              -- 关闭当前 buffer
keymap.set("n", "<leader>w", ":set wrap<CR>")               -- 自动换行
keymap.set("n", "<leader>nw", ":set nowrap<CR>")            -- 关闭自动换行
-- 窗口跳转 --
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")
-- tab 跳转
keymap.set("n", "<leader>h", ":BufferLineCyclePrev<CR>")        -- 切换到上一个标签页
keymap.set("n", "<leader>l", ":BufferLineCycleNext<CR>")        -- 切换到下一个标签页
