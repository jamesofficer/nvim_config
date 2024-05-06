return {
    'RaafatTurki/corn.nvim',
    config = function()
        vim.diagnostic.config { virtual_text = false }

        require('corn').setup({
            item_preprocess_func = function(item)
                return item
              end,

            on_toggle = function(is_hidden)
                vim.diagnostic.config({ virtual_text = not vim.diagnostic.config().virtual_text })
              end
        })
    end
}
