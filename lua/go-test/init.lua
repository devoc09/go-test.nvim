local M = {}

-- @param filetype string
-- @return boolean
local function is_go_file(filetype)
  return filetype == "go"
end

-- automatic splitting according to screen size
-- @return string
local function get_split_cmd()
  return vim.api.nvim_win_get_height(vim.fn.win_getid()) * 2.1 > vim.api.nvim_win_get_width(vim.fn.win_getid()) and "split" or "vsplit"
end

-- @param path string
-- @return string
local function get_directory_path(path)
  return (path:gsub('/[^/]+$', ''))
end

-- @return void
-- execute go test of the current buffer's package
function M.go_test_package()
  if is_go_file(vim.bo.filetype) then
    local relative_path = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ':.')
    local cmd = "go test " .. './' .. get_directory_path(relative_path)
    vim.cmd(get_split_cmd() .. " term://" .. cmd)
  else
    print("Current buffer is not a go file")
  end
end

-- @return void
-- execute go test ./...
function M.go_test_all()
  if is_go_file(vim.bo.filetype) then
    local cmd = 'go test ./...'
    vim.cmd(get_split_cmd() .. " term://" .. cmd)
  else
    print("Current buffer is not a go file")
  end
end

return M
