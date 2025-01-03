# go-test.nvim

A Neovim plugin to run Go tests.

## Caution
This plugin is still in development. Currently, it only supports running tests currently opened buffer.

## Install
### Using 'lazy.nvim'
```lua
{
  'devoc09/go-test.nvim',
  keys = {
    { ',,', function() require('go-test').go_test_buffer() end }, -- example keymap
  },
  ft = {'go'}, -- recommended
}
```
