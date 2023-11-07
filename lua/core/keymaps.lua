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
keymap.set("n", "<leader>ss", ":vs<CR>")                    -- 水平分屏
keymap.set("n", "<leader>sp", ":sp<CR>")                    -- 垂直分屏
-- 窗口跳转 --
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")
-- tab 跳转
keymap.set("n", "<leader>h", ":BufferLineCyclePrev<CR>")        -- 切换到上一个标签页
keymap.set("n", "<leader>l", ":BufferLineCycleNext<CR>")        -- 切换到下一个标签页
