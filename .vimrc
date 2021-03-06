set number            " display line number
set ai                    " auto indent
set si                    " smart indent
set cindent            " c style indent
set shiftwidth=4      " shift를 4칸으로 ( >, >>, <, << 등의 명령어)
set tabstop=4         " tab을 4칸으로
set hlsearch         " 검색시 하이라이트(색상 강조)
set background=dark  " 검정배경을 사용할 때, (이 색상에 맞춰 문법 하이라이트 색상이 달라집니다.)
set fileencodings=utf-8,euc-kr    " 파일인코딩 형식 지정
set bs=indent,eol,start    " backspace 키 사용 가능
set history=1000    " 명령어에 대한 히스토리를 1000개까지
set ruler              " 상태표시줄에 커서의 위치 표시
set title               " 제목을 표시
set showmatch    " 매칭되는 괄호를 보여줌
set nowrap         " 자동 줄바꿈 하지 않음
set wmnu           " tab 자동완성시 가능한 목록을 보여줌
set visualbell		"키를 잘못 누르면 화면을 번쩍이게 함.

syntax on        " 문법 하이라이트 킴"
set tags=./tags,tags;$HOME

"NERD Commenter 관련 설정"
filetype plugin on

"TagList 관련 설정
let Tlist_Use_Right_Window=1
nmap <F7> :TlistToggle<CR>

"NERDTree 관련 설정
let NERDTreeWinPos="left"
nmap <F9> :NERDTreeToggle<CR>

"SrcExpl 관련 설정
" // The switch of the Source Explorer                                         " 
nmap <F8> :SrcExplToggle<CR> 
"                                                                              " 
" // Set the height of Source Explorer window                                  " 
let g:SrcExpl_winHeight = 8 
"                                                                              " 
" // Set 100 ms for refreshing the Source Explorer                             " 
let g:SrcExpl_refreshTime = 100 
"                                                                              " 
" // Set "Enter" key to jump into the exact definition context                 " 
let g:SrcExpl_jumpKey = "<ENTER>" 
"                                                                              " 
" // Set "Space" key for back from the definition context                      " 
let g:SrcExpl_gobackKey = "<SPACE>" 
"                                                                              " 
" // In order to avoid conflicts, the Source Explorer should know what plugins " 
" // except itself are using buffers. And you need add their buffer names into " 
" // below listaccording to the command ":buffers!"                            " 
let g:SrcExpl_pluginList = [ 
     \ "__Tag_List__", 
     \ "_NERD_tree_" 
     \ ] 
                                                                              " 
" // Enable/Disable the local definition searching, and note that this is not  " 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. " 
" // It only searches for a match with the keyword according to command 'gd'   " 
let g:SrcExpl_searchLocalDef = 1 
"                                                                              " 
" // Do not let the Source Explorer update the tags file when opening          " 
let g:SrcExpl_isUpdateTags = 0 
"                                                                              " 
" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to " 
" //  create/update a tags file                                                " 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 
"                                                                              " 
" // Set "<F12>" key for updating the tags file artificially                   " 
let g:SrcExpl_updateTagsKey = "<F12>" 
"                                                                              " 
" // Set "<F3>" key for displaying the previous definition in the jump list    " 
let g:SrcExpl_prevDefKey = "<F3>" 
"                                                                              " 
" // Set "<F4>" key for displaying the next definition in the jump list        " 
let g:SrcExpl_nextDefKey = "<F4>" 

" armasm 플러그인 관련
"let asmsyntax='armasm'
"let filetype_inc='armasm'

"Powerline related"

""set rtp+={repository_root}/powerline/bindings/vim/powerline/bindings/vim

""python from powerline.vim import setup as powerline_setup
""python powerline_setup()
""python del powerline_setup

" Cscope related.
set csprg=/usr/bin/cscope 
set csto=0 
set cst 
set nocsverb 
if filereadable("./cscope.out")       
    cs add cscope.out                 
else                                  
    cs add /usr/src/linux/cscope.out  
endif                                  
set csverb
