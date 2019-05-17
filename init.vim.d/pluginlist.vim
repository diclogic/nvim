
call plug#begin(stdpath('config').'/plugged')

" --- UI ---
Plug 'lifepillar/vim-solarized8'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'

" --- Navigation ---
if WINDOWS()
    Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next',
                \ 'do': 'powershell -executionpolicy bypass -File install.ps1' }
else
    Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next',
                \ 'do': 'bash install.sh' }
endif

if !WINDOWS()
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
endif

" --- Editing ---
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'

" --- Completion ---
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" --- Git ---
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" --- Project Management ---
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" --- Debugger ---
if !WINDOWS()
    Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' }
endif

" --- Others ---
Plug 'chrisbra/csv.vim'

" --- c++ highlight ---
Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()

" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=9 foldmethod=marker :

