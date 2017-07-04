# Fuzzy search passwords using gopass and fzf
# Usage:
# $ p <password substring>
function p 
  if set password (gopass find $argv | fzf --height 30%)
  	gopass -c $password
  end
end
