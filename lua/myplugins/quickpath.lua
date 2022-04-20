local M = {}

function M.go_settings_path()
    config_path = ":e $MYVIMRC | :cd %:p:h"
    vim.cmd(config_path)
end


return M
