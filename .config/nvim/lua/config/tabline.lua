local function tabline()
  local tabs = vim.api.nvim_list_tabpages()
  local current_tab = vim.api.nvim_get_current_tabpage()
  local parts = {}

  for index, tab in ipairs(tabs) do
    local is_current = tab == current_tab
    local win = vim.api.nvim_tabpage_get_win(tab)
    local buf = vim.api.nvim_win_get_buf(win)
    local name = vim.api.nvim_buf_get_name(buf)
    local buftype = vim.api.nvim_get_option_value("buftype", { buf = buf })
    local modified = vim.api.nvim_get_option_value("modified", { buf = buf })

    local filename
    if buftype == "nofile" then
      filename = vim.fn.fnamemodify(name, ":t")
    else
      filename = vim.fn.fnamemodify(name, ":p:t")
    end
    if filename == "" then
      filename = "[No Name]"
    end

    parts[#parts + 1] = string.format("%%%dT", index)
    parts[#parts + 1] = is_current and "%1* " or "%2* "
    parts[#parts + 1] = "%#TabNum#" .. index
    parts[#parts + 1] = is_current and "%#TabLineSel#" or "%#TabLine#"
    parts[#parts + 1] = " " .. filename .. (modified and "[+]" or "") .. " "
  end

  parts[#parts + 1] = "%T%#TabLineFill#%="
  parts[#parts + 1] = #tabs > 1 and "%999XX" or "X"
  return table.concat(parts)
end

_G.MyTabLine = tabline
vim.opt.showtabline = 1
vim.o.tabline = "%!v:lua.MyTabLine()"
vim.cmd("highlight link TabNum Special")
