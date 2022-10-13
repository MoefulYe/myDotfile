local opt = {
  noremap = true,
  silent = true,
}

local map = vim.api.nvim_set_keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("n","<f1>",":NvimTreeToggle<CR>",opt)

map("v", "$", "g_", opt)
map("v", "g_", "$", opt)
map("n", "$", "g_", opt)
map("n", "g_", "$", opt)

map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)
map("n", "<A-w>", "<C-w>w", opt)
map("n", "<A-q>", "<C-w>q", opt)

map("t","<Esc>","<C-\\><C-n>",opt)
map("t", "<A-h>", "<C-\\><C-n><C-w>h", opt)
map("t", "<A-j>", "<C-\\><C-n><C-w>j", opt)
map("t", "<A-k>", "<C-\\><C-n><C-w>k", opt)
map("t", "<A-l>", "<C-\\><C-n><C-w>l", opt)
map("t", "<A-w>", "<C-\\><C-n><C-w>w", opt)
map("t", "<A-q>", "<C-\\><C-n><C-w>q", opt)


map("n", "<A-Left>", ":vertical resize -2<CR>", opt)
map("n", "<A-Right>", ":vertical resize +2<CR>", opt)
map("n", "<A-Up>", ":resize +2<CR>", opt)
map("n", "<A-Down>", ":resize -2<CR>", opt)

map("n","ss","s",opt)
map("n", "s", "", opt)
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt)


map("n", "<C-j>", "4j", opt)
map("n", "<C-k>", "4k", opt)
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)

map("i","<C-h>","<ESC>I",opt)
map("i","<C-l>","<ESC>A",opt)

-- 插件快捷键
local pluginKeys = {}

-- nvim-tree
-- 列表快捷键
pluginKeys.nvimTreeList = {
  -- 打开文件或文件夹
  { key = {"<CR>", "o", "<2-LeftMouse>"}, action = "edit" },
  -- 分屏打开文件
  { key = "v", action = "vsplit" },
  { key = "h", action = "split" },
  -- 显示隐藏文件
  { key = "i", action = "toggle_custom" }, -- 对应 filters 中的 custom (node_modules)
  { key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
  -- 文件操作
  { key = "<F5>", action = "refresh" },
  { key = "a", action = "create" },
  { key = "d", action = "remove" },
  { key = "r", action = "rename" },
  { key = "x", action = "cut" },
  { key = "c", action = "copy" },
  { key = "p", action = "paste" },
  { key = "s", action = "system_open" },
  { key = "l", action = "toggle_file_info" }
}
-- bufferline
-- 左右Tab切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
-- 关闭
--"moll/vim-bbye"
map("n", "<C-w>", ":Bdelete!<CR>", opt)
-- Telescope
-- 查找文件
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- 全局搜索
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)
pluginKeys.telescopeList = {
  i = {
    -- 关闭窗口
    ["<C-c>"] = "close",
    -- 预览窗口上下滚动
    ["<C-u>"] = "preview_scrolling_up",
    ["<C-d>"] = "preview_scrolling_down",
  },
}
return pluginKeys
