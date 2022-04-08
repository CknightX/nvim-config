local M = {}

function M.setup()
    vim.cmd([[
        map <F5> :call AutoCompileRun()<CR>
        func! AutoCompileRun()
        exec "w" 
        if &filetype == 'c' 
            exec '!g++ % -o %<'
            exec '!./%<'
        elseif &filetype == 'cpp'
            exec '!g++ % -o %<'
            exec '!./%<'
        elseif &filetype == 'python'
            exec '!python %'
        elseif &filetype == 'sh'
            :!bash %
        elseif &filetype == 'go'
            exec '!go run %'
            endif                       
        endfunc
    ]])
end

return M
