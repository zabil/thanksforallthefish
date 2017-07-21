function ge
    if set selected (git status --porcelain | fzf --reverse)
        e (echo $selected | sed s/^...//)
    end
end