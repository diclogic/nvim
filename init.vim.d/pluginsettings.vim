

" NerdTree
if HasPlugin('nerdtree')
    map <C-e> :NERDTreeToggle<CR>
    map <leader>e :NERDTreeFind<CR>
    nmap <leader>nt :NERDTreeFind<CR>

    let NERDTreeShowBookmarks=1
    let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
    let NERDTreeChDirMode=0
    let NERDTreeQuitOnOpen=1
    let NERDTreeMouseMode=2
    let NERDTreeShowHidden=1
    let NERDTreeKeepTreeInNewTab=1
    let g:nerdtree_tabs_open_on_gui_startup=0
endif


" --- indent_guides ---
if HasPlugin("vim-indent-guides")
    let g:indent_guides_start_level = 2
    let g:indent_guides_guide_size = 1
    let g:indent_guides_enable_on_vim_startup = 1
endif

" --- ncm2 ---
if HasPlugin('ncm2')
    autocmd BufEnter * call ncm2#enable_for_buffer()
    set completeopt=noinsert,menuone,noselect
endif

" --- NerdCommenter ---
if HasPlugin('nerdcommenter')
    let g:NERDSpaceDelims = 1
endif

" --- cscope ---
if HasPlugin('cscope.nvim')
    let g:cscope_dir = '~/.nvim-cscope'

    " Map the default keys on startup
    " These keys are prefixed by CTRL+\ <cscope param>
    " A.e.: CTRL+\ d for goto definition of word under cursor
    " Defaults to off
    let g:cscope_map_keys = 1

    " Update the cscope files on startup of cscope.
    " Defaults to off
    let g:cscope_update_on_start = 1

    " autocmd BufEnter * call cscope.nvim#CScopeStart()
endif

if has('cscope') && 0
    if WINDOWS()
        set csprg=D:\opt\cygwin64\usr\local\bin\cscope.exe
    else
        set csprg=/usr/local/bin/cscope
    endif
    set csto=0
    set cst
    " add any database in current directory
    if filereadable("cscope.out")
        silent cs add cscope.out
        " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        silent cs add $CSCOPE_DB
    endif
endif

" --- LanguageClient-neovim ---
set hidden " < Required for operations modifying multiple buffers like rename.

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

"nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" --- deoplete ---
let g:deoplete#enable_at_startup = 1

" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=9 foldmethod=marker :

