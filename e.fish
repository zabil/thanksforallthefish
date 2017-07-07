# Fuzzy search and edit files
# Usage:
# $ e [file]
function e
    if count $argv >/dev/null
        eval $EDITOR $argv
    else if set file (fzf)
        eval $EDITOR $file
    end
end