function! kyopro#runner#javascript#new() abort
    return { 'build_args': { f -> ['node', f] } }
endfunction
