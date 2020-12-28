set nocompatible              " be iMproved, required
filetype off                  " required

" Syntax highlighting on
syntax on
set t_Co=256
" Cursor line on
set cursorline

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" Package manager
Plugin 'VundleVim/Vundle.vim'

" Theme
Plugin 'sonph/onehalf', {'rtp': 'vim/'}

" Another theme
Plugin 'arzg/vim-colors-xcode'

" Directory tree
Plugin 'preservim/nerdtree'

" Real-time syntax analysis for C++
Plugin 'vim-syntastic/syntastic'

" Autocompletion
Plugin 'valloric/youcompleteme'

" Snippet engine.
Plugin 'SirVer/ultisnips'

" Vim snippets, they go with the engine above
Plugin 'honza/vim-snippets'

" Find text fuzzy
Plugin 'junegunn/fzf'

" Clang-format
Plugin 'rhysd/vim-clang-format'

" Rainbows for {}, () and [] etc
Plugin 'oblitum/rainbow'

" Taglist 
Plugin 'taglist.vim'

" Easy multiline commenter
Plugin 'preservim/nerdcommenter'

" Git
Plugin 'airblade/vim-gitgutter'

" Lightline, bottom bar
Plugin 'itchyny/lightline.vim'

" Auto-pairs, completes [] etc
Plugin 'jiangmiao/auto-pairs'

" Ack
Plugin 'mileszs/ack.vim'

" Protobuf support
Bundle 'uarun/vim-protobuf'

call vundle#end()            " required

" Color theme
" colorscheme onehalfdark
" colorscheme xcodedark
colorscheme xcodedarkhc
let g:airline_theme='onehalfdark'

" Nerdtree
let g:NERDTreeWinPos='left'
nmap <T> :NERDTreeToggle<CR>

" Tag List
let g:Tlist_Inc_Winwidth=0
nmap <L> :TlistToggle<CR>

" Syntastic stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" Snippets
let g:UltiSnipsExpandTrigger="<bar>"
let g:UltiSnipsJumpForwardTrigger="<bar>"
let g:UltiSnipsJumpBackwardTrigger="<CR+bar>"
let g:UltiSnipsEditSplit="vertical"

" map <I> = clang-format
nmap <I> :ClangFormat<CR>

" Rainbow brackets
let g:rainbow_active=1

" Multiline commenter
let g:NERDSpaceelims=1
let g:NERDCompactSexyComs=1
let g:NERDDefaultAlign='left'
let g:NERDTrimTrailingWhitespace=1

" Lightline
set laststatus=2

" Compiling, some custom CMake stuff :)
command CompileCmake :!_compile_current_dir
nmap <C> :CompileCmake 

filetype plugin indent on    " required
