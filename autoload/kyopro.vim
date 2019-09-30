function! kyopro#hello_world() abort
    echo "Hello World!"
endfunction

function! kyopro#run() abort
    let runner = kyopro#runner#new(&filetype)
    let result = kyopro#runner#run(runner, expand('%:p'))
    let bufname = printf('kyopro://%s', join(result.args, ' '))
    call kyopro#buffer#new(bufname, result.output)
endfunction
