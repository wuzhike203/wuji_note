set shortmess=atI   "启动的时候不显示那个援助乌干达儿童的提示  
"编码"
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

set termencoding=utf-8

set encoding=utf-8

set fileencodings=ucs-bom,utf-8,cp936

set fileencoding=utf-8
" 显示中文帮助
set helplang=cn

"处理菜单及右键乱码"
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"处理consle输出乱码
language messages zh_CN.utf-8
winpos 5 5          " 设定窗口位置  
set lines=20 columns=80    " 设定窗口大小  

set nu              " 显示行号  

set guifont=Courier_New:h14:cANSI   " 设置字体  
" 设置配色方案
colorscheme desert
"代码补全 
set completeopt=preview,menu 
"共享剪贴板  
set clipboard+=unnamed 

"从不备份  
set nobackup
set noswapfile

"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch

set confirm           "删除时，显示删除对话框

"使backspace可以删除indent,"",eol,start等"
set backspace=2

set expandtab            " 用空格代替制表符
set autoindent           " 自动缩进
set tabstop=4            " Tab键的宽度
set shiftwidth=4
set softtabstop=4         " 统一缩进为4

"这四个选项控制 C 程序缩进:
"cindent'       使 Vim 对 C 程序自动缩进。
"cinkeys'       指定在插入模式下按哪个键可以再次缩进。
"cinoptions'    设定你喜好的缩进模式。
"cinwords'      定义在下一行中开始一个额外缩进的关键字。

set cursorline              " 突出显示当前行

set ruler           " 显示标尺  


" 高亮显示匹配的括号
set showmatch

"pathogen 插件管理器
execute pathogen#infect()
"语法高亮
syntax on
"文件类型检测
filetype on
"文件类型插件开启
filetype plugin on
"文件类型缩进,在vim74/indent文件夹"
filetype indent on

"自动补全
"     按下(   相当于按下(键+)键+<ESC>键+i键
:inoremap ( ()<ESC>i

:inoremap ) <c-r>=ClosePair(')')<CR>

"            <CR>就是Ctrl键
":inoremap { {<CR>}<ESC>O
:inoremap { {}<ESC>i

:inoremap } <c-r>=ClosePair('}')<CR>

:inoremap [ []<ESC>i

:inoremap ] <c-r>=ClosePair(']')<CR>

:inoremap " ""<ESC>i

:inoremap ' ''<ESC>i


"F5 python"
noremap <F5> <Esc>:!python %<cr>

"自动插入时间和日期"
"<c-d>  : 日期
:imap <silent> <c-d> <c-r>=strftime("%y-%m-%d")<cr> 
"<c-t>  : 时间
:imap <silent> <c-t> <c-r>=strftime("%H:%M:%S")<cr> 

set showcmd         " 输入的命令显示出来，看的清楚些  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   
"状态行显示的内容  
"
autocmd InsertEnter * se cul    " 用浅色高亮当前行  
autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
set laststatus=1    " 启动显示状态行(1),总是显示状态行(2)  

set foldenable      " 允许折叠  
set foldmethod=manual   " 手动折叠  

set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  

nmap <leader>w :w!<cr>
nmap <leader>f :find<cr>

" 映射全选+复制 ctrl+a
map <C-A> ggVGY
map! <C-A> <Esc>ggVGY
map <F12> gg=G

" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y

"去空行  
nnoremap <F2> :g/^\s*$/d<CR> 

"比较文件  
nnoremap <C-F2> :vert diffsplit 

"新建标签  
map <M-F2> :tabnew<CR>  

"列出当前目录文件  
map <F3> :tabnew .<CR>  

"打开树状文件目录  
map <C-F3> \be  

" 设置当文件被改动时自动载入
set autoread

" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>

"make 运行
:set makeprg=g++\ -Wall\ \ %

"自动保存
set autowrite

" 去掉输入错误的提示声音
set noeb

" 历史记录数
set history=1000

" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a

set selection=exclusive
set selectmode=mouse,key

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\


" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=2

" 使用浏览器打开内容"
nmap <F7> :!start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" %<cr>

function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction

