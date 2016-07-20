if !exists("syntax_on")
	syntax on
endif
syntax on  
 
set showcmd 
set cmdheight=2
set novisualbell 

set laststatus=1 
set foldenable 
set foldmethod=manual 

set nocompatible  
if version >= 603
set helplang=cn
set encoding=utf-8
endif

colorscheme luna
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8


set number
set history=1000

" 方便查找
set ignorecase
set hlsearch
set incsearch

filetype on
filetype plugin on
filetype indent on

set report=0
set fillchars=vert:\ ,stl:\ ,stlnc:\
set showmatch
set matchtime=1
set scrolloff=3

filetype plugin indent on 
set completeopt=longest,menu
set autoread
set completeopt=preview,menu 
filetype plugin on
set clipboard+=unnamed 
set nobackup
set autowrite
set ruler 
set cursorline 


" 回到上次文件打开位置
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" 干掉自动注释
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" 自动补全括号
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>

" 按退格键时判断当前光标前一个字符，如果是左括号，则删除对应的右括号以及括号中间的内容
function! RemovePairs()
	let l:line = getline(".")
	let l:previous_char = l:line[col(".")-1] " 取得当前光标前一个字符
	 
	if index(["(", "[", "{"], l:previous_char) != -1
		let l:original_pos = getpos(".")
		execute "normal %"
		let l:new_pos = getpos(".")
		 
		" 如果没有匹配的右括号
		if l:original_pos == l:new_pos
			execute "normal! a\<BS>"
			return
		end
		 
		let l:line2 = getline(".")
		if len(l:line2) == col(".")
			" 如果右括号是当前行最后一个字符
			execute "normal! v%xa"
		else
			" 如果右括号不是当前行最后一个字符
			execute "normal! v%xi"
		end
		 
	else
		execute "normal! a\<BS>"
	end
endfunction
" 用退格键删除一个左括号时同时删除对应的右括号
inoremap <BS> <ESC>:call RemovePairs()<CR>a



