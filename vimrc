et g:ycm_python_binary_path = '/usr/local/bin/python3'
"Plugin for Nerdtree
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'iwataka/ctrlproj.vim'
Plugin 'itchyny/calendar.vim'
Plugin 'mtth/scratch.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'malithsen/trello-vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" set YCM scratch preview off
set completeopt-=preview

set number            " line 표시를 해줍니다.

set ai                    " auto indent

set si                    " smart indent

set cindent            " c style indent

set shiftwidth=4      " shift를 4칸으로 ( >, >>, <, << 등의 명령어)

set tabstop=4         " tab을 4칸으로

set ignorecase      " 검색시 대소문자 구별하지않음

set hlsearch         " 검색시 하이라이트(색상 강조)

set expandtab       " tab 대신 띄어쓰기로

set background=dark  " 검정배경을 사용할 때, (이 색상에 맞춰 문법 하이라이트 색상이 달라집니다.)

set nocompatible   " 방향키로 이동가능

set fileencodings=utf-8,euc-kr    " 파일인코딩 형식 지정

set bs=indent,eol,start    " backspace 키 사용 가능

set history=1000    " 명령어에 대한 히스토리를 1000개까지

set ruler              " 상태표시줄에 커서의 위치 표시

set nobackup      " 백업파일을 만들지 않음

set title               " 제목을 표시

set showmatch    " 매칭되는 괄호를 보여줌

set nowrap         " 자동 줄바꿈 하지 않음

set wmnu           " tab 자동완성시 가능한 목록을 보여줌



syntax on        " 문법 하이라이트 킴"
set number
set ai
set si
set cindent
set shiftwidth=4
set tabstop=4
set ignorecase
set hlsearch
set expandtab
set background=dark
set nocompatible
set fileencodings=utf-8,euc-kr
set bs=indent,eol,start
set history=1000
set ruler
set nobackup
set title
set showmatch
set nowrap
set wmnu

syntax on
let @e = 'hhgman1@naver.com'
map <Leader>nt <ESC>:NERDTree<CR>
map <Leader>ntt <ESC>:NERDTreeToggle<CR>
"ctlp의 디렉토리 설정을 무시해서 속도를 향상
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$',
  \ 'file': '\v\.(exe|so|dll)$'
\ }
let g:ctrlp_user_command = 'find %s -type f'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.xml,*.swift,*.xcode,*.pdf,*.jpg
"callender.vim과 구글캘린더 연동
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
let g:scratch_insert_autohide = 1 "Scratch버퍼 윈도우가 인서트모드 해제되면 자동 클로즈
if has('mac') && filereadable('/usr/local/lib/libInputSourceSwitcher.dylib')
  autocmd InsertLeave * call libcall('/usr/local/lib/libInputSourceSwitcher.dylib', 'Xkb_Switch_setXkbLayout', 'com.apple.keylayout.US')
endif
ab 시간0 <C-R>=strftime("Y.%m.%d-%H:%M:%S")<CR>
