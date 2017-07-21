set gpath $HOME/.g
function g
    mkdir -p $gpath
    if count $argv >/dev/null
        cd $gpath
        git clone $argv[1]
        cd -
    else
        if set repository (ls $gpath | fzf --reverse)
            cd $gpath/$repository
        end
    end
end