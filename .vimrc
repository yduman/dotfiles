" config is from https://github.com/amix/vimrc

set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

" show line numbers and disable code folding
set number
set foldlevelstart=99

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
