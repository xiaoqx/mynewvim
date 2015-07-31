" Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif

" 定义快捷键的前缀，即 <Leader>
let mapleader=";"


 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'
" NeoBundleFetch 'Shougo/unite.vim'

NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-scripts/PaperColor.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'Lokaltog/vim-distinguished'
NeoBundle 'vim-scripts/github-theme'
NeoBundle 'vim-scripts/wombat256.vim'
NeoBundle 'vim-scripts/werks.vim'
NeoBundle 'vim-scripts/sonoma.vim'
NeoBundle 'vim-scripts/primary.vim'
NeoBundle 'vim-scripts/apprentice.vim'

" stl 语法 
NeoBundle 'NLKNguyen/c-syntax.vim'
"NeoBundle 'Mizuchi/STL-Syntax'
NeoBundle 'octol/vim-cpp-enhanced-highlight'
NeoBundle 'hdima/python-syntax'
" 可视化缩进
NeoBundle 'nathanaelkane/vim-indent-guides'
" c h 切换
NeoBundle 'vim-scripts/a.vim'
" 标签
NeoBundle 'kshenoy/vim-signature'
" tags 
NeoBundle 'majutsushi/tagbar'
NeoBundle 'taglist'

" 注释 
NeoBundle 'scrooloose/nerdcommenter'
" 代码开发， 补全
NeoBundle 'c.vim'
"NeoBundle 'SirVer/ultisnips'
NeoBundle 'vim-snippets'
NeoBundle 'Shougo/neocomplete.vim'

" 搜索
NeoBundle 'dyng/ctrlsf.vim'
NeoBundle 'kien/ctrlp.vim'

" 窗口管理
NeoBundle 'winmanager'

NeoBundle 'conque'

" undo
NeoBundle 'sjl/gundo.vim'

" easymotion
NeoBundle 'easymotion/vim-easymotion'

 call neobundle#end()

 filetype plugin indent on

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" 文件类型侦测

" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" vim 自身（非插件）快捷键

" 定义快捷键到行首和行尾
nmap lb 0
nmap le $

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至vim
nmap <Leader>p "+p

" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>

"窗口切换
" 设置快捷键遍历子窗口
" 依次遍历
noremap nw <C-W><C-W>
let g:C_Ctrl_j='off'
" 跳转至下方的子窗口
map <C-j> <ESC><C-W>j
" 跳转至上方的子窗口
map <C-k> <ESC><C-W>k
" 跳转至右方的窗口
map <C-h> <ESC><C-W>h
map <C-l> <ESC><C-W>l
inoremap <C-j> <ESC><C-W>j
inoremap <C-k> <ESC><C-W>k
inoremap <C-h> <ESC><C-W>h
inoremap <C-l> <ESC><C-W>l

nnoremap <Leader>vv :vsplit<CR>
nnoremap <Leader>ss :split<CR>

" set open vimrc
nnoremap <leader>ee :e ~/.vimrc<CR>
nnoremap <leader>eb :e ~/.bashrc<CR>

"backspace可以删除
set backspace=indent,eol,start




" 定义快捷键在结对符之间跳转，助记 pair
nmap <Leader>pa %

" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" 开启实时搜索功能
set incsearch

" 搜索时大小写不敏感
set ignorecase

" 关闭兼容模式
set nocompatible

" vim 自身命令行模式智能补全
set wildmenu


" >>>>>>>>>>>>>>>>>
" 配色方案
"set background=dark
"colorscheme solarized
"colorscheme molokai
"colorscheme phd
"colorscheme distinguished
"colorscheme github
"colorscheme wombat256mod
"colorscheme werks
"colorscheme sonoma
"colorscheme primary
"colorscheme apprentice

" 设置paperColor
set t_Co=256
colorscheme PaperColor

" 设置vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9




" <<<<<<<<<<<<<<<<<<<


" 将外部命令 wmctrl 控制窗口最大化的命令行参数封装成一个 vim 的函数
fun! ToggleFullscreen()
	call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endf
" 全屏开/关快捷键
map <silent> <F11> :call ToggleFullscreen()<CR>
" 启动 vim 时自动全屏
"autocmd VimEnter * call ToggleFullscreen()




" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" >>
" 辅助信息

" 总是显示状态栏
set laststatus=2

" 显示光标当前位置
set ruler

" 开启行号显示
set number

" 高亮显示当前行/列
set cursorline
set cursorcolumn

" 高亮显示搜索结果
set hlsearch
 
" 设置 gvim 显示字体
set guifont=YaHei\ Consolas\ Hybrid\ 11.5

" 禁止折行
set nowrap

" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'


" <<
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
" 语法分析

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" 设置vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
" 设置python-syntax
let python_highlight_all = 1
" >>
" 缩进

" 自适应不同语言的智能缩进
filetype indent on

" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 缩进可视化插件 Indent Guides
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" <<

" >>
" 代码折叠

" 基于缩进或语法进行代码折叠
set foldenable              " 开始折叠
set foldmethod=indent
"set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set foldlevelstart=99       " 打开文件是默认不折叠代码
"set nofoldenable

nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

"F12 一键切换.h .cpp
nnoremap <silent> <F12> :A<CR>
" <<
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
" >>
" 代码收藏

" 自定义 vim-signature 快捷键
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }

" <<
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
" >>
" 标签列表

" 设置 tagbar 子窗口的位置出现在主编辑区的左边
"let tagbar_left=1
" 设置显示／隐藏标签列表子窗口的快捷键。速记：tag list
nnoremap <Leader>tl :TagbarToggle<CR>
" 设置标签子窗口的宽度
let tagbar_width=32
" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1
" 设置 ctags 对哪些代码元素生成标签
let g:tagbar_type_cpp = {
     \ 'ctagstype' : 'c++',
     \ 'kinds'     : [
         \ 'd:macros:1',
         \ 'g:enums',
         \ 't:typedefs:0:0',
         \ 'e:enumerators:0:0',
         \ 'n:namespaces',
         \ 'c:classes',
         \ 's:structs',
         \ 'u:unions',
         \ 'f:functions',
         \ 'm:members:0:0',
         \ 'v:global:0:0',
         \ 'x:external:0:0',
         \ 'l:local:0:0'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }

" <<
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"" >>
" 查找

" 使用 ctrlsf.vim 插件在工程内全局查找光标所在关键字，设置快捷键。快捷键速记法：search in project
nnoremap <Leader>sp :CtrlSF<CR>

" <<


" >>
" 模板补全
" UltiSnips 的 tab 键与 YCM 冲突，重新设定
"let g:UltiSnipsSnippetDirectories=["mysnippets"]
let g:UltiSnipsSnippetDirectories=["/home/xqx/.vim/bundle/ultisnips/mysnippets"]
"let g:UltiSnipsExpandTrigger="<leader><tab>"
"let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
"let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" >>
" neocomplete补全打开
let g:neocomplete#enable_at_startup = 1



" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<




" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"正常模式下按wm调出资源管理器
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap <leader>ft :WMToggle<cr>
"
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
"

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
map <leader>sh <ESC>:ConqueTerm bash<CR> 
map <leader>psh <ESC>:ConqueTermSplit bash<CR> 
map <leader>vsh <ESC>:ConqueTermVSplit bash<CR> 

" map c-v c-v to c-r c-w for paste to command line
nnoremap <C-c><C-v> :<C-r><C-w>
vnoremap <C-c><C-v> y:<C-r>"
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"取消自动注释set noautoindent,set fo-=r
set fo-=r
"testc 添加首注释
function AddTitle()
	call setline(1,"/*")
	call append(1,"* Filename: " . expand("%"))
	call append(2,"* " . "Last modified: " . strftime("%Y-%m-%d %H:%M"))
	call append(3,"* Author: Qixue Xiao <xiaoqixue_1@163.com>")
	call append(4,"* Description: ")
	call append(5,"*/")
endf
map testc :call AddTitle():$o
"testp 添加首注释
function AddTitle2()
	call setline(1,"#!/usr/bin/env python")
	call append(1,"#-*- coding: utf-8 -*-")
	call append(2,"#Filename: " . expand("%"))
	call append(3,"#" . "Last modified: " . strftime("%Y-%m-%d %H:%M"))
	call append(4,"# Author: Qixue Xiao <xiaoqixue_1@163.com>")
	call append(5,"#Description: ")
endf
map testp :call AddTitle2():$o
"tests 添加首注释
function AddTitle1()
	call setline(1,"#!/bin/bash")
	call append(1,"#Filename: " . expand("%"))
	call append(2,"#" . "Last modified: " . strftime("%Y-%m-%d %H:%M"))
	call append(3,"# Author: Qixue Xiao <xiaoqixue_1@163.com>")
	call append(4,"#Description: ")
endf
map tests :call AddTitle1():$o
"testd daily reports
function AddTitle3()
	call setline(1,"# DailyReport")
	call append(1,"       " . strftime("%Y-%m-%d %H:%M") . "   Qixue Xiao <xiaoqixue_1@163.com>   ")
	call append(2,"=========================================================================   ")
	call append(3,"    1.    ")
	call append(4,"    2.    ")
	call append(5,"     .  ")
	call append(6,"ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo   ")
	call append(7," ")
	call append(8," ")
endf
map testd :call AddTitle3():$o

" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
nnoremap <F2> :set wrap! wrap?<CR>
nnoremap <F3> :set list! list?<CR>
" set cscope search in quickfix
nnoremap <F4> <ESC>:set csqf=s-,c-,d-,i-,t-,e-<CR><ESC>:copen<CR>

nnoremap <silent> <F5> :10sp<CR><ESC>:ConqueTerm bash <CR> 

nnoremap <F6> :WMToggle<cr>

nnoremap <Leader>ud :GundoToggle<CR>


" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
"






