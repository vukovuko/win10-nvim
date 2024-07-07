-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Remap netrw explorer
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

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

-- In visual mode ('V') move highlighted lines with 'J' and 'K'
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- 'J' appends the bottom line at the end and cursor stays in place
vim.keymap.set('n', 'J', 'mzJ`z')

vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('n', '<C-p>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)

-- Navigate to the next item in the quick list
-- vim.keymap.set('n', '<C-k>', '<cmd>cprev<CR>zz')

-- Navigate to the previous item in the quick list
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')

-- Navigate to the next item in the location list
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')

-- Navigate to the previous item in the location list
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

-- Search and replace the current word under the cursor
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Tabs
vim.keymap.set('n', 'te', ':tabedit')
vim.keymap.set('n', '<tab>', ':tabnext<Return>')
vim.keymap.set('n', '<s-tab>', ':tabprev<Return>')
vim.keymap.set('n', 'tw', ':tabclose<Return>')

-- Split window
vim.keymap.set('n', 'ss', ':split<Return>')
vim.keymap.set('n', 'sv', ':vsplit<Return>')
vim.keymap.set('n', 'sx', ':close<Return>')

-- Move window
vim.keymap.set('n', 'sh', '<C-w>h')
vim.keymap.set('n', 'sk', '<C-w>k')
vim.keymap.set('n', 'sj', '<C-w>j')
vim.keymap.set('n', 'sl', '<C-w>l')

-- Resize window
-- vim.keymap.set('n', '<C-S-h>', '<C-w><')
-- vim.keymap.set('n', '<C-S-l>', '<C-w>>')
-- vim.keymap.set('n', '<C-S-k>', '<C-w>+')
-- vim.keymap.set('n', '<C-S-j>', '<C-w>-')

-- Move lines up and down in normal mode using CTRL-Shift-J and CTRL-Shift-K
-- vim.keymap.set('n', '<C-j>', ':m .+1<CR>==', {noremap = true, silent = true})
-- vim.keymap.set('n', '<C-k>', ':m .-2<CR>==', {noremap = true, silent = true})

-- Move lines up and down in insert mode using CTRL-Shift-J and CTRL-Shift-K
-- vim.keymap.set('i', '<C-j>', '<Esc>:m .+1<CR>==gi', {noremap = true, silent = true})
-- vim.keymap.set('i', '<C-k>', '<Esc>:m .-2<CR>==gi', {noremap = true, silent = true})

-- Move lines up and down in visual mode using CTRL-Shift-J and CTRL-Shift-K
-- vim.keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv", {noremap = true, silent = true})
-- vim.keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv", {noremap = true, silent = true})
