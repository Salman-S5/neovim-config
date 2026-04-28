vim.api.nvim_create_autocmd("VimLeave", {
    pattern = "*scratchpad.md*",
    callback = function()
        vim.cmd("wq")
    end,
})
