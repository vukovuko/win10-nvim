vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- In visual mode ('V') move highlighted lines with 'J' and 'K'
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- 'J' appends the bottom line at the end and cursor stays in place
vim.keymap.set('n', 'J', 'mzJ`z')

-- 'CTRL + d' and 'CTRL + u' half page jump with cursor in the middle
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Search terms to be in the middle
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- In visual selection replace selected text with what was last yanked or deleted
vim.keymap.set('x', '<leader>p', [["_dP]])

-- Copy and paste outside neovim
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

-- Delete to void register
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])

-- Make current file executible
vim.keymap.set('n', '<leader>fexe', ':!chmod +x %<CR>', { silent = true })

vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('n', '<C-t>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)

vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Tabs
-- keymap.set("n", "te", ":tabedit")
-- keymap.set("n", "<tab>", ":tabnext<Return>", opts)
-- keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- keymap.set("n", "tw", ":tabclose<Return>", opts)

-- Split window
-- keymap.set("n", "ss", ":split<Return>", opts)
-- keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
-- keymap.set("n", "sh", "<C-w>h")
-- keymap.set("n", "sk", "<C-w>k")
-- keymap.set("n", "sj", "<C-w>j")
-- keymap.set("n", "sl", "<C-w>l")

-- Resize window
-- keymap.set("n", "<C-S-h>", "<C-w><")
-- keymap.set("n", "<C-S-l>", "<C-w>>")
-- keymap.set("n", "<C-S-k>", "<C-w>+")
-- keymap.set("n", "<C-S-j>", "<C-w>-")

-- Move lines up and down in normal mode using CTRL-Shift-J and CTRL-Shift-K
-- vim.keymap.set('n', '<C-j>', ':m .+1<CR>==', {noremap = true, silent = true})
-- vim.keymap.set('n', '<C-k>', ':m .-2<CR>==', {noremap = true, silent = true})

-- Move lines up and down in insert mode using CTRL-Shift-J and CTRL-Shift-K
-- vim.keymap.set('i', '<C-j>', '<Esc>:m .+1<CR>==gi', {noremap = true, silent = true})
-- vim.keymap.set('i', '<C-k>', '<Esc>:m .-2<CR>==gi', {noremap = true, silent = true})

-- Move lines up and down in visual mode using CTRL-Shift-J and CTRL-Shift-K
-- vim.keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv", {noremap = true, silent = true})
-- vim.keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv", {noremap = true, silent = true})

vim.keymap.set('n', '<leader><leader>', function()
  vim.cmd 'so'
end)
