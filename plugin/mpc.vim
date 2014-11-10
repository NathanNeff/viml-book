execute "new"
call mpc#DisplayPlaylist()

function! OpenMPC()
        if(bufexists('mpc.mpdv'))
            let mpcwin = bufwinnr('mpc.mpdv')
            if(mpcwin == -1)
                execute "new | buffer " . bufnr('mpc.mpdv')
            else
                execute mpcwin . 'wincmd w'
                return
            endif
        else
            execute "new mpc.mpdv"
        endif
        call mpc#DisplayPlaylist()
endfunction

function! TestAutoload()
    call mpc#DisplayPlaylist()
    call fileutilz#filez#ForExample()
    " This will crash
    call fileutilz#filez#Oops()
endfunction
