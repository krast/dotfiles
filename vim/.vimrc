" =================================
" vim krast diy config
" =================================
syntax enable
syntax on
filetype on
filetype plugin indent on
set backspace=2
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab

set list listchars=tab:»·,trail:·
set nowrap
set fo-=t
set textwidth=80
set colorcolumn=+1
autocmd BufEnter * setlocal formatoptions-=c formatoptions-=q formatoptions-=n formatoptions-=r formatoptions-=o formatoptions-=l formatoptions-=t

set number
set numberwidth=5

set matchpairs+=<:>
set hlsearch

" Highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

let mapleader=";"
colorscheme solarized


" =================================
" vim-plug default config
" =================================
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" =================================
" vim-plug krast diy config
" =================================
" simpleFold
Plug 'tmhedberg/SimpylFold'

" 这个插件可以显示文件的Git增删状态
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'ShowTrailingWhitespace'

" Initialize plugin system
call plug#end()


" =================================
" plugins config
" =================================

" 设置NERDTreetagbar的宽度
au VimEnter * NERDTree
let g:NERDTreeWinSize = 20
let g:tagbar_width=20
let g:netrw_banner=0
let g:netrw_liststyle = 3

" nerdtree-git-plugin config
" --------------------------
let g:NERDTreeShowIgnoredStatus = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
