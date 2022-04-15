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


function M.setup()
    -- 最多只10个参数

    maputils.mapkey('n','<leader>pa',"0f(l")
    maputils.mapkey('n','<leader>pb',"0f(1f,w")
    maputils.mapkey('n','<leader>pc',"0f(2f,w")
    maputils.mapkey('n','<leader>pd',"0f(3f,w")
    maputils.mapkey('n','<leader>pe',"0f(4f,w")
    maputils.mapkey('n','<leader>pf',"0f(5f,w")
end

return M

