---------------------------------------------------------------------------------------------------
-- SETTINGS
---------------------------------------------------------------------------------------------------
-- general
vim.opt.clipboard = 'unnamedplus'

vim.opt.syntax = 'enabled'
vim.wo.foldmethod = 'marker'
vim.wo.colorcolumn = '100'
vim.opt.completeopt = 'menuone,noselect'

vim.opt.showmatch = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hidden = true
vim.opt.cursorline = true
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.cul = true
vim.opt.ruler = true
vim.opt.termguicolors = true
vim.opt.showmode = false
vim.opt.wrap = false
vim.bo.swapfile = false

vim.bo.synmaxcol = 240
vim.opt.history = 100
vim.opt.updatetime = 250
vim.opt.cmdheight = 2
vim.opt.showtabline = 2
vim.opt.numberwidth = 2

-- show shorter messages
vim.opt.shortmess:append("c")

-- Allow us to edit text that doesn't classify as characters
-- in visual block mode
vim.opt.virtualedit = "block"

-- Set up the undofile directory
vim.o.undofile = true
vim.o.undodir = "/home/nep/.cache/nvim/undo"

-- tabbing and indenting
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.expandtab = true
vim.bo.autoindent = true
vim.bo.smartindent = true
vim.bo.copyindent = true
vim.bo.preserveindent = true
vim.opt.list = true

vim.cmd [[
  if line ("'\'") > 1 && line("'\'") <= line("$") |
    exe "normal! g'\"" |
  endif
]]

-- scrolloff
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 16

--[[
-- netrw
vim.g.netrw_keepdir = 0
vim.g.netrw_winsize = 15
vim.g.netrw_banner = 0
vim.g.netrw_localcopydircmd = 'cp -r'
vim.g.netrw_altv = 1
vim.g.netrw_browse_split = 2
]]--

-- optimisations
vim.opt.shadafile = "NONE"
vim.g.loaded_gzip = false
vim.g.loaded_matchit = false
vim.g.loaded_netrwPlugin = true
vim.g.loaded_tarPlugin = false
vim.g.loaded_zipPlugin = false
vim.g.loaded_man = false
vim.g.loaded_2html_plugin = false
vim.g.loaded_remote_plugins = false

-- remove whitespace on save
vim.cmd([[au BufWritePre * :%s/\s\+$//e]])

-- highlight on yank
vim.api.nvim_exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
  augroup end
]], false)

-- don't auto commenting new lines
vim.cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])

-- 2 spaces for selected filetypes
vim.cmd([[autocmd FileType xml,html,xhtml,css,scss,javascript,lua setlocal shiftwidth=2 tabstop=2]])

-- 8 spaces for Go files
vim.cmd([[autocmd FileType go setlocal shiftwidth=8 tabstop=8]])

-- set closer line in the set formats
vim.cmd([[autocmd FileType text,xml,html,xhtml,javascript setlocal cc=0]])

-- Markdown and LaTeX Specific
vim.cmd([[autocmd FileType markdown,tex setlocal spell spelllang=en_us]])
vim.cmd([[autocmd FileType markdown,tex set conceallevel=3 colorcolumn=75]])

