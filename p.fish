# Fuzzy search passwords using gopass and fzf
# Usage:
# $ p <password substring>
function p 
	gopass -c (gopass find $argv | fzf --height 30%)
end
