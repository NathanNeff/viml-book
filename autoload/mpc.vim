" Autoload
function! mpc#DisplayPlaylist()
    let cmd = "mpc --format '%position% %artist% / %album% / %title%' playlist"
    let playlist = split(system(cmd), '\n')

    execute "new"
    execute "normal! 1GdGI"

    for track in playlist
        call append(line('$'), track)
    endfor
endfunction
