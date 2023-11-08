require("tokyonight").setup({
    -- use the night style
    style = "moon",
    -- disable italic for functions
    styles = {
        functions = {}
    },
    sidebars = { "qf", "vista_kind", "terminal", "packer" },
    -- Change the "hint" color to the "orange" color, and make the "error" color bright red
    on_colors = function(colors)
        colors.hint = colors.orange
        colors.comment = colors.blue                -- comment color as blue
        colors.fg_gutter = colors.orange            -- line numbering color as orange
    end
})
