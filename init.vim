" ck config
" - 插件列表
call plug#begin('~/.vim/plugged')  "插件路径
" -- nerdTree 目录树
Plug 'preservim/nerdTree'
" -- 符号列表
Plug 'simrat39/symbols-outline.nvim'
" -- auto-pairs 符号补全
Plug 'jiangmiao/auto-pairs'
" -- airline 状态栏美化
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" -- LeaderF模糊查找
"Plug 'Yggdroot/LeaderF'
" -- indentLine 缩进线
Plug 'Yggdroot/indentLine'
" -- lsp插件 coc.vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" -- telescope 文件搜索
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" -- treesitter 代码高亮插件
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

" - 插件配置
" -- airline
" --- 主题设置
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
" -- indentLine
" --- 指定对齐线尺寸
let g:indent_guides_guide_size = 1
" --- 指定从第几行开始可视化显示缩进
let g:indent_guides_start_level = 2
" -- nerdTree
" --- 按键映射
nnoremap <C-n> :NERDTreeToggle<CR>
" -- nvim-treesitter 代码高亮等
" --- 加载配置文件
lua require('plugin-config/nvim-treesitter')


" - 基础配置
" -- 默认工作路径
cd d:\Project
" -- 工作路径随着当前缓冲区自动跳转
set autochdir
" -- 按键映射
" -- 始终显示状态栏
set laststatus=2
" -- 缩进设置
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
" -- 显示行号
set nu
" -- GUI字体设置（需要放到ginit.vim中）
"if exists(':GuiFont')
"   GuiFont! sarasa term sc:h12
"endif

" - 个人脚本
" -- 一键F5编译运行
" --- 按键映射
map <F5> :call AutoCompileRun()<CR>
" --- 代码
func! AutoCompileRun()
    exec "w" 
    if &filetype == 'c' 
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'cpp'
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'python'
        exec '!time python %'
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'go'
        exec '!go run %'
    endif                                                                              
endfunc 
