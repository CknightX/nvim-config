local M = {}


function M.setup()
    -- vim.api.nvim_create_user_command("GoSettingsPath",":cd %:p:h",{})
    -- 配置文件路径
    config_path = ":e $MYVIMRC | :cd %:p:h | split . | wincmd k"
    vim.cmd(":command GoSettingsPath " .. config_path)
end

return M
