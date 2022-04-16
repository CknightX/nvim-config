-- 跳转到函数的某个参数
local M = {}
local api = vim.api
local buf, win
maputils = require('utils.map')

-- 移动光标
function cursor_jump(para_index)
    -- 获取光标位置
    local linenr = api.nvim_win_get_cursor(0) 
    -- 获取当前行内容
    local curline = api.nvim_buf_get_lines(0,linenr[0]-1,linenr[0],false)[1]
    new_pos = get_para_index(curline,para_index)
    -- 设置光标位置
    api.nvim_win_set_cursor(0,new_pos)
end

-- 获取光标应该移动到的位置
local function get_para_index(str, para_index)

end

-- 跳转到第几个参数的位置
function M.jump(n)
    local _cmd = ''
    if n <= 0 then
        return
    elseif n == 1 then
        _cmd = _cmd .. '0f(l'
    else
        _cmd = _cmd .. '0f(' .. tostring(n-1) .. 'f,w'
    end
    -- 这里不能用vim.cmd
    vim.api.nvim_input(_cmd)
end


function M.setup()
    -- 最多只10个参数
    -- Do nothing
end

return M
