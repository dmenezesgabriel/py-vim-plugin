from datetime import datetime

import vim


def py_hello():
    current_file = vim.eval("expand('%:p')")
    current_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    vim.command(
        'echo "Hello from Python3! Current file: '
        + current_file
        + " Current time: "
        + current_time
        + '"'
    )
