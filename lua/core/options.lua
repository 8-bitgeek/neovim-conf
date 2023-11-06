-- 用变量 opt 来替代 vim.opt 
local opt = vim.opt

-- 行号显示
opt.relativenumber = true
opt.number = true

-- 自动换行显示
opt.wrap = false
opt.autoindent = true               -- 自动缩进
opt.ts = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- 光标所在行突出显示
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索忽略大小写
opt.ignorecase = true               -- 忽略大小写
opt.smartcase = true                -- 智能模式

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"              -- 左侧多一侧，用于进行 debug 等信息的展示

-- 主题
vim.cmd[[colorscheme tokyonight-moon]]
