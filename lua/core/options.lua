-- 用变量 opt 来替代 vim.opt 
local opt = vim.opt

-- 行号显示
opt.relativenumber = true
opt.number = true

-- 自动换行显示
opt.wrap = false                    -- 禁止自动换行
opt.autoindent = true               -- 自动缩进
opt.ts = 4                          -- 缩进 4 个空格等于一个 tab
opt.softtabstop = 4
opt.shiftwidth = 4                  -- 使用 >< 左右移动时的移动长度(空格)
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
opt.smartcase = true                -- 智能模式(输入大写时只检索大写)

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"              -- 左侧多一侧，用于进行 debug 等信息的展示

-- 禁止创建备份文件
opt.backup = false
opt.writebackup = false
opt.swapfile = false


-- 主题
vim.cmd[[colorscheme tokyonight-moon]]
