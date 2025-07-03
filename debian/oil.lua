require("oil").setup({
    columns = {
        "icon",
        -- "permissions",
        -- "size",
        -- "mtime",
    },
    watch_for_changes = true,
    view_options = {
        is_hidden_file = function(name, bufnr)
            return name:sub(1, 1) == "." and not (name:sub(2, 2) == ".")
        end,
    },
})

map("n", "-", "<cmd>Oil<cr>")
