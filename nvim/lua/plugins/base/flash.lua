return {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {{
        "s",
        mode = {"n", "x", "o"},
        function()
            require("flash").jump()
        end,
        desc = "Flash"
    }, {
        "S",
        mode = {"n", "x", "o"},
        function()
            require("flash").treesitter()
        end,
        desc = "Flash Treesitter"
    } -- { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    -- { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    -- { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
    init = function()
        -- FlashBackdrop with terminal support
        vim.api.nvim_set_hl(0, "FlashBackdrop", {
          italic = true,
          cterm = { italic = true },      -- Documentational only
        })

        -- FlashLabel with terminal support
        vim.api.nvim_set_hl(0, "FlashLabel", {
          fg = "#000000",
          bg = "#FFDE63",
          bold = true,
        })

    end
}
