function robohash
        ## $argv $I
    set -l outfile 
    set -l term (string escape --style=url "$argv")
    for I in (seq 4);
        set -a outfile "
![https://robohash.org/set_set$I/$term](https://robohash.org/set_set$I/$term)
- $argv set=$I
"
    end
    echo $outfile
end