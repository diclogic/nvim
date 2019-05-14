
call plug#begin(stdpath('config').'/plugged')

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

if !WINDOWS()
    Plug '/usr/local/opt/fzf'
    Plug 'junegunn/fzf.vim'
endif

" --- Git ---
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" --- deoplete ---
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" --- airline ---
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" --- others ---
Plug 'chrisbra/csv.vim'


call plug#end()

" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=9 foldmethod=marker :

