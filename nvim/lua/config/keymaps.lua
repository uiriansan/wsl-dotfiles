-- BASIC KEYMAPS
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
-- vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- cokeline.nvim
vim.keymap.set("n", "<C-q>", "<Plug>(cokeline-focus-prev)", { desc = "Previous buffer" })
vim.keymap.set("n", "<C-e>", "<Plug>(cokeline-focus-next)", { desc = "Next buffer" })
-- vim.keymap.set("n", "<C-w>", "<Plug>(cokeline-pick-close)", { desc = "Close buffer" })
vim.keymap.set("n", "<C-w>", "<cmd>bn<bar>sp<bar>bp<bar>bd<CR>", { desc = "Close buffer" })

vim.keymap.set("n", "<F1>", "<cmd>Neotree toggle source=filesystem<CR>", { desc = "Toggle NeoTree Files" })
vim.keymap.set("n", "<F2>", "<cmd>Neotree toggle source=diagnostics<CR>", { desc = "Toggle NeoTree Diagnostics" })
vim.keymap.set("n", "<F3>", "<cmd>Neotree toggle source=git_status<CR>", { desc = "Toggle NeoTree Git" })
