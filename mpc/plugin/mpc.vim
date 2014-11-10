execute "new"
call mpc#DisplayPlaylist()

function! OpenMPC()
    execute "new"
    call mpc#DisplayPlaylist()
endfunction

function! TestAutoload()
    call mpc#DisplayPlaylist()
    call fileutilz#filez#ForExample()
    " This will crash
    call fileutilz#filez#Oops()
endfunction
