function ga
    if set selected (git status --porcelain | fzf --reverse)
        git add (echo $selected | sed s/^...//)
        ga
    end
end