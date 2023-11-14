local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- 保存此文件自动更新安装插件
-- 注意 PackerCompile 改成了 PackerSync
-- plugins.lua 改成了 plugins-setup.lua，适应本地文件名
vim.cmd([[
	augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
    augroup end
]])

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'                                     -- tokyonight theme
    use {
	    'nvim-lualine/lualine.nvim',
	    requires = {'kyazdani42/nvim-web-devicons', opt= true}      -- 状态栏图标
    }
    use {
	    'nvim-tree/nvim-tree.lua',                                  -- 文档树
	    requires = {
		    'nvim-tree/nvim-web-devicons'                           -- 文档树图标
	    }
    }
    use 'christoomey/vim-tmux-navigator'                            -- 使用 ctrl + h/j/k/l 来定位窗口
    use 'nvim-treesitter/nvim-treesitter'                           -- 语法高亮
    use 'p00f/nvim-ts-rainbow'                                      -- 配合 treesitter 实现不同括号不同颜色
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4', 			-- 文件检索
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    -- use {'neoclide/coc.nvim', branch = 'release'}
    use {'ethanholz/nvim-lastplace'}                                -- 自动记忆上次文件编辑位置
    use({                                                           -- 替换括号等: 例如 'cs({' 将小括号替换为大括号
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })
    use {
        'folke/noice.nvim',                                         -- 弹窗插件
        requires = {'MunifTanjim/nui.nvim', 'rcarriga/nvim-notify'}
    }
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 500
            require("which-key").setup {
        }
        end
    }
    use {                                                           -- 注释插件
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use {                                                           -- 最顶端显示 tab 
        'akinsho/bufferline.nvim',
        tag = "*",
        requires = 'nvim-tree/nvim-web-devicons'
    }
    use {                                                           -- git status 显示
        'lewis6991/gitsigns.nvim',
    }
    use({                                                           -- markdown
       "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    -- --------------------- 自动补全相关插件 --------------------
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end  -- 自动补全括号/引号等
    }
    use {                                                           -- lsp 插件管理工具
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
    }
    use {"hrsh7th/cmp-nvim-lsp"}
    use {"hrsh7th/cmp-buffer"}
    use {"hrsh7th/cmp-path"}
    use {"hrsh7th/cmp-cmdline"}
    use {"L3MON4D3/LuaSnip"}
    use {"hrsh7th/nvim-cmp"}

    if packer_bootstrap then
        require('packer').sync()
    end
end)
