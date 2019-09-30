if exists('g:loaded_kyopro')
    finish
endif

let g:loaded_kyopro = 1

command! Kyopro call kyopro#run()
