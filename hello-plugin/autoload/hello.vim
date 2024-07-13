" ~/.vim/pack/mypackage/start/hello_plugin/autoload/hello.vim

function! hello#hello()
    let current_time = strftime("%Y-%m-%d %H:%M:%S")
    echo "Hello from Vim! Current time: " . current_time
endfunction

function! hello#py_hello()
  python3 << EOF
import sys
import os
plugin_path = os.path.expanduser('~/.vim/pack/mypackage/start/hello_plugin/pythonx')
if plugin_path not in sys.path:
    sys.path.append(plugin_path)

import hello
hello.py_hello()
EOF
endfunction
