

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


" --- LanguageClient-neovim ---
set hidden " < Required for operations modifying multiple buffers like rename.

if WINDOWS()
    let g:LanguageClient_serverCommands = {
                \ 'python': ['pyls.exe'],
                \ 'cpp': ['D:/opt/cquery/bin/cquery.exe', '--log-file=D:/temp/cq.log', '--init={"cacheDirectory":"D:/temp/cquery/"}'],
                \ }
else
    let g:LanguageClient_serverCommands = {
                \ 'cpp': ['/usr/local/bin/cquery', '--log-file=/tmp/cquery.log', '--init={"cacheDirectory":"/tmp/cquery/"}'],
                \ 'python': ['/usr/local/bin/pyls'],
                \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
                \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
                \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
                \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
                \ }
endif

"nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" --- deoplete ---
let g:deoplete#enable_at_startup = 0
autocmd InsertEnter * call deoplete#enable()

" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=9 foldmethod=marker :

