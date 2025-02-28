-- Keybindings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


-- Telescope Keybindings
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)

-- LSP Keybindings
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)

-- Nvim Tree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", opts)

-- Multi-Tab commands
map("n", "<leader>nt", "<cmd>tabnew<CR>", opts)
map("n", "<leader>nn", "<cmd>tabnext<CR>", opts)
map("n", "<leader>np", "<cmd>tabprevious<CR>", opts)
map("n", "<leader>nx", "<cmd>tabclose<CR>", opts)

-- Split commands
map("n", "<leader>vs", "<cmd>vsplit<CR>", opts)
map("n", "<leader>hs", "<cmd>split<CR>", opts)
map("n", "<leader>k", "<c-w>k", opts)
map("n", "<leader>j", "<c-w>j", opts)
map("n", "<leader>h", "<c-w>h", opts)
map("n", "<leader>l", "<c-w>l", opts)
map("n", "<leader>cs", "<cmd>close 2<CR>", opts)

-- Terminal mode exit
map("t", "<leader>et", "<c-\\><c-n>", opts)


-- Toggle Term commands
map("n", "<leader>ot", ":ToggleTerm<CR>", opts)


-- Fugative commands
map("n","<leader>g",":Git<CR>",opts)
map("n","<leader>ga",":Gwrite<CR>",opts)
map("n","<leader>gc",":Git commit<CR>",opts)
map("n","<leader>gp",":Git push<CR>",opts)
map("n","<leader>gl",":Git pull<CR>",opts)
map("n","<leader>gl",":Git log<CR>",opts)


-- Search commands
map("n", "<leader>s", "/", opts)
map("n","<leader>ho",":nohlsearch<CR>",opts)

--Lazygit commands
map("n", "<leader>lg", ":LazyGit<CR>", opts)

