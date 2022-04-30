
local M = {}
api = vim.api
maputils = require("utils.map")

local function get_cur_filepath()
    return api.nvim_buf_get_name(0)
end

local function get_filetype()
    return vim.bo.filetype
end

local function run_shell(shell_cmd)
    vim.cmd(":!" .. shell_cmd)
end

-- 执行编译运行工作
function M.compile_run()
    filetype = get_filetype()
    if filetype == "c" or filetype == "cpp" then
        run_shell("g++ % -o %<")
        run_shell("./%<")
    elseif filetype == "python" then
        run_shell("python %")
    elseif filetype == "sh" then
        run_shell("bash %")
    elseif filetype == "go" then
        run_shell("go run %")
    elseif filetype == "haskell" then
        run_shell("runhaskell %")
    end
end

function M.setup()
    maputils.maplua("<f5>","require('myplugins.autorun').compile_run()")
end

return M

