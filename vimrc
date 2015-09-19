" Let NeoBundle manage NeoBundle
" {{{
if has('vim_starting')
    if &compatible
        set nocompatible
    endif
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
" }}}
"YCM
"{{{
"NeoBundle 'Valloric/YouCompleteMe', {
     "\ 'build'      : {
        "\ 'mac'     : './install.py --clang-completer --system-libclang --omnisharp-completer',
        "\ 'unix'    : './install.py --clang-completer --system-libclang --omnisharp-completer',
        "\ 'windows' : './install.py --clang-completer --system-libclang --omnisharp-completer',
        "\ 'cygwin'  : './install.py --clang-completer --system-libclang --omnisharp-completer'
        "\ }
     "\ }
"let g:neobundle#install_process_timeout = 1500
"}}}
NeoBundle 'vim-jp/vim-java'
NeoBundle 'Shougo/vimproc.vim', {
            \ 'build' : {
            \     'windows' : 'tools\\update-dll-mingw',
            \     'cygwin' : 'make -f make_cygwin.mak',
            \     'mac' : 'make -f make_mac.mak',
            \     'linux' : 'make',
            \     'unix' : 'gmake',
            \    },
            \ }
NeoBundle 'Shougo/unite.vim'
let g:unite_source_file_mru_time_format = "%m/%d %T "
let g:unite_source_directory_mru_limit = 80
let g:unite_source_directory_mru_time_format = "%m/%d %T "
let g:unite_source_file_rec_max_depth = 6

let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1
let g:unite_data_directory='~/.cache/unite'
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
let g:unite_prompt='>> '
let g:unite_split_rule = 'botright'
let g:unite_winheight=25
let g:unite_source_grep_default_opts = "-iRHn"
            \ . " --exclude='tags'"
            \ . " --exclude='cscope*'"
            \ . " --exclude='*.svn*'"
            \ . " --exclude='*.log*'"
            \ . " --exclude='*tmp*'"
            \ . " --exclude-dir='**/tmp'"
            \ . " --exclude-dir='CVS'"
            \ . " --exclude-dir='.svn'"
            \ . " --exclude-dir='.git'"
            \ . " --exclude-dir='node_modules'"


nnoremap <space>/ :Unite grep:.<cr>
nnoremap <silent> <C-f> :<C-u>Unite -no-split -buffer-name=files -start-insert file_rec/async:!<cr>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files -start-insert file<cr>
nnoremap <leader>m :<C-u>Unite -no-split -buffer-name=mru -start-insert file_mru<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank history/yank<cr>
nnoremap <silent> <C-b> :<C-u>Unite -start-insert -buffer-name=buffer buffer<cr>
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'hewes/unite-gtags'
NeoBundle 'tsukkee/unite-tag'
NeoBundle 'ujihisa/unite-launch'
NeoBundle 'osyo-manga/unite-filetype'
NeoBundle 'thinca/vim-unite-history'
NeoBundle 'Shougo/neobundle-vim-recipes'
NeoBundle 'Shougo/unite-help'
NeoBundle 'ujihisa/unite-locate'
NeoBundle 'kmnk/vim-unite-giti'
NeoBundle 'ujihisa/unite-font'
NeoBundle 't9md/vim-unite-ack'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'dyng/ctrlsf.vim'
NeoBundle 'daisuzu/unite-adb'
NeoBundle 'osyo-manga/unite-airline_themes'
NeoBundle 'mattn/unite-vim_advent-calendar'
NeoBundle 'kannokanno/unite-dwm'
NeoBundle 'raw1z/unite-projects'
NeoBundle 'voi/unite-ctags'
NeoBundle 'Shougo/unite-session'
NeoBundle 'osyo-manga/unite-quickfix'
NeoBundle 'Shougo/vimfiler.vim'
"NeoBundle 'mattn/webapi-vim'
"NeoBundle 'mattn/googlesuggest-complete-vim'
"NeoBundle 'mopp/googlesuggest-source.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'tacroe/unite-mark'
NeoBundle 'tacroe/unite-alias'
"NeoBundle 'ujihisa/quicklearn'
NeoBundle 'tex/vim-unite-id'


NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'terryma/vim-multiple-cursors'

NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'felixSchl/ctrlp-unity3d-docs'
NeoBundle 'voronkovich/ctrlp-nerdtree.vim'
NeoBundle 'elentok/ctrlp-objects.vim'
NeoBundle 'h14i/vim-ctrlp-buftab'
NeoBundle 'vim-scripts/ctrlp-cmdpalette'
NeoBundle 'mattn/ctrlp-windowselector'
NeoBundle 'the9ball/ctrlp-gtags'
NeoBundle 'thiderman/ctrlp-project'
NeoBundle 'mattn/ctrlp-google'
NeoBundle 'ompugao/ctrlp-history'
NeoBundle 'pielgrzym/ctrlp-sessions'
NeoBundle 'tacahiroy/ctrlp-funky'
NeoBundle 'brookhong/k.vim'
NeoBundle 'mattn/ctrlp-launcher'
NeoBundle 'sgur/ctrlp-extensions.vim'
NeoBundle 'FelikZ/ctrlp-py-matcher'
NeoBundle 'JazzCore/ctrlp-cmatcher'
NeoBundle 'tpope/vim-scriptease'
"Javacomplete and autocompile
"{{{
NeoBundle 'artur-shaik/vim-javacomplete2'
autocmd FileType java,jsp set omnifunc=javacomplete#Complete
nnoremap <F4> :JCimportAdd<cr>
inoremap <F4> <esc>:JCimportAddI<cr>
let g:JavaComplete_UseFQN = 1          "补全描述使用全类名 默认是0
""++++++> app1 补全配置
"let g:JavaComplete_LibsPath =
"'/home/wsdjeg/wsdjeg.github.io/java/app1/WEB-INF/classes:/home/wsdjeg/wsdjeg.github.io/lib/'
""++++++> Invoicing_System 补全配置
let g:JavaComplete_LibsPath = 'classes/:lib/:/home/wsdjeg/tools/apache-tomcat-8.0.24/lib'
let g:JavaComplete_ServerAutoShutdownTime = 300             "自动关闭javavi服务的等待时间间隔
let g:JavaComplete_MavenRepositoryDisable = 1
autocmd! FileType java call Autocompilejava()
function! Autocompilejava()
    if !filereadable("pom.xml")
        inoremap <F5> <esc>:w<CR>:!javac -cp classes/ -Djava.ext.dirs=lib/ -d classes/ % <CR>
        nnoremap <F5> :!javac -cp classes/ -Djava.ext.dirs=lib/ -d classes/ % <CR>
        nnoremap <F6> :!java -cp classes/ -Djava.ext.dirs=lib/ com.wsdjeg.util.TestMethod
    endif
endf
autocmd Filetype java inoremap <silent> <buffer>  .  <C-r>=WSDAutoComplete('.')<CR>
autocmd Filetype java inoremap <silent> <buffer>  A  <C-r>=WSDAutoComplete('A')<CR>
autocmd Filetype java inoremap <silent> <buffer>  B  <C-r>=WSDAutoComplete('B')<CR>
autocmd Filetype java inoremap <silent> <buffer>  C  <C-r>=WSDAutoComplete('C')<CR>
autocmd Filetype java inoremap <silent> <buffer>  D  <C-r>=WSDAutoComplete('D')<CR>
autocmd Filetype java inoremap <silent> <buffer>  E  <C-r>=WSDAutoComplete('E')<CR>
autocmd Filetype java inoremap <silent> <buffer>  F  <C-r>=WSDAutoComplete('F')<CR>
autocmd Filetype java inoremap <silent> <buffer>  G  <C-r>=WSDAutoComplete('G')<CR>
autocmd Filetype java inoremap <silent> <buffer>  H  <C-r>=WSDAutoComplete('H')<CR>
autocmd Filetype java inoremap <silent> <buffer>  I  <C-r>=WSDAutoComplete('I')<CR>
autocmd Filetype java inoremap <silent> <buffer>  J  <C-r>=WSDAutoComplete('J')<CR>
autocmd Filetype java inoremap <silent> <buffer>  K  <C-r>=WSDAutoComplete('K')<CR>
autocmd Filetype java inoremap <silent> <buffer>  L  <C-r>=WSDAutoComplete('L')<CR>
autocmd Filetype java inoremap <silent> <buffer>  M  <C-r>=WSDAutoComplete('M')<CR>
autocmd Filetype java inoremap <silent> <buffer>  N  <C-r>=WSDAutoComplete('N')<CR>
autocmd Filetype java inoremap <silent> <buffer>  O  <C-r>=WSDAutoComplete('O')<CR>
autocmd Filetype java inoremap <silent> <buffer>  P  <C-r>=WSDAutoComplete('P')<CR>
autocmd Filetype java inoremap <silent> <buffer>  Q  <C-r>=WSDAutoComplete('Q')<CR>
autocmd Filetype java inoremap <silent> <buffer>  R  <C-r>=WSDAutoComplete('R')<CR>
autocmd Filetype java inoremap <silent> <buffer>  S  <C-r>=WSDAutoComplete('S')<CR>
autocmd Filetype java inoremap <silent> <buffer>  T  <C-r>=WSDAutoComplete('T')<CR>
autocmd Filetype java inoremap <silent> <buffer>  U  <C-r>=WSDAutoComplete('U')<CR>
autocmd Filetype java inoremap <silent> <buffer>  V  <C-r>=WSDAutoComplete('V')<CR>
autocmd Filetype java inoremap <silent> <buffer>  W  <C-r>=WSDAutoComplete('W')<CR>
autocmd Filetype java inoremap <silent> <buffer>  X  <C-r>=WSDAutoComplete('X')<CR>
autocmd Filetype java inoremap <silent> <buffer>  Y  <C-r>=WSDAutoComplete('Y')<CR>
autocmd Filetype java inoremap <silent> <buffer>  Z  <C-r>=WSDAutoComplete('Z')<CR>
function! WSDAutoComplete(char)
    if(getline(".")=~?'^\s*.*\/\/')==0
        let line = getline('.')
        let col = col('.')
        if a:char == "."
            return a:char."\<c-x>\<c-o>\<c-p>"
        elseif line[col - 2] == " "||line[col -2] == "("
            return a:char."\<c-x>\<c-o>\<c-p>"
        else
            return a:char
        endif
    else
        return a:char
    endif
endf
NeoBundle 'vim-scripts/Maven-Compiler'
autocmd Filetype java compiler mvn
autocmd Filetype pom compiler mvn
autocmd Filetype java no <F9> :make clean<CR>
autocmd Filetype java no <F10> :wa<CR> :make compile<CR>
autocmd Filetype java no <F12> :make exec:exec<CR>
"}}}
NeoBundle 'bling/vim-airline'
let g:Powerline_sybols = 'unicode'
let g:airline#extensions#tabline#enabled = 1
NeoBundle 'scrooloose/nerdtree'
let NERDTreeWinPos='right'
let NERDTreeWinSize=31
let NERDTreeChDirMode=1
noremap <F3> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'mattn/emmet-vim'
let g:user_emmet_install_global = 0
autocmd FileType html,css,jsp EmmetInstall
let g:user_emmet_leader_key='<C-e>'
let g:user_emmet_mode='a'
NeoBundle 'scrooloose/syntastic'
let g:syntastic_java_javac_config_file_enabled = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'honza/vim-snippets'
NeoBundle 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
NeoBundle 'majutsushi/tagbar'
noremap <F2> :TagbarToggle<CR>
let g:tagbar_width=30
let g:tagbar_left = 1
NeoBundle 'airblade/vim-rooter'
let g:rooter_patterns = ['Rakefile' , 'pom.xml' , 'web.xml' , '.git/']
NeoBundle 'Yggdroot/indentLine'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'
NeoBundle 'godlygeek/tabular'
NeoBundle 'benizi/vim-automkdir'
NeoBundle 'airblade/vim-gitgutter'
"配合fcitx输入框架,在离开插入模式时自动切换到英文,在同一个缓冲区再次进入插入模式时回复到原来的输入状态
NeoBundle 'lilydjwg/fcitx.vim'
"NeoBundle 'mileszs/ack.vim'
NeoBundle 'taglist.vim'
let Tlist_Ctags_Cmd = '/usr/bin/ctags'  "设置ctags执行路径
let Tlist_Auto_Update=1
let Tlist_Auto_Open =0
let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=0
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_Menu=1
noremap <F8> :TlistToggle<CR>

NeoBundle 'wsdjeg/MarkDown.pl'
autocmd filetype markdown nmap md :!~/.vim/bundle/MarkDown.pl/markdown.pl % > %.html<cr><cr>
autocmd filetype markdown nmap fi :!firefox %.html & <CR><CR>
autocmd filetype html nmap fi :!firefox % & 
NeoBundle 'VJDE/VJDE'
NeoBundle 'tomasr/molokai'
NeoBundle 'java_getset.vim'
NeoBundle 'nerdtree-ack'
NeoBundle 'L9'
" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
"{{{
set relativenumber				"显示行号
set nu
set autoindent					"自动缩进
set smartindent					"设置智能对齐方式
set cindent
set linebreak					"整词换行
set tabstop=4					"Tab键的宽度
set expandtab					"用空格来执行tab
set softtabstop=4				" 统一缩进为4
set shiftwidth=4
syntax enable
syntax on
filetype on
filetype indent on
set nobackup
set nowritebackup
set ruler
set showcmd						"命令行显示输入的命令
set showmatch					"设置匹配模式,显示匹配的括号
set showmode					"命令行显示当前vim的模式
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set scrolloff=7
set cursorline					"显示当前行
"set cursorcolumn				"显示当前列
set incsearch
set autowrite
set hlsearch
set laststatus=2
set t_Co=256
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set completeopt=longest,menu
"设置molokai配色 但是颜色太丑
"colo molokai
"}}}

" 对于没有权限的文件使用 :w!!来保存
cnoremap w!! %!sudo tee > /dev/null %

" 映射Ctrl+上下左右来切换窗口
nnoremap <C-Right> <C-W><Right>
nnoremap <C-Left> <C-W><Left>
nnoremap <C-Up> <C-W><Up>
nnoremap <C-Down> <C-W><Down>

"Ctrl+Shift+上下移动当前行
nnoremap <C-S-Down> :m .+1<CR>==
nnoremap <C-S-Up> :m .-2<CR>==
inoremap <C-S-Down> <Esc>:m .+1<CR>==gi
inoremap <C-S-Up> <Esc>:m .-2<CR>==gi
"上下移动选中的行
vnoremap <C-S-Down> :m '>+1<CR>gv=gv
vnoremap <C-S-Up> :m '<-2<CR>gv=gv
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
autocmd Syntax java inoremap { {<CR>}<Esc>O
autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=ClosePair('}')<CR>
autocmd Syntax java inoremap } <c-r>=CloseBracket()<CR>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>
function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

function CloseBracket()
    if match(getline(line('.') + 1), '\s*}') < 0
        return "\<CR>}"
    else
        return "\<Esc>j0f}a"
    endif
endf

function QuoteDelim(char)
    let line = getline('.')
    let col = col('.')
    if line[col - 2] == "\\"
        "Inserting a quoted quotation mark into the string
        return a:char
    elseif line[col - 1] == a:char
        "Escaping out of the string
        return "\<Right>"
    else
        "Starting a string
        return a:char.a:char."\<Esc>i"
    endif
endf
