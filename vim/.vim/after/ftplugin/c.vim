" C buffers use four-space indentation and C-style indenting.
setlocal expandtab
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal cindent
setlocal formatprg=clang-format

let b:undo_ftplugin = get(b:, 'undo_ftplugin', '')
      \ . (exists('b:undo_ftplugin') ? ' | ' : '')
      \ . 'setlocal expandtab< tabstop< shiftwidth< softtabstop< cindent< formatprg<'
