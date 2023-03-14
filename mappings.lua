-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- Keep cursor in center
    --["j"] = { "jzz", desc = "Move down" },
    --["k"] = { "kzz", desc = "Move up" },
    ["L"] = { "<cmd>bnext<cr>", desc = "Next Buffer" },
    ["H"] = { "<cmd>bprevious<cr>", desc = "Previous Buffer" },
    ["<C-d>"] = { "<C-d>zz", desc = "Move window down" },
    ["<C-u>"] = { "<C-u>zz", desc = "Move window up" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    ["ppp"] = { "<C-\\><C-n>", desc = "leave insert mode in terminal" },
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", desc = "Move highlited block down" },
    ["K"] = { ":m '<-2<CR>gv=gv", desc = "Move highlited block up" },
    ["<leader>\""] = { ":s/\\%V.*\\%V/\"&\"<cr>", desc = "Quote around selection" },
  },
}
