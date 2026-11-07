" Go uses tabs for indentation; gofmt handles canonical formatting.
setlocal noexpandtab
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal formatprg=gofmt

let b:undo_ftplugin = get(b:, 'undo_ftplugin', '')
      \ . (exists('b:undo_ftplugin') ? ' | ' : '')
      \ . 'setlocal expandtab< tabstop< shiftwidth< softtabstop< formatprg<'
