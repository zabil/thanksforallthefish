# Fuzzy search passwords using pass/gopass and fzf
# Usage:
# $ p <password substring>
function p
    if count $argv >/dev/null
        if set password (pass find $argv | fzf --reverse --height 30%)
            pass -c $password
        end
    else
        echo "Usage:"
        echo "  p <query>"
    end
end
