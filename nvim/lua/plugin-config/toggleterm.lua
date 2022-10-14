local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
    return
end


local Terminal = require("toggleterm.terminal").Terminal

local shell = Terminal:new({
  cmd = "zsh",
  dir = "git_dir",
  direction = "float",
  float_opts = {
    border = "curved",        -- 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
  },
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<C-\\>", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
})

local horizontal_shell = Terminal:new({
  cmd = "zsh",
  dir = "git_dir",
  direction = "horizontal",
})

local tab_shell = Terminal:new({
  cmd="zsh",
  dir="git_dir",
  direction = "tab",
})

function _TAB_SHELL_TOGGLE()
    tab_shell:toggle()
end

function _SHELL_TOGGLE()
    shell:toggle()
end

function _HORIZONTAL_SHELL_TOGGLE()
    horizontal_shell:toggle()
end

-- local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
local lazygit = Terminal:new({
  cmd = "lazygit",
  dir = "git_dir",
  direction = "float",
  float_opts = {
    border = "curved",        -- 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
  },
  -- function to run on opening the terminal
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
  -- function to run on closing the terminal
  -- on_close = function(term)
  --   vim.cmd("Closing terminal")
  -- end,
})

function _LAZYGIT_TOGGLE()
    lazygit:toggle()
end

local python = Terminal:new({
  cmd = "python",
  dir = "git_dir",
  direction = "float",
  float_opts = {
    border = "curved",        -- 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
  },
  -- function to run on opening the terminal
})

local node = Terminal:new({
  cmd = "node",
  dir = "git_dir",
  direction = "float",
  float_opts = {
    border = "curved",        -- 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
  },
  -- function to run on opening the terminal
})

function _NODE_TOGGLE()
    node:toggle()
end


function _PYTHON_TOGGLE()
    python:toggle()
end
