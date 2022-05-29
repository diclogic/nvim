set background=dark

" Include shell and OS settings and utility functions
exe 'source' expand(stdpath('config').'/'.'init.vim.d/basic.vim')

" Install vim-plug if not installed
if empty(glob(stdpath('data').'/site/autoload/plug.vim'))
if WINDOWS()
exe "!iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |  ni \"$env:LOCALAPPDATA/nvim-data/site/autoload/plug.vim\" -Force"
else
  exe "!curl -fLo" stdpath('config').'/site/autoload/plug.vim' "--create-dirs"
    \ "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
endif
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



" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=9 foldmethod=marker :

