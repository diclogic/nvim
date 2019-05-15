
" Include shell and OS settings and utility functions
exe 'source' expand(stdpath('config').'/'.'init.vim.d/basic.vim')

" Install vim-plug if not installed
if empty(glob(stdpath('config').'/autoload/plug.vim'))
  silent exe "!curl -fLo" stdpath('config').'/autoload/plug.vim' "--create-dirs"
    \ "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall
endif

" Setup directories
call InitializeDirectories()

" Load plugins
exe 'source' expand(stdpath('config').'/'.'init.vim.d/pluginlist.vim')

function! HasPlugin(name)
    return isdirectory(expand(stdpath('config').'/plugged/'.a:name.'/')) && has_key(g:plugs, a:name)
endfunction


" Start Configuration
exe 'source' expand(stdpath('config').'/'.'init.vim.d/generalsettings.vim')
exe 'source' expand(stdpath('config').'/'.'init.vim.d/ui.vim')
exe 'source' expand(stdpath('config').'/'.'init.vim.d/keymappings.vim')
exe 'source' expand(stdpath('config').'/'.'init.vim.d/pluginsettings.vim')


" Refresh UI
set background=dark

" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=9 foldmethod=marker :

