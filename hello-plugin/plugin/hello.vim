" ~/.vim/pack/mypackage/start/hello_plugin/plugin/hello.vim

if exists("g:loaded_hello_plugin")
  finish
endif
let g:loaded_hello_plugin = 1

" Source the autoload script
runtime autoload/hello.vim

" Call with :HelloVim or PythonHello
command! HelloVim call hello#hello()
command! PythonHello call hello#py_hello()

" Call on .py file save
augroup hello_hello
  autocmd!
  autocmd BufWritePost *.py call hello#py_hello()
augroup END
