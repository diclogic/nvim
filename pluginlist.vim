" Install vim-plug if not installed
if empty(glob(g:vimrcdir.'autoload/plug.vim'))
  silent !curl -fLo "${vimrcdir}autoload/plug.vim" --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin(g:vimrcdir . 'plugged')


Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'lifepillar/vim-solarized8'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdcommenter'
Plug 'petRUShka/vim-opencl'
" Plug 'wakatime/vim-wakatime'
Plug 'bling/vim-bufferline'
"Plug 'jewes/conque-shell'
"Plug 'ctrlpvim/ctrlp.vim'



" " --- nvim-completion-manager ---
" Plug 'ncm2/ncm2' 
" Plug 'roxma/nvim-yarp'
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-path'


" Windows only
if WINDOWS()
"    Plug 'vim-scripts/visual_studio.vim'
endif

" Python
"Plug 'klen/python-mode'
"Plug 'yssource/python.vim'
"Plug 'python_match.vim'
"Plug 'pythoncomplete'

Plug 'nathanaelkane/vim-indent-guides'

""""""""""""""""""""""""""""""""""""
if WINDOWS()
    Plug 'autozimu/LanguageClient-neovim', {
                \ 'branch': 'next',
                \ 'do': 'powershell -executionpolicy bypass -File install.ps1',
                \ }
else
    Plug 'autozimu/LanguageClient-neovim', {
                \ 'branch': 'next',
                \ 'do': 'bash install.sh',
                \ }
endif

Plug 'junegunn/fzf'

" --- Git ---
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" --- deoplete ---
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" --- airline ---
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

