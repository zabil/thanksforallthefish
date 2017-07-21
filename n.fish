function n
    if not test -d ~/.notes
        mkdir ~/.notes
    end
    if count $argv >/dev/null
        eval $EDITOR "~/.notes/$argv"
    end
end