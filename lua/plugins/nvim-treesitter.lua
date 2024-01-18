-- return {
--     "nvim-treesitter/nvim-treesitter",
--     "p00f/nvim-ts-rainbow",-- 配合treesitter，不同括号颜色区分
--     config = function()
--         require'nvim-treesitter.configs'.setup {
--          -- 添加不同语言
--             ensure_installed = { "vim", "bash", "c", "cpp",  "json", "lua", "python","markdown", "markdown_inline"}, -- one of "all" or a list of languages
--             highlight = { enable = true },
--             indent = { enable = true },
--
--         -- 不同括号颜色区分
--             rainbow = {
--             enable = true,
--             extended_mode = true,
--             max_file_lines = nil,
--             },
--         }
--     end,
-- }
return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        "nvim-treesitter/playground",
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    main = "nvim-treesitter.configs",
    -- build = ":TSUpdate",
    opts = {
        ensure_installed = { "vim", "bash", "c", "cpp",  "json", "lua", "python","markdown", "markdown_inline"},
        highlight = {
            enable = true,
        },
        indent = {
            enable = true,
        },
        playground = {
            enable = true,
        },
        textobjects = {
            select = {
                enable = true,

                -- Automatically jump forward to textobj, similar to targets.vim
                lookahead = true,

                keymaps = {
                    -- You can use the capture groups defined in textobjects.scm
                    ["af"] = "@function.outer",
                    ["if"] = "@function.inner",
                    ["ac"] = "@class.outer",
                    -- You can optionally set descriptions to the mappings (used in the desc parameter of
                    -- nvim_buf_set_keymap) which plugins like which-key display
                    ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                    -- You can also use captures from other query groups like `locals.scm`
                    ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
                },
                -- You can choose the select mode (default is charwise 'v')
                --
                -- Can also be a function which gets passed a table with the keys
                -- * query_string: eg '@function.inner'
                -- * method: eg 'v' or 'o'
                -- and should return the mode ('v', 'V', or '<c-v>') or a table
                -- mapping query_strings to modes.
                selection_modes = {
                    ['@parameter.outer'] = 'v', -- charwise
                    ['@function.outer'] = 'V', -- linewise
                    ['@class.outer'] = '<c-v>', -- blockwise
                },
                -- If you set this to `true` (default is `false`) then any textobject is
                -- extended to include preceding or succeeding whitespace. Succeeding
                -- whitespace has priority in order to act similarly to eg the built-in
                -- `ap`.
                --
                -- Can also be a function which gets passed a table with the keys
                -- * query_string: eg '@function.inner'
                -- * selection_mode: eg 'v'
                -- and should return true of false
                include_surrounding_whitespace = false,
            },
        },
    },
}
