return {
	"nvim-neo-tree/neo-tree.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
        keys = {
            { "<leader>nt", "<cmd>Neotree toggle position=left<CR>", desc = "Open the neo-tree", mode = { "n", "v" } }
        },
        config = true,
}
