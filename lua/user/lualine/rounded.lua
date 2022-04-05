-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#ffffff',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.white },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

local gps = require('nvim-gps')

local function packer_plugins_count()
    local status_ok, alpha = pcall(require, "alpha")
    if not status_ok then
        return [[hello world]]
    end

    local plugins_count = 0
    if vim.fn.has("win32") == 1 then
        plugins_count = vim.fn.len(vim.fn.globpath("~/AppData/Local/nvim-data/site/pack/packer/start", "*", 0, 1))
    else
        plugins_count = vim.fn.len(vim.fn.globpath("~/.local/share/nvim/site/pack/packer/start", "*", 0, 1))
    end
    return " Plugins:    " .. plugins_count
end

local function nvim_version()
    local version = vim.version()
    local nvim_version_info = "   " .. version.major .. "." .. version.minor .. "." .. version.patch
    return " Neovim: " .. nvim_version_info
end


local alpha_extension = { sections = {
    lualine_a = { { nvim_version } },
    lualine_z = { { packer_plugins_count } },
    }, filetypes = {'alpha'} 
}

require('lualine').setup {
  options = {
    -- theme = 'gruvbox',
    -- theme = 'wombat',
    -- theme = 'jellybeans',
    theme = bubbles_theme,
    -- disabled_filetypes = {'alpha'},
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', fmt = function(str) return str:sub(1,1) end },
      -- { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    -- lualine_b = { 'branch' },
    lualine_b = { 'branch' },
    lualine_c = { },
    -- lualine_c = { 'fileformat' },
    lualine_x = {},
    -- lualine_y = { { gps.get_location, cond = gps.is_available }, 'filetype', 'progress' },
    lualine_y = { { gps.get_location, cond = gps.is_available } },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {'quickfix', 'nvim-tree', 'aerial', alpha_extension },
}
