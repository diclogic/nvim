
call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'altercation/vim-colors-solarized'
"Plug 'rafi/awesome-vim-colorschemes'
Plug 'lifepillar/vim-solarized8'
"Plug 'spf13/vim-colors'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'petRUShka/vim-opencl'
" Plug 'wakatime/vim-wakatime'
Plug 'bling/vim-bufferline'
"Plug 'jewes/conque-shell'
"Plug 'ctrlpvim/ctrlp.vim'

"Plug 'vim-scripts/ingo-library'
Plug 'vim-scripts/IndentConsistencyCop'
" Plug 'vim-scripts/IndentConsistencyCopAutoCmds'



" Windows only
if has('win32') || has('win64')
"    Plug 'vim-scripts/visual_studio.vim'
endif

" Python {
"Plug 'klen/python-mode'
"Plug 'yssource/python.vim'
"Plug 'python_match.vim'
"Plug 'pythoncomplete'
Plug 'nathanaelkane/vim-indent-guides'
" }

call plug#end()
