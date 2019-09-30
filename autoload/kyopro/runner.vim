function! kyopro#runner#new(filetype) abort
    let namespace = substitute(a:filetype, '\W', '_', '')
    let funcname = printf(
                \ 'kyopro#runner#%s#new',
                \ namespace,
                \)
    try
        return call(funcname, [])
    catch /:E117: [^:]\+: kyopro#runner#[^#]\+#new/
        throw printf(
                    \ 'kyopro: Runner is not found: %s',
                    \ a:filetype,
                    \)
    endtry
endfunction

function! kyopro#runner#run(runner, filename) abort
    let args = a:runner.build_args(a:filename)
    let output = kyopro#process#call(args)
    return {
                \ 'args': args,
                \ 'output': output,
                \}
endfunction
