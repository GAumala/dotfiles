--  _   _                 _
-- | \ | | ___  _____   _(_)_ __ ___
-- |  \| |/ _ \/ _ \ \ / / | '_ ` _ \
-- | |\  |  __/ (_) \ V /| | | | | | |
-- |_| \_|\___|\___/ \_/ |_|_| |_| |_|
--
-- by Stephan Raabe (2023)
-- -----------------------------------------------------

-- Bootstrap Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Basic configuration
vim.opt.showmatch = true            -- show matching
vim.opt.ignorecase = true           -- case insensitive
vim.opt.mouse = "v"                 -- middle-click paste with
vim.opt.hlsearch = true             -- highlight search
vim.opt.incsearch = true            -- incremental search
vim.opt.tabstop = 4                 -- number of columns occupied by a tab
vim.opt.softtabstop = 4             -- see multiple spaces as tabstops so <BS> does the right thing
vim.opt.expandtab = true            -- converts tabs to white space
vim.opt.shiftwidth = 4              -- width for autoindents
vim.opt.autoindent = true           -- indent a new line the same amount as the line just typed
vim.opt.number = true               -- add line numbers
vim.opt.relativenumber = true       -- Enable relative line numbers
vim.opt.wildmode = "longest,list"   -- get bash-like tab completions
-- vim.opt.colorcolumn = "80"       -- set an 80 column border for good coding style
vim.opt.mouse = "a"                 -- enable mouse click
-- vim.opt.clipboard = "unnamedplus"   -- using system clipboard
-- vim.opt.cursorline = true -- highlight current cursorline
vim.opt.ttyfast = true              -- Speed up scrolling in Vim
-- vim.opt.spell = true -- enable spell check (may need to download language package)
vim.opt.splitright = true           -- split buffers to right
vim.opt.autoread = true             -- reload buffers from disk when they are updated externally
vim.opt.autochdir = true            -- automatically change working dir to active buffer's dir

-- Filetype handling
vim.cmd("filetype plugin indent on") -- allow auto-indenting depending on file type
vim.cmd("syntax on") -- syntax highlighting
vim.cmd("filetype plugin on")

-- Highlight groups
vim.api.nvim_set_hl(0, "NonText", { bg = "NONE" })
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
vim.api.nvim_set_hl(0, "TabLine", { bg = "NONE" })

vim.keymap.set('i', 'kj', '<Esc>')  -- use kj as Esc

-- Plugin configuration with Lazy.nvim
require("lazy").setup({
  -- Add your plugins here
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- Only setup the colorscheme configuration, don't enable it
      require("tokyonight").setup({
        -- Your Tokyo Night configuration options here
        style = "night", -- can be "storm", "moon", "night", "day"
      })
    end,
  },

    -- ALE (Asynchronous Lint Engine)
  {
    "dense-analysis/ale",
    config = function()
      -- Set linters for specific file types
      vim.g.ale_linters = {
        python = {'flake8', 'pylint'},
        javascript = {'eslint'},
        typescript = {'eslint', 'tsserver'},
        lua = {'luacheck'},
      }
      
      -- Set fixers
      vim.g.ale_fixers = {
        python = {'black', 'isort'},
        javascript = {'prettier'},
        typescript = {'prettier'},
        lua = {'stylua'},
      }
      vim.g.ale_fix_on_save = 1
    end,
  },
  
  -- You can add more plugins following the same pattern
})
