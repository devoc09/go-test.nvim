# go-test.nvim

A Neovim plugin to run Go tests.

## Caution
This plugin is still in development. Currently, it only supports running tests currently opened buffer.

## Install
### Using 'lazy.nvim'
```lua
{
  'devoc09/go-test.nvim',
  -- example keymaps
  keys = {
    { '<leader>,', function() require('go-test').go_test_package() end },
    { '<leader>t', function() require('go-test').go_test_all() end },
  },
  ft = {'go'}, -- recommended
}
```
