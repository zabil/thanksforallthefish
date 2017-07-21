function c
    set value 1
    if count $argv >/dev/null
        set value $argv[1]
    end

    wget -qO- "http://www.google.com/finance/converter?a=$value&from=usd&to=inr" | sed '/res/!d;s/<[^>]*>//g'
end

