# monotheme.nvim

> A simple black&white theme for Neovim

I'm a beginner at making plugins, so if you feel like making some improvements, feel free to open an issue or make a PR!

## Installation

lazy.nvim:
```lua
{
    'walker84837/monotheme.nvim',
    -- If you're planning on using this as main colorscheme
    lazy = false, -- Make sure to load during startup
    priority = 1000, -- Load this before all the other start plugins
    config = function()
        vim.cmd('colorscheme monotheme') -- Load the colorscheme
    end
}
```

## License

This repo is licensed under the [MIT license](LICENSE).
